#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define variables
REMOTE_USER="rexy"                   # Your SSH username
REMOTE_HOST="34.230.56.158"          # Your remote server IP address
REMOTE_PATH="/home/rexy/app"         # Desired path on the remote server
LOCAL_FILES="./*"                     # This matches all files in the current directory

# Print debugging information
echo "Current directory: $(pwd)"
echo "Contents of the current directory:"
ls -la

# Make sure at least one file exists in the current directory
if [ -z "$(ls -A $LOCAL_FILES)" ]; then
    echo "No files found in the current directory."
    exit 1
fi

echo "Deploying application to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH..."

# Copy files to the remote server
scp -r $LOCAL_FILES "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

echo "Deployment completed successfully."
