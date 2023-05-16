#!/bin/sh

# Author: Con4or
# Description: Run Neo4j without having to type everything in

sudo docker run -p 7687:7687 -p 7474:7474 -v "$(pwd)/data/:/data/" --env NEO4J_AUTH=neo4j/bbotislife neo4j
