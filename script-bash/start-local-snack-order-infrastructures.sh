#!/bin/bash

export NEWT_COLORS='root=,green'

SNACK_ORDER_POSTGRES="./compose/default-resources/docker-compose-postgres-db.yml"
SNACK_ORDER_KAFKA="./compose/default-resources/docker-compose-kafka.yml"
SNACK_ORDER_PROMETHEUS="./compose/default-resourcers/docker-compose-prometheus.yml"





echo
echo "*---------------------------------------------------*"
echo "*--------- START FOOD-ORDER INFRASTRUCTURE ---------*"
echo "*---------------------------------------------------*"
echo
echo "#-------------- STARTING POSTGRES DB ----------------#"
docker-compose -f $SNACK_ORDER_POSTGRES up -d
echo
echo
echodocker
echo
echo "#-------------- STARTING KAFKA ----------------#"
docker-compose -f $SNACK_ORDER_KAFKA up -d
echo
echo
echo
echo
echo "#-------------- STARTING PROMETHEUS | GRAFANA ----------------#"
docker-compose -f $SNACK_ORDER_PROMETHEUS up -d
