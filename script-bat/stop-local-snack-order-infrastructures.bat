@echo off
echo.
echo *---------------------------------------------------*
echo *--------- STOP FOOD-ORDER INFRASTRUCTURE ----------*
echo *---------------------------------------------------*
echo.


for /f "tokens=*" %%i in ('docker ps -a -q') do (
    docker stop %%i
)


docker container prune -f

docker network prune -f

echo.
echo Operação concluída.
pause