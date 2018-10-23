# Lesson 2 - Planning a blockchain solution

## Working with legacy systems

1. planning ahead of time allows for quicker prototyping instead of having to deal with months of re-planning if something breaks
1. working with legacy systems as a priority is key to best serve multiple client needs

## Tools

- UML - used to structure modeling behaviors and structures in the smart contract
- DMD - used to model smart contract relationship

## Layers of Dapps

1. web client layer
2. node api layer
3. ethereum smart contract layer
4. ethereum storage layer

- each of these layers must have a certain degree of separation to work in unison with all supply chain layers
- web3 is utilized on the front end to hold information in a CENTRALIZED network (rinkeby, testnet, etc)
    - frameworks like swarm and ipfs can be used to hold decentralized storage
    - more on this topic in later units
- its important to remember that we are replicating actual assets with technology
- real world implications of asset management are important to consider, to properly utilize blockchain technology to improve supply management systems

## Bait to Plate 

- beta blockchain solution for caught fish
- 5 layers:
    1. fisher
    1. regulator
    1. processor
    1. distributor
    1. consumer
- will use as the base example for the definitions:

Asset - Any physical or digital entity that requires tracking (real estate, education, oil/gas, transportation, healthcare)

Attributes - Attributes of interest: asset (what), ownership (who), time (when), and location (where)

Business Process - Progression of assets through various steps of a business process recorded for trail of evidence. Smart contracts enforce the business process on chain curbing rogue actions

Business Actions - User or machine initiated actions that allows assets to progress from one process state to the next

Actors - Users that interact with the asset to perform process actions and transform the asset from one state to next. Users that have ownership or custody of the asset. Users that participate in audit, review and attestation of the asset to validate history.

Role Permissions - A class of users performing similar actions or functions are grouped into roles. Permissions to perform business actions are assigned by roles. The web interface and smart contracts enforce the permissions, preventing rogue users from tampering
