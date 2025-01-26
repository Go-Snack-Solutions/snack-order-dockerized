@echo off

set NEWT_COLORS=root=,green;title=red,;border=green,;button=,green,

:menu
cls

echo.
echo    ========================================
echo           SEJA BEM-VINDO AO SNACK ORDER DOCKERIZED
echo    ========================================
echo.
echo    Deseja inicializar os containers?
echo.
echo    1. START - Inicializa os recursos das aplicacoes food-order
echo    2. STOP  - Finaliza os containers
echo    3. Sair

echo.
set /p INITIALIZATION_TYPE="Digite sua escolha (1, 2 ou 3): "

if "%INITIALIZATION_TYPE%" == "1" (
    echo Inicializando os recursos...
    call "script-bat\start-local-snack-order-infrastructures.bat
    goto end
) else if "%INITIALIZATION_TYPE%" == "2" (
    echo Finalizando os containers...
    call "script-bat\stop-local-snack-order-infrastructures.bat"
    goto end
) else if "%INITIALIZATION_TYPE%" == "3" (
    echo Encerrando execucao!
    exit /b 0
) else (
    echo Opcao invalida. Tente novamente.
    pause
    goto menu
)

:end
echo.
echo Operacao concluida.
pause