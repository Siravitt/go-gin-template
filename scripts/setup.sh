#!/bin/bash
cd "$(dirname "$0")"

ROOT_DIR=$(git rev-parse --show-toplevel)

# check: Is all development tools is install ?
if ! ./setup-dev-tools.sh
then
	printf 'Setting up development tools... \t%s\n' "💔 FAIL"
fi

# set: Setting up config
if ! ./setup-pre-commit.sh
then
    printf 'Setting & Config up pre-commit... \t%s\n' "💔 FAIL"
fi