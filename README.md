# ABAG_TASK
Solution for ABAG Problem Statement

```
* Build a vanity name registering system resistant against frontrunning.
The purpose of the name is outside the scope of the assignment and you can make
reasonable assumptions on the size, encoding, etc of the name to complete in time.

* An unregistered name can be registered for a certain amount of time by locking a certain
balance of an account. After the registration expires, the account loses ownership of the
name and his balance is unlocked. The registration can be renewed by making an on-chain
call to keep the name registered and balance locked.

* You can assume reasonable defaults for the locking amount and period.
The fee to register the name depends directly on the size of the name. Also, a malicious
node/validator should not be able to front-run the process by censoring transactions of an
honest user and registering its name in its own account.
```

## Technique used to avoid Front-Run : Commit & Reveal

# Commands
```
1. Install dependencies : npm i 
2. Compile smart contract : npm run compile
3. Run hardhat node (in seperate terminal): npm run node
4. Deploy contract (local) : npm run deploy
5. Run Basic test : npm run testBasic
6. Run Front-Run test : npm run testFR
```
