#!/usr/bin/env bash
# uruchamia program z `env`, więc szuka `bash` w `$PATH`


# -e → przerywa program jak jest błąd;
# -u → pokazuje ciche błędy (np. nieokreślona zmienna → `bash: ZMIENNA: unbound variable`);
# -o → option name, bo `pipefail` nie ma krótkiej formy.
# `pipefail` każe bashowi uznać pipe za błędny, jeśli JAKIKOLWIEK element pipe’a zawiedzie. Np.:
# `A | B | C` → „pipeline”. A produkuje dane → dane lecą do B → wynik B leci do C.
# …I TYLKO JEDNO polecenie ma znaczenie dla statusu całej linii. → Domyślnie: OSTATNIE. Więc:
# ```
# false | true
# echo $?
# ```
# Wynik: 0 (true » działa) – `0` to znaczy, że działa.
# Powód? Ostatnie było `true` w ciągu (ang. pipeline).
# false → błąd (exit 1)
# true → sukces (exit 0)
# bash mówi: „ostatnie się udało, więc CAŁOŚĆ się udała”
# Stąd dzięki `pipefail`:
# `pipefail` każe bashowi uznać pipe za błędny, jeśli JAKIKOLWIEK element pipe’a zawiedzie

set -euo pipefail
printf '%s\n' 'Witaj świecie!'


