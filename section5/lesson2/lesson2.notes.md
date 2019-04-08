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


## UML

- Unified Modeling Language
- Intended to provide a standard way to visualize the design of a system.
- Used to unify role of actors, roles, permissions, and processes in a software system.

### UML - background

- models relationships between actions in the chain
- models database patterns
- models stored procedures and services
- cross-team communication tool from business to engineering

### UML - Types

- 2 base types
    1. behavioral
    2. structure

### UML - Layers

1. activity - actors & interactions
2. sequence - functions in a smart contract
3. state - asset states - sold, shipped, received etc 
4. class (data) - database diagram for smart contracts

#### Using petshop as an an example (eralier lessons)

1. actor 1 = breeder who holds 1 asset, 1 pet
2. actor 2 = owner, who may hold multiple pets, but wants 1 pet from actor 1

Within a smart contract, we will create functions that changes the `state and attributes` of an asset.

#### Activity diagrams - actors & interactions

IMPORTANT FOR ALL OF THESE, COME BACK AND ATTACH THE DIAGRAMS FOR CLEAR VISUAL REPRESENTATION, NOT AVAILABLE AS OF NOV 20th, 2018.

purpose: represents the flow from one activity to another in the system. It captures the dynamic behavior of the system.

In this case since we have 2 actors we would create a diagram for the behavior of each actor in the system.

For reference of different activity diagrams in a supply chain system, refer to the [Multiple Actor Activity Diagrams in this Article](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/what-is-activity-diagram/)
    
#### Sequence diagram  - functions in a smart contract

purpose: represents interaction between objects in the order of sequence in which interactions take place.

#### State Diagram - asset states - sold, shipped, received, etc

purpose: A state diagram is type of behavioral diagram which shows how an object moves through various states within its lifetime.

#### Data Model Diagram 

purpose: A diagram which displays properties of each storage model / smart contract property and their role in storing the `assets and their state`.

#### With time, should review: 

- https://www.youtube.com/watch?v=UI6lqHOVHic
- https://www.youtube.com/watch?v=pCK6prSq8aw

