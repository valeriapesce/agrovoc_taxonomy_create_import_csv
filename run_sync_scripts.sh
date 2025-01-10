#!/bin/bash

# Create tmp directory if it doesn't exist
mkdir -p tmp

# Run first executable

# Run first executable with temp files in tmp directory
cd tmp
../sparql_queries

# Check the status file
STATUS=$(cat endpoint_queries_completion_status.txt)

cd ..

if [ "$STATUS" = "True" ]; then
    echo "Endpopoint queries executed correctly... launching second script to update CSVs..."
    cd tmp
    ../local_queries_to_CSV
else
    echo "Problems with endpopoint queries... not launching script to update CSVs"
    exit 1
fi

# Clean up the status file
rm endpoint_queries_completion_status.txt

# Optionally, clean up the tmp directory
# rm -r tmp  # Uncomment this if you want to auto-clean temporary files