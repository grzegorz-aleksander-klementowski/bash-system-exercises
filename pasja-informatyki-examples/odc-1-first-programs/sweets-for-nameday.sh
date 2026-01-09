#!/usr/bin/env bash

# Task about calculating sweets for children in class
# It should calculate:
# 	→ How many sweets per child
# 	→ How many sweets will left after that

set -euo pipefail

# How many children
printf '%s' 'Ile uczniów liczy klasa: '
read -r uczniow

# How much sweets
printf '%s' 'Ile cukierków kupiła mama: '
read -r cukierkow

cukier_na_ucznia=$((cukierkow / (uczniow - 1)))
zostanie_dla_jasia=$((cukierkow - cukier_na_ucznia * (uczniow - 1)))

printf '%s%s%s\n' 'Na każdego ucznia przypada ' "$cukier_na_ucznia" ' cukierków.'
printf '%s%s%s\n' "Zostanie dla Jasia " "$zostanie_dla_jasia" ' cukierków.'

