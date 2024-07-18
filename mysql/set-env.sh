#!/bin/bash

# Read each line in data.txt and export as environment variables
while IFS='=' read -r key value; do
  export "$key"="$value"
done < /data.txt
