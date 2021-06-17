#!/usr/bin/env bash
aws s3 cp --recursive --acl public-read ./build s3://udagram-fedeval/