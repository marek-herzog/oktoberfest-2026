# Oktoberfest-Anzeige

Statische Seite in `public/` (index.html lädt `public/data.json` alle 30 s neu). Läuft lokal über `./start.command`
(Python-Server auf Port 8080 + Chrome im Kiosk-Vollbild). Änderungen an `data.json` erscheinen ohne Deploy.

## Neue Zeiten eintragen
Nur `public/data.json` ändern, valides JSON lassen, Design/Code nicht anfassen.
- Maßkrugstemmen → `records`: `{"n": "Name", "s": Sekunden als Ganzzahl, "y": 2026}` (z. B. 3:15 → 195). Sortierung macht die Seite, angezeigt werden die Top 10.
- Cul sec unter 15 s → `honor`: `{"n": "Name", "s": Sekunden mit 1 Nachkommastelle, "y": 2026}`.

Optional zusätzlich online: `npx wrangler pages deploy public --project-name oktoberfest-2026 --branch main`
