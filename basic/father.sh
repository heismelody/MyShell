#!/bin/bash
#export PPID

echo "Father Process ID is $$"

localvar="Define a local variable"
echo "localvar=$localvar"

ENVVAR="Define a environment variable"
export ENVVAR
echo "ENVVAR=$ENVVAR"

$PWD/child.sh

echo "Return to father: $$"
echo "localvar=$localvar"
echo "ENVVAR=$ENVVAR"

