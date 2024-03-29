## Advanced Blockchain Concepts and Oracles

### Multi-signature

- a supported kind of account in a blockchain (such as bitcoin)
- these accounts contain multiple private keys
- can be referred to as `M-of-N` accounts.
    - N = number of private keys
    - M = number of required keys for a transaction
    - Standard address is 1 of 1.

#### Multi-signature - Benefits
- prevents theft from individual bad actors
    - multi-signature transactions need multiple users to sign a transaction
    - in other words, no single user can sign a transaction, so no single user can hack a multi sig account
- protects against the loss of a private key
    - a single private key loss usually means the account is locked out, in multisig cases it does not
- Enforces business rules for financial transactions
- prevents one individual from arbitrarily performing actions
- enables enforcement of business rules with code, making critical state changing functions harder to hack

#### Multi-party Concensus
- in ethereum, there is no multi-party accounts, therefore the logic must be implemented via smart contracts
- we will refer to this as multi-party concensus moving forward

#### Multi-party concensus algorithm

- Define M (number of keys required)
- Define N (number of private keys) inderectly through set of permitted addresses
    - can be handled by having a set amount of admin accounts
    - can also be handled by having a function to add / remove admin users
- Initialize "counter" for M on first call of function requiring multi-party concensus
- Increment "counter" for M on each subsequent call of function.
    - not perfectly logical, can be handled differently
- when the counter reaches equals M, execute logic

#### Multi-party concensus approach

- for the exsercise in this unit, we will adapt the following approach:
    - implement 3-of-5 multi-party concensus for operational status control
    - define five contract administrators when contract is deployed.
        - for simplicity, this could be made more complex by adding a function to create / delete admin users.
    - add 3-of-5 control to function for changing operational status
        - 3 of the 5 admins must call the function, for the transaction logic to trigger
    - Ignore repeat function calls by the same administrator.