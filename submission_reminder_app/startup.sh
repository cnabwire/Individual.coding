#!/bin/bash

# This script will start the reminder app by sourcing the required files
# and initializing the environment

# Define the directory
APP_DIR="/Individual.coding/submission_reminder_app"

# Navigate to the app directory
cd "$APP_DIR" || { echo "App directory not found!"; exit 1; }

# Source the environment variables file
if [ -f "config.env" ]; then
    source config.env
    echo "Environment variables loaded from config.env."
else
    echo "config.env not found! Exiting."
    exit 1
fi

# Source functions.sh for reusable functions
if [ -f "functions.sh" ]; then
    source functions.sh
    echo "Functions loaded from functions.sh."
else
    echo "functions.sh not found! Exiting."
    exit 1
fi

# Ensure reminder.sh exists and is executable
if [ -f "reminder.sh" ]; then
    chmod +x reminder.sh
    echo "reminder.sh is ready to go."
else
    echo "reminder.sh not found! Exiting."
    exit 1
fi

# Print a welcome message
echo "Opening your submissions reminder App..."
