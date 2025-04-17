#!/bin/bash

# Configuration
SERVER_IP="127.0.0.1"
SERVER_PORT="10075"

# IP et ports clients 
CLIENT_IP="127.0.0.1"
CLIENT_PORTS=(20002 20003 20004 20005)
CLIENT_NAMES=("Balou" "Baguera" "Tarzan" "Jasmine")

# Dossier du client
CLIENT_EXEC="./client/sh13"

# Lancement des clients
for i in {0..3}; do
    echo "Lancement du client ${CLIENT_NAMES[$i]}..."
    $CLIENT_EXEC $SERVER_IP $SERVER_PORT $CLIENT_IP ${CLIENT_PORTS[$i]} ${CLIENT_NAMES[$i]} &
    sleep 0.3  # Petite pause entre chaque pour éviter les conflits
done

echo "Tous les clients ont été lancés."
