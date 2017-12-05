#!/usr/bin/env bash

# Display available updates to Academic.
cd themes/academic
git fetch
git log --pretty=oneline --abbrev-commit
cd ../../

# Update Academic.
git submodule update --remote --merge
