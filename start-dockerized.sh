#!/bin/bash

export NEWT_COLORS='
  root=,green
  title=red,
  border=green,
  button=,green,
'

PROMPT_COMMAND='red'

INITIALIZATION_TYPE=$(whiptail --title "SEJA BEM VINDO AO SNACK ORDER DOCKERIZED" --menu "Deseja inicializar os containers?:" 18 80 10 \
      "START" "Inicializa os recursos das aplicações food-order"        \
      "STOP" "Finaliza os containers" \
       3>&1 1>&2 2>&3
)

if [[ "$INITIALIZATION_TYPE" == "START" ]]; then
  chmod +x ./script-bash/start-local-snack-order-infrastructures.sh
  echo "./script-bash/start-local-snack-order-infrastructures.sh"  | bash
elif [[ "$INITIALIZATION_TYPE" == "STOP" ]]; then
  chmod +x ./script-bash/stop-local-snack-order-infrastructures.sh
  echo "./script-bash/stop-local-snack-order-infrastructures.sh"  | bash
else
    echo "Encerrando execução!"
    exit 0
fi