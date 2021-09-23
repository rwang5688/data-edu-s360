#!/bin/bash
export S360_SRC=$S360_HOME/src

# print environment variables
echo "S360_SRC=$S360_SRC"

# execute
echo "delete-s360-component=$1 in region=$2 and profile=$3"
aws cloudformation delete-stack --stack-name s360-$1 \
--region $2 \
--profile $3
