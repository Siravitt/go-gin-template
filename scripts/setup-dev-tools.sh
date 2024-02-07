#!/bin/bash
cd "$(dirname "$0")"

# check: Is brew installed ?
if ! command -v brew &> /dev/null
then
    printf "❌ please install brew using command \e[32m/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"\e[0m\n"
else
    printf "✅ brew is already installed $(brew --version)\n"
fi

# check: Is go installed ?
if ! command -v go &> /dev/null
then
    printf "❌ please install go using command \e[32mbrew install go\e[0m\n"
else
    printf "✅ go is already installed $(go version)\n"
fi

# check: Is golangci-lint installed ?
if ! command -v golangci-lint &> /dev/null
then
    printf "❌ please install golangci-lint using command \e[32mbrew install golangci-lint\e[0m\n"
else
    printf "✅ golangci-lint is already installed  $(golangci-lint --version)\n"
fi

# check: Is pre-commit installed ?
if ! command -v pre-commit &> /dev/null
then
    printf "❌ please install pre-commit using command \e[32mbrew install pre-commit\e[0m\n"
else
    printf "✅ pre-commit is already installed $(pre-commit --version)\n"
fi