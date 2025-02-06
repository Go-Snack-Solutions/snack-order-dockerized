@echo off
setlocal enabledelayedexpansion

set SNACK_ORDER_POSTGRES=.\compose\default-resources\docker-compose-postgres-db.yml
set SNACK_ORDER_KAFKA=.\compose\default-resources\docker-compose-kafka.yml

echo.
echo *---------------------------------------------------*
echo *--------- START SNACK-ORDER INFRASTRUCTURE ---------*
echo *---------------------------------------------------*
echo.

echo #-------------- STARTING POSTGRES DB ----------------#
docker-compose -f "%SNACK_ORDER_POSTGRES%" up -d
echo.

echo #-------------- STARTING KAFKA ----------------#
docker-compose -f "%SNACK_ORDER_KAFKA%" up -d
echo.

endlocal
pause