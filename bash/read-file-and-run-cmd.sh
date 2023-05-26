#!/bin/bash

while getopts "f:" flag
do
    case "${flag}" in
      f) filename=${OPTARG};;
      *) echo 'error' >&2
       exit 1
    esac
done

while IFS= read -r line
do
  echo $line
  #TODO
  echo ""
done < "$filename"
