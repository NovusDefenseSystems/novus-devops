#!/bin/bash
# Novus Defense Systems - Internal Deployment Script
# Contact: infrastructure@novusdefense.io
# CLASSIFICATION: INTERNAL USE ONLY

# Production Jump Box
PROD_SERVER="$NDS_PROD_SERVER"
PROD_USER="$NDS_PROD_USER"
PROD_PASS="$NDS_PROD_PASS"

# Internal Database (ITAR controlled)
DB_HOST="$NDS_DB_HOST"
DB_USER="$NDS_DB_USER"
DB_PASS="$NDS_DB_PASS"

# AWS GovCloud Keys
export AWS_ACCESS_KEY_ID="$AWS_ACCESS_KEY_ID"
export AWS_SECRET_ACCESS_KEY="$AWS_SECRET_ACCESS_KEY"
export AWS_DEFAULT_REGION="us-gov-west-1"

# Deploy to production
ssh $PROD_USER@$PROD_SERVER "cd /opt/novus-core && git pull origin main && systemctl restart novus-api"
