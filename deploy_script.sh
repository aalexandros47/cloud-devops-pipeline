#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define variables
REMOTE_USER="rexy"                   # Your SSH username
REMOTE_HOST="34.230.56.158"          # Your remote server IP address
REMOTE_PATH="/home/rexy/app"         # Desired path on the remote server
LOCAL_PATH="/home/rexy"  # Local path to the files you want to deploy

# Make sure the local path exists
if [ ! -d "$LOCAL_PATH" ]; then
    echo "Local path $LOCAL_PATH does not exist."
    exit 1
fi

echo "Deploying application from $LOCAL_PATH to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH..."

# Copy files to the remote server
scp -r "$LOCAL_PATH" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

echo "Deployment completed successfully."
