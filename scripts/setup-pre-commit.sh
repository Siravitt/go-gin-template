#!/bin/bash

ROOT_DIR=$(git rev-parse --show-toplevel)

cd $ROOT_DIR

if pre-commit install --hook-type pre-commit --config .pre-commit-config.yaml
then
    printf "✅ DONE: config pre-commit\n"
else
    printf "❌ FAIL: config pre-commit\n"
fi
