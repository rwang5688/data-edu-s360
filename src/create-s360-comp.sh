#!/bin/bash
export S360_SRC=$S360_HOME/src

# print environment variables
echo "S360_SRC=$S360_SRC"

# execute
echo "create-s360-component=$1 in region=$2, profile=$3, project=$4"
aws cloudformation create-stack --stack-name s360-$1 \
--template-body file://$S360_SRC/s360-$1.yaml \
--capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
--parameters file://s360-$1-parameters.json \
--region $2 \
--profile $3 \
--tags Key="Project",Value="$4"
