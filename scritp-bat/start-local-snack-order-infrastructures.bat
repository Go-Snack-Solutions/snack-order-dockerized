@echo off
setlocal enabledelayedexpansion

set SNACK_ORDER_POSTGRES=..\compose\default-resources\docker-compose-postgres-db.yml
@REM set SNACK_ORDER_KAFKA=..\compose\default-resources\docker-compose-SNACK-order-kafka.yml
@REM set SNACK_ORDER_PROMETHEUS=..\compose\default-resources\docker-compose-SNACK-order-prometheus.yml
@REM set SNACK_ORDER_JENKINS=..\compose\default-resources\docker-compose-SNACK-order-jenkins.yml

echo.
echo *---------------------------------------------------*
echo *--------- START SNACK-ORDER INFRASTRUCTURE ---------*
echo *---------------------------------------------------*
echo.

echo #-------------- STARTING POSTGRES DB ----------------#
docker-compose -f "%SNACK_ORDER_POSTGRES%" up -d
echo.

@REM echo #-------------- STARTING KAFKA ----------------#
@REM docker-compose -f "%SNACK_ORDER_KAFKA%" up -d
@REM echo.

@REM echo #-------------- STARTING PROMETHEUS and GRAFANA ----------------#
@REM docker-compose -f "%SNACK_ORDER_PROMETHEUS%" up -d
@REM echo.

@REM echo #-------------- STARTING JENKINS ----------------#
@REM docker-compose -f "%SNACK_ORDER_JENKINS%" up -d
@REM echo.

endlocal
pause