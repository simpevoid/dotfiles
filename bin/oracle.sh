#!/bin/bash

# Function to enable and start Docker service
start_docker() {
  echo "Starting Docker service..."
  doas ln -s /etc/sv/docker /var/service/
  doas sv up docker
}

# Function to run Oracle Database 11g in Docker
start_oracle_container() {
  echo "Starting Oracle Database 11g container..."
        doas docker run -d \
    --name oracle-xe-11g \
    -p 49161:1521 \
    -p 8080:8080 \
    -e ORACLE_ALLOW_REMOTE=true \
    oracleinanutshell/oracle-xe-11g
}

# Function to open Firefox with Oracle XE management and APEX page
open_firefox() {
  echo "Opening Firefox to Oracle XE Management and APEX pages..."
  firefox http://localhost:8080/apex &
#  firefox http://localhost:8080 &
}

# Main script execution
start_docker
start_oracle_container
open_firefox

echo "Oracle Database 11g and APEX are up and running! You can now access them at localhost:8080 and localhost:8080/apex."
