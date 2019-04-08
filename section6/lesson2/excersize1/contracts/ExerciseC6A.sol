pragma solidity ^0.4.25;

contract ExerciseC6A {

    /********************************************************************************************/
    /*                                       DATA VARIABLES                                     */
    /********************************************************************************************/

    // sets the variable to maintain the M-of-N ratio
    uint constant M = 2;

    struct UserProfile {
        bool isRegistered;
        bool isAdmin;
    }

    // stores the addresses necessary for the multiParty concensus
    // this syntax creates a new address' array, for use within the multiParty concensus logic
    address[] multiCalls = new address[](0);

    address private contractOwner;                  // Account used to deploy contract
    mapping(address => UserProfile) userProfiles;   // Mapping for storing user profiles

    // establishes weather the contract is operating or not
    bool private operational = false;

    /********************************************************************************************/
    /*                                       EVENT DEFINITIONS                                  */
    /********************************************************************************************/

    // No events

    /**
    * @dev Constructor
    *      The deploying account becomes contractOwner
    */
    constructor
                                (
                                ) 
                                public 
    {
        contractOwner = msg.sender;
    }

    /********************************************************************************************/
    /*                                       FUNCTION MODIFIERS                                 */
    /********************************************************************************************/

    // Modifiers help avoid duplication of code. They are typically used to validate something
    // before a function is allowed to be executed.

    /**
    * @dev Modifier that requires the "ContractOwner" account to be the function caller
    */
    modifier requireContractOwner()
    {
        require(msg.sender == contractOwner, "Caller is not contract owner");
        _;
    }

    /********************************************************************************************/
    /*                                       UTILITY FUNCTIONS                                  */
    /********************************************************************************************/

   /**
    * @dev Check if a user is registered
    *
    * @return A bool that indicates if the user is registered
    */   
    function isUserRegistered
                            (
                                address account
                            )
                            external
                            view
                            returns(bool)
    {
        require(account != address(0), "'account' must be a valid address.");
        return userProfiles[account].isRegistered;
    }

    /********************************************************************************************/
    /*                                     SMART CONTRACT FUNCTIONS                             */
    /********************************************************************************************/

    function registerUser
                                (
                                    address account,
                                    bool isAdmin
                                )
                                external
                                isOperational
                                requireContractOwner
    {
        require(!userProfiles[account].isRegistered, "User is already registered.");

        userProfiles[account] = UserProfile({
                                                isRegistered: true,
                                                isAdmin: isAdmin
                                            });
    }

    // sets contract operations on / off, while off, all write transactions will fail
    function setOperatingStatus(bool mode) external requireContractOwner {

        // best practice with ether, we want functions to fail fast to avoid unecessary costs

        // prevents function calls that attempt to change the operational boolean to false, when already false
        require(mode != operational, "New mode must be different from existing mode");

        // checks if the user's address has been registered as an admin or not, check registerUser() for functionality specs
        require(userProfiles[msg.sender].isAdmin, "Caller is not an admin");

        // ensures that there is no double voting, ensures no admin can vote twice on the same multi-concenus transaction
        bool isDuplicate = false;

        // loops through the multicalls array, if address exists in multi call array, set the isDuplicate flag to true
        for (uint c=0; c < multiCalls.length; c++){

            // sets the isDuplicate boolean to true, if the caller's vote has already been registered
            if(multiCalls[c] == msg.sender){
                isDuplicate = true;
                break;
            }
        }

        // requires that the isDuplicate flag is false, to ensure no duplicate votes are registered
        // remember, failing fast is best practice with ethereum
        require(!isDuplicate, "Caller's vote has already been registered");
        
        // if none of the fail conditions are met, push the address into the multiCalls address array
        multiCalls.push(msg.sender);

        // if the multiCalls array length is the same as the established M-of-N number, executes transaction logic
        // this ensures that the logic in the if statement is ONLY called if 3 admin's have voted / been approved by the function's logic
        if(multiCalls.length >= M){
            operational = mode;

            // re-initializes the multiCalls array, ensuring that the instance of the array is destroyed
            // every time concesus is met
            multiCalls = new address[](0);
        }

        
    }

    function getOperational() public view returns(bool){
        return operational;
    }

    // very important to test this locally to ensure this logic is working
    modifier isOperational(){
        // second argument throws an error if require condition is not met, neat!
        require(operational, "Contract is currently not operational");
        _;
    }
}

