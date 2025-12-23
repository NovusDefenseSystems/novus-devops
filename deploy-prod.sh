#!/bin/bash
# Novus Defense Systems - Internal Deployment Script
# Contact: infrastructure@novusdefense.io
# CLASSIFICATION: INTERNAL USE ONLY
# WARNING: Contains production credentials - do not commit!

# Production Jump Box
PROD_SERVER="167.71.108.255"
PROD_USER="svc_deploy"
PROD_PASS="N0vus_Pr0d_2024!$"

# Internal Database (ITAR controlled)
DB_HOST="db-prod.novusdefense.local"
DB_USER="app_svc"
DB_PASS="D3f3ns3_Syst3ms_DB!"

# AWS GovCloud Keys
export AWS_ACCESS_KEY_ID="AKIAIOSFODNN7GOVCLOUD"
export AWS_SECRET_ACCESS_KEY="wJalrXUtnFEMI/K7MDENG/bPxRfiCYzKsGOV"
export AWS_DEFAULT_REGION="us-gov-west-1"

# Deploy to production
ssh $PROD_USER@$PROD_SERVER "cd /opt/novus-core && git pull origin main && systemctl restart novus-api"
