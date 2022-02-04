# Executive Summary
## Use Case
## Application Architecture
## Key Value Propositions
 - Deploying YugabyteDB Anywhere: Hybrid cloud and edge deployment on kubernetes managed by Google Anthos
 - Tight integration with google cloud native managed services
 - Enabling of cloud native microservice architecture stack with resilent and highly scalable databases to 
   support agile business operations and improve productivity
 - xCluster: Bi-directional asynchronous replication to enable:  a, Automatic aggragation of POS data from hundreds of POS terminals to a 
   central managed database to enable downstream applications, b. Propogating changes such as product catalog from the central 
   database to store/edge databases.

# Microservices

### Product Catalog Publishing Service: To maintain product catalog from the hub
  - Add/Update/Delete products
  - Table: Product
  
## Search Service: To enable simple search of product catalog from edge as well as hub, examples of search are:
  - Search product by name
  - Search inventory infor for a given product and store number
  
## Inventory Service: To enable inventory management at edges
  - Search on-hand inventory for a given product and location: By prod / store location
  - Demand generation service to refill inventory
  - Table: Inventory

## Shopping Service/POS:
  - Browse product catalog
  - Execute transactions / orders  
  - Curb side pickup --> stretch goal
  - Table: Orders

## Real Time Order Dashboard on Hub
  - Dashboard to display incoming orders in real time
 
