#!/bin/bash

# Navigate to the deployment directory
cd /path/to/deploy

# Stop the current application if running
pm2 stop app || true

# Pull the latest changes
git pull origin main

# Install dependencies
npm install

# Start the application
pm2 start app.js --name "app" --env production

# Save the PM2 process list and corresponding environments
pm2 save
