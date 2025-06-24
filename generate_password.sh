#!/bin/bash

# Default values
DEFAULT_LENGTH=24
DEFAULT_CHARSET='A-Za-z0-9'

# Assign arguments or defaults
length="${1:-$DEFAULT_LENGTH}"
charset="${2:-$DEFAULT_CHARSET}"

# Validate length
if ! [[ "$length" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: Length must be a positive integer."
  echo "Usage: $0 [length] [charset]"
  exit 1
fi

# Generate password
password=$(</dev/urandom tr -dc "$charset" | head -c "$length")

# Fallback check
if [ "${#password}" -lt "$length" ]; then
  echo "Error: Not enough valid characters generated. Try a broader charset."
  exit 1
fi

echo "$password"
