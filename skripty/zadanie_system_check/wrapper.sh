#!/bin/env bash

LOG_FILE="logs/warnings"

# Logovanie spustenia
echo "$(date) - Skript spustený používateľom: $(whoami)" >> "$LOG_FILE"

# Meranie času a spustenie hlavného skriptu
echo "Spúšťam systémovú kontrolu..."
time ./system_check.sh

# Logovanie ukončenia
echo "$(date) - Skript ukončený" >> "$LOG_FILE"
echo "Detailný log dostupný v: $LOG_FILE"

