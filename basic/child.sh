#!/bin/bash

echo "Child Process ID is $$"
echo "My Father Process ID is $PPID"

echo "localvar=$localvar"
echo "Envvar=$ENVVAR"

localvar="Redefine this local variable"
ENVVAR="Redefine this environment varible"
echo "localvar=$localvar"
echo "ENVVAR=$ENVVAR"
