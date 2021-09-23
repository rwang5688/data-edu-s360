#!/bin/bash
export S360_SRC=$S360_HOME/src

# print environment variables
echo "S360_SRC=$S360_SRC"

# execute
echo "validate-s360-component=$1"
aws cloudformation validate-template \
--template-body file://$S360_SRC/s360-$1.yaml
