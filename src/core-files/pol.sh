#!/bin/bash

if [ -z "$POL_DEBUG_MODE"]
then
    ./pol
else
    ./pol --test
fi