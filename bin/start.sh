#!/bin/bash

start_docker() {
    echo "Starting Docker service..."
    #  doas ln -s /etc/sv/docker /var/service  # Enable Docker service doas sv up docker                       
}

start_oracle_container() {
    echo "Starting Oracle Database 11g container..."
    doas docker run -d -p 49161:1521 -p 8080:8080 -e ORACLE_ALLOW_REMOTE=true oracleinanutshell/oracle-xe-11g
}

open_firefox() {
    echo "Opening Firefox to localhost:8080..."
    firefox http://localhost:8080 &
}

start_docker
start_oracle_container
open_firefox

echo "Oracle Database 11g is up and running!"
