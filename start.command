#!/bin/bash
# Doppelklick im Finder: startet den lokalen Server und öffnet die Seite im Vollbild (Chrome-Kiosk).
# Beenden: Cmd+Q im Vollbild-Fenster. Neue Zeiten: public/data.json bearbeiten, Seite lädt alle 30 s neu.
cd "$(dirname "$0")"
PORT=8080
URL="http://localhost:$PORT"

if ! lsof -iTCP:$PORT -sTCP:LISTEN >/dev/null 2>&1; then
  nohup python3 -m http.server $PORT --directory public >/dev/null 2>&1 &
  sleep 1
fi

# Bildschirm bleibt 8 Stunden wach
nohup caffeinate -d -t 28800 >/dev/null 2>&1 &

# eigenes Profil, damit Kiosk auch bei bereits offenem Chrome greift
open -na "Google Chrome" --args --kiosk --user-data-dir="$HOME/.oktoberfest-kiosk" --no-first-run "$URL"
echo "Läuft auf $URL"
