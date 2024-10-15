#!/bin/bash
echo "Deploying application..."
# Example commands
scp -r ./build/ user@server:/path/to/deployment/
ssh user@server 'systemctl restart myservice'
