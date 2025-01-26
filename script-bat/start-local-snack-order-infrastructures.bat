@echo off
setlocal enabledelayedexpansion

set SNACK_ORDER_POSTGRES=.\compose\default-resources\docker-compose-postgres-db.yml

echo.
echo *---------------------------------------------------*
echo *--------- START SNACK-ORDER INFRASTRUCTURE ---------*
echo *---------------------------------------------------*
echo.

echo #-------------- STARTING POSTGRES DB ----------------#
docker-compose -f "%SNACK_ORDER_POSTGRES%" up -d
echo.

endlocal
pause