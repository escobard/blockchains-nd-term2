## Lesson 7

### Simple supply chain

- will be using a lemonade stand as an example

#### What can we track?

- the states of each glass of lemonade can be:
    - for sale
    - sold
    - shipped
    - received
- there can be as many states as necessary to satisfy all actor's criteria

#### What properties should each glass of lemonade have?

- each glass of lemonade can be considered as an asset in the supply chain
- the properties of each asset in the scenario can be narrowed down to the following
    - price
    - buyer
    - seller
    - sku
    
#### What functionality do we need to satisfy the criteria of the supply chain?

- to satisfy the expectations of all actors, we need the following functions
    - addItem() - seller creates lemonade glass from supply
    - forSale() - lemonade is prepared, forSale state is set to true
    - sellLemonade() - seller to buyer
    - buyLemonade() - buyer to seller
    - sold() - lemonade is sold, sold state is set to true
    - fetchLemonade() - buyer OR owner 
- each of these are necessary functions to both satisfy expectations of each actor, and maintain data transparency