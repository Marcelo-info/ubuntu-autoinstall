#!/bin/bash
# Instalações e configurações adicionais para o desktop

echo "Instalando Fail2Ban..."
apt update && apt install -y fail2ban

echo "Configuração básica do Fail2Ban..."
systemctl enable fail2ban
systemctl start fail2ban

echo "Instalação de pacotes extras concluída."
