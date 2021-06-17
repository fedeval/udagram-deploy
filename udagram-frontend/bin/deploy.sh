#!/usr/bin/env bash
aws s3 cp --recursive --acl public-read ./www s3://udagram-fedeval/