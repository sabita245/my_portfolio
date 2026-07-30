#!/bin/bash

echo "Enter the file path:"
read FILE

if [ -f "$FILE" ]
then
    echo "File exists."
else
    echo "File does not exist."
fi