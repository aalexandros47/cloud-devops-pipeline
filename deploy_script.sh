#!/bin/bash
echo "Starting deployment..."

# Define variables
SSH_KEY_PATH="~/.ssh/your-private-key.pem"  # Replace with the path to your SSH key
DEPLOY_USER="your-username"                # Replace with your SSH username on the target server
TARGET_IP="34.230.56.158"                  # Replace with the IP of the target server
TARGET_DIR="/home/your-username/app"       # Replace with the desired directory on the target server

# Use SSH Agent to load the key (optional)
echo "Starting SSH agent and adding private key..."
eval "$(ssh-agent -s)"
ssh-add $SSH_KEY_PATH

# Deploy application files
echo "Deploying application to $TARGET_IP..."
scp -i $SSH_KEY_PATH -r src $DEPLOY_USER@$TARGET_IP:$TARGET_DIR

echo "Deployment completed!"
