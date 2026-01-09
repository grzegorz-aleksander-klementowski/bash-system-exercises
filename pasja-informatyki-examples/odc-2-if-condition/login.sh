#!/usr/bin/env bash

# login example – cheching login and password in one `if` condition

set -euo pipefail

login="admin"
password="admin1234"

# Enter login
printf "Enter login: "
read -r entered_login
printf '\n'

# Enter password
printf "Enter password: "
read -rs entered_password
printf '\n'

# Check entered login and password correct
if [[ "$login" == "$entered_login" && "$password" == "$entered_password" ]]; then
	printf '%s\n' 'Login and password correct!'
else
	printf '%s\n' 'Login fail!'
fi
