#!/bin/bash

export NEWT_COLORS='root=,green'

echo
echo "*---------------------------------------------------*"
echo "*--------- STOP SNACK-ORDER INFRASTRUCTURE ---------*"
echo "*---------------------------------------------------*"
echo
echo "#-------------- STOPING ALL CONTAINERS ----------------#"
docker stop $(docker ps -a -q)

echo "#-------------- PRUNE CONTAINERS ----------------#"
docker container prune -f

echo "#-------------- PRUNE NETWORK ----------------#"
docker network prune -f
