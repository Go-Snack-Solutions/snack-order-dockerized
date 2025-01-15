@echo off
echo.
echo *---------------------------------------------------*
echo *--------- STOP FOOD-ORDER INFRASTRUCTURE ----------*
echo *---------------------------------------------------*
echo.


docker stop $(docker ps -a -q)

docker container prune -f

docker network prune -f

echo.
echo Operação concluída.
pause