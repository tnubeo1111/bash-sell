#!/bin/bash

# Using $[operation] in shell

var1=100
var2=50
var3=30
var4=$[$var1 * ($var2 + $var3)]
echo "The final reasult is: $var4"

