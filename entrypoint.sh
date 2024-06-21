#!/bin/sh 

set -e

if [ -z "$S3_BUCKET" ]; then
  echo "S3_BUCKET is not set. Quitting."
  exit 1
fi
if [ -z "$AWS_PROFILE" ]; then
  echo "AWS_PROFILE is not set. Quitting."
  exit 1
fi
if [ -z "$S3_KEY" ]; then
  echo "S3_KEY is not set. Quitting."
  exit 1
fi
if [ -z "$FILE" ]; then
  echo "FILE is not set. Quitting"
  exit 1
fi

if [ -z "$AWS_REGION" ]; then
  AWS_REGION="us-east-1"
fi


aws s3 cp ${FILE} s3://${S3_BUCKET}/${S3_KEY} --region ${AWS_REGION} --profile ${AWS_PROFILE} $*

rm -rf ~/.aws

