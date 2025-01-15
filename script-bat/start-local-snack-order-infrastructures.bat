@echo off
setlocal enabledelayedexpansion

set SNACK_ORDER_POSTGRES=..\compose\default-resources\docker-compose-postgres-db.yaml

echo.
echo *---------------------------------------------------*
echo *--------- START SNACK-ORDER INFRASTRUCTURE ---------*
echo *---------------------------------------------------*
echo.

echo #-------------- STARTING POSTGRES DB ----------------#
docker-compose -f ..\compose\default-resources\docker-compose-postgres-db.yaml up -d
echo.

endlocal
pause