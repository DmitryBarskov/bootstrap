#!/usr/bin/env bash

set -e

if [[ "$(git remote get-url origin 2>/dev/null)" == */bootstrap.git ]]; then
  exec ./install
else
  git clone https://github.com/DmitryBarskov/bootstrap.git
  cd bootstrap
  exec ./i
fi
