#!/bin/bash

counter=640
max=800

while [ $counter -le $max ]
do
    echo -n "$counter,"
    ((counter++))
done