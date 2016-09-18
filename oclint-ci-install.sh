#!/usr/bin/env bash
# Automatically installs OCLint.
# This script was designed for usage in CI systems.

curl -OL http://archives.oclint.org/releases/0.11/oclint-0.11-x86_64-linux-4.4.0-36-generic.tar.gz
mkdir -p ~/oclint
tar xf oclint-0.11-x86_64-linux-4.4.0-36-generic.tar.gz -C ~/oclint --strip-components=1
rm oclint-0.11-x86_64-linux-4.4.0-36-generic.tar.gz
export OCLINT_HOME="$HOME/oclint"
export PATH="$OCLINT_HOME/bin:$PATH"
