#!/bin/sh

# Author: Con4or
# Script to install bbot stuff
# Part 2 of 2 (due to reboot requirement)

python3 -m pipx install bbot
bbot --help
sudo snap install docker

# Run the first time to make sure everything works
sudo docker run -p 7687:7687 -p 7474:7474 -v "$(pwd)/data/:/data/" --env NEO4J_AUTH=neo4j/bbotislife neo4j

# [CTRL + C] to quit
