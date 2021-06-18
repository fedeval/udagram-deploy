#!/usr/bin/env bash
eb init && \
  eb use udagram-api-dev && \
    eb deploy && \
      eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \ 
        AWS_BUCKET=$AWS_BUCKET \
        AWS_REGION=$AWS_DEFAULT_REGION \
        AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
        POSTGRES_USERNAME=$POSTGRES_USERNAME \
        POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
        POSTGRES_DB=$POSTGRES_DB \
        POSTGRES_HOST=$POSTGRES_HOST \
        DB_PORT=$DB_PORT \
        URL=$URL \
        JWT_SECRET=$JWT_SECRET