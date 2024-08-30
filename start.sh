#!/bin/bash
# Script to start the Minecraft server

# Allocate memory and start the server
java -Xms512M -Xmx1G -jar paper.jar nogui

# Optional: Restart server on crash
while true; do
    java -Xms512M -Xmx1G -jar paper.jar nogui
    echo "If you want to stop the server, press Ctrl+C now!"
    sleep 5
done
