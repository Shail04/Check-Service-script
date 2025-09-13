#!/bin/bash

echo "Enter the service name to check:"
read SERVICE_NAME

# Check if package is installed
if rpm -qa | grep  "$SERVICE_NAME"; then
    echo "✅ $SERVICE_NAME is installed."

    # Now check if the service is running
    if ps -ef | grep -v grep | grep "$SERVICE_NAME"; then
        echo "✅ $SERVICE_NAME service is running."
    else
        echo "❌ $SERVICE_NAME service is installed but NOT running."
    fi
else
    echo "❌ $SERVICE_NAME is NOT installed."
fi