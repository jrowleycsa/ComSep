#!/bin/bash

# Read input from the user
echo "Enter a list of names (one per line), followed by an empty line:"

# Initialize an array to hold the names
names=()

# Read names from standard input until an empty line is encountered
while IFS= read -r name; do
  if [[ -z "$name" ]]; then
    break
  fi
  names+=("$name")
done

# Process the names and format them
formatted_output=$(printf '"%s", ' "${names[@]}")

# Remove the trailing comma and space
formatted_output=${formatted_output%, }

# Print the formatted output
echo "$formatted_output"
