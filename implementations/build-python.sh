#!/bin/bash
set -e # make script fail on first error
SCRIPT_PATH=`dirname $0`
source $SCRIPT_PATH/script.inc

if [ "$1" = "style" ]
then
  INFO Check style of Python benchmarks
  pushd $SCRIPT_PATH/../benchmarks/Python
  python -m black --check --diff .
  python -m pylint *.py som
else
  exit 0
fi
