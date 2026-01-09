#!/usr/bin/env bash

set -euo pipefail

pin="1234"

printf '%s\n' 'Welcome to our bank! '
printf '%s' 'Enter your PIN: '
# -s → silent – nie pokazuje znaków podczas zapisywania (bo to ma być PIN)
read -r -s entered_pin

if [[ "$pin" == "$entered_pin" ]]; then
	printf '\n%s\n' 'PIN is correct!'

else
	printf '\n%s\n' 'PIN is incorrect!'
fi

