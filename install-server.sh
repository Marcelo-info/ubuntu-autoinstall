#!/bin/bash
# Instalações e configurações adicionais para o servidor

echo "Ativando UFW..."
ufw allow OpenSSH
ufw --force enable

echo "Instalando Fail2Ban..."
apt update && apt install -y fail2ban

echo "Configurando Fail2Ban..."
systemctl enable fail2ban
systemctl start fail2ban

echo "Configurações do servidor concluídas."
