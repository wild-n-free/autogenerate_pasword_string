# Password Generator Script

This is a simple and flexible Bash script to generate secure random passwords using characters from a user-defined set.

## Features

- Generate a random password of specified length
- Customize the allowed characters (charset)
- Fails gracefully if invalid input is provided

## Usage

```bash
./generate_password.sh [length] [charset]
```

### Parameters

- `length` (optional): The number of characters in the password.  
  - Default: `24`
  - Must be a **positive integer**
- `charset` (optional): The list of characters to use.  
  - Default: `A-Za-z0-9`
  - You can provide a literal set like `abc123!@#` or use character classes like `A-Za-z0-9!@#$%^&*()`

### Examples

```bash
# Generate a 24-character password using default charset (A-Za-z0-9)
./generate_password.sh

# Generate a 16-character password using only a subset of characters
./generate_password.sh 16 abc123

# Generate a 12-character password using symbols only
./generate_password.sh 12 '!@#$%^&*'
```

## Notes

- Always wrap the charset in **single quotes** if it contains shell-special characters (like `!`, `*`, `&`, etc.)
- The script reads from `/dev/urandom`, which is a secure source of randomness on Unix-like systems
- If the charset is too narrow, the script may not be able to generate a password of the requested length

## Requirements

- Bash (typically pre-installed on Unix/Linux/macOS)
- Common Unix tools: `tr`, `head`, and `/dev/urandom`

## License

This script is provided as-is, without warranty. Use at your own risk.
