#!/bin/bash

ROOT_DIR=$(git rev-parse --show-toplevel)

cd $ROOT_DIR

pwd

# set: Setting pre-commit config file
if pre-commit install --hook-type pre-commit --config .pre-commit-config.yaml
then
    printf "✅ DONE: config pre-commit\n"
else
    printf "❌ FAIL: config pre-commit\n"
fi

# set: Setting pre-push config file
if pre-commit install --hook-type pre-commit --config .pre-push-config.yaml
then
    printf "✅ DONE: config pre-push\n"
else
    printf "❌ FAIL: config pre-push\n"
fi
