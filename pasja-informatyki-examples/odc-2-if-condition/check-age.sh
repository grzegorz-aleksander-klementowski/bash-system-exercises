#!/usr/bin/env bash

# Check age example – it check the age of the user and tell what the citizen can do

set -euo pipefail

printf '%s' 'Type your age: '
read -r age

# Zapis		|Znaczenie
# --------------------------------------
# ( cmd )	uruchom cmd w subshellu
# (( expr ))	kontekst arytmetyczny
# $(( expr ))	oblicz i zwróć wynik
if (( age < 18 )); then
	printf '%s\n' "You're not adult and you can't bacome a president."
elif (( age >= 18 && age < 35 )); then
	printf '%s\n' "You're adult, but cannot be a president."
else
	printf '%s\n' "You're adult, and can be president!"
fi
