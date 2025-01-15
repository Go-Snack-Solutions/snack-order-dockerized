@echo off
echo.
echo *---------------------------------------------------*
echo *--------- STOP SNACK-ORDER INFRASTRUCTURE ----------*
echo *---------------------------------------------------*
echo.

echo.
echo.
echo docker stop $(docker ps -a -q)
for /f "tokens=*" %%i in ('docker ps -a -q') do (
    docker stop %%i
)

echo.
echo.
echo docker container prune -f
docker container prune -f

echo.
echo.
echo docker network prune -f
docker network prune -f

echo.
echo Operação concluida.
pause