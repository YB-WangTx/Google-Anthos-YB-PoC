## Executive Summary

## Use Cases
 
 This demo intends to showcase following key differentials of YugabyteDB anywhere:
 - Enabling cloud native microservices
 - YugabyteDB Anywhere: Deploying on Edge, on-prem and in the public cloud
 - Geo-distributed applicaitons: Phase 2

## Application Architecture



## Key Value Propositions
 - Deploying YugabyteDB Anywhere: Hybrid cloud and edge deployment on kubernetes managed by Google Anthos
 - Tight integration with google cloud native managed services
 - Enabling of cloud native microservice architecture stack with resilent and highly scalable databases to 
   support agile business operations and improve productivity
 - xCluster: Bi-directional asynchronous replication to enable:  a, Automatic aggragation of POS data from hundreds of POS terminals to a 
   central managed database to enable downstream applications, b. Propogating changes such as product catalog from the central 
   database to store/edge databases.

## Microservices / Dashboard

### Product Catalog Publishing Service: Provides the list of products from table product and ability to search products.
  - Add/Update/Delete products
  - Table: Product
  
### Search Service: Provide simple search service of product catalog from edge as well as hub, examples of search are:
  - Search product by name
  - Search inventory infor for a given product and store number
  
### Inventory Service: Manage/Search inventory of products at edges
  - Search on-hand inventory for a given product and location: By prod / store location
  - Demand generation service to refill inventory to prevent inventory going negative
  - Table: Inventory

### Shopping Service/POS: Provide omnichannel shopping services
  - Browse product catalog
  - Execute transactions / orders  
  - Curb side pickup --> stretch goal
  - Table: Orders

### Real Time Order Dashboard on Hub
  - Dashboard to display incoming orders in real time from edges
 
