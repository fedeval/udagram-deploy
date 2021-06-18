#!/usr/bin/env bash
echo "1" | eb init udagram-api --region eu-central-1 && eb use udagram-api-dev && eb deploy udagram-api-dev 