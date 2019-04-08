# Lesson 1

## Infrastructure

- Most companies already have infrastructures in place.
- As a blockchain dev. I can expect to enhance already existing systems, with blockchain solutions

### Why supply chains?

- It's a great choice to leverage with blockchain solutions, since it has many variable moving pieces that must be tied together.
- In simple terms, a supply chain is the passing of goods from the producer to the consumer.
- Blockchains help bring transparency and a centralized location to keep track of all parts of the flow of data.
- The levels of layers in the supply chain system, (a separate system for t1 supplier, t2 supplier, manufacturer, distributor, customer)
- This means that there is limited interoperability between each data layer, since there is no real relationship between the entire supply chain channel.

### How can a blockchain solution help?

- Instead of utilizing separate silos to maintain the data, we can utilize a secure data layer for data retnetion, across all layers.
- The blockchain will specifically, and ONLY track movements from 1 layer to the next.
- This way, the data remains specific and clean, while the individual silos can operate without any difference.
- Helps trace products from producer to consumer, due to the nature of how blockchains work.
- by the use of smart contracts, one can reduce the cost of tracking transactions between layers.
- this can revolutionize the supply chain world, simply by adding a blockchain layer.

### Tradelens

- https://www.tradelens.com/
- Created by IBM and MAERSK(worlds biggest shipper) to set standards for the world's supply system with blockchain technology.
- The idea is to allow multiple trading partners to collaborate, by establishing a single shared view of a transaction, without compromising detail privacy.


### Dapp (Decentralized application) architecture

- https://truffleframework.com/tutorials/pet-shop
- the link above is used as an example for an architecture to render a simple interface, with a blockchain DB connection.
- we can adapt a simple MVC flow where:
    - Front end is the View
    - Smart contract is the Controller
    - Blockchain network is the Model
- no need to expand further, solid architecture for software

### Dapp setup, in order

- Does not have to follow this order, but it should to build the controller alongside the model, and the view last.
    1) Setup smart contract
    2) Deploy smart contract
    3) Test smart contract
    4) Build UI to interact with smart contract.
    5) Use MetaMask / web3 to interact with the DApp on the browser.

### Supply chain basics

- SKU: Stock keeping unit - used to keep track of the product via a re-tracable string
    - alphanumeric code retailers use to keep track of their stock internally
    - usually unique to each retailer
    - the SKU property is used as the transaction ID, and stored in the blockchain indefinetly

### Non-localization

- The data is not localized to a single owner, by using a blockchain solution
- suppliers usually have their own layer of blockchain, and upstream clients have another layer
- both layers feed into a public blockchain network, to publically store the data
- each transaction goes through the consensus process, before being added to the chain

### Auditability

- The information can be verified by anyone on the service
- Increases transparency, easier to track inventory
- proves authenticity when product is signed, and will only be signed if product is authentic
    - an authentic product is a product that contains genuine information
    - fraudulent information will eventually be flagged, and users will be excluded from the chain

### Security

- Security is maintained since only AUTHORIZED entities can access sensitive information, using their wallet addresses as a medium.
    - this allows different retailers to only have access to information that is relevant to them
    - the rest is unathorized, with entities only having access to their own front / back layer
- 