
var Test = require('../config/testConfig.js');

contract('ExerciseC6A', async (accounts) => {

  var config;
  before('setup contract', async () => {
    config = await Test.Config(accounts);
  });

  it('contract owner can register new user', async () => {
    
    // ARRANGE
    let caller = accounts[0]; // This should be config.owner or accounts[0] for registering a new user
    let newUser = config.testAddresses[0]; 

    // ACT
    await config.exerciseC6A.registerUser(newUser, false, {from: caller});
    let result = await config.exerciseC6A.isUserRegistered.call(newUser); 

    // ASSERT

    // last argument is the error to throw, if tests fail, super neat to know!
    assert.equal(result, true, "Contract owner cannot register new user");

  });

  it('function call is made when multi-party threshold is reached', async () =>{

    // deconstructs contract functions
    let { registerUser, setOperatingStatus, isOperational } = config.exerciseC6A;

    // sets admin accounts
    let admin1 = accounts[1];
    let admin2 = accounts[2];
    let admin3 = accounts[3];
    let admin4 = accounts[4];
    
    // registers the 4 admins
    await registerUser(admin1, true, {from: config.owner});
    await registerUser(admin2, true, {from: config.owner});
    await registerUser(admin3, true, {from: config.owner});
    await registerUser(admin4, true, {from: config.owner});

    // calls the current operation status, 
    let startStatus = await getOperational.call();

    // reverses whatever the operational state boolean is, to set new operational state
    // not necessary, but nice to have for dynamic testing purposes
    let changeStatus = !startStatus;

    // sends off multiConcensus function transactions
    await setOperatingStatus(changeStatus, {from: admin1});
    await setOperatingStatus(changeStatus, {from: admin2});
    await setOperatingStatus(changeStatus, {from: admin3});

    let newStatus = await getOperational.call();

    assert.equal(changeStatus, newStatus, "Multi-party call failed")

  })
 
});
