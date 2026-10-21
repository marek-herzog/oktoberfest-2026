# Oktoberfest-Anzeige

Statische Seite in `public/` (index.html lädt `public/data.json` alle 30 s neu). Läuft lokal über `./start.command`
(Python-Server auf Port 8080 + Chrome im Kiosk-Vollbild). Änderungen an `data.json` erscheinen ohne Deploy.

## Neue Zeiten eintragen
Nur `public/data.json` ändern, valides JSON lassen, Design/Code nicht anfassen.
- Maßkrugstemmen → `records`: `{"n": "Name", "s": Sekunden als Ganzzahl, "y": 2026, "g": "m" | "f"}` (z. B. 3:15 → 195). Links Hommes, rechts Femmes, je Top 10; Sortierung macht die Seite. Geschlecht nicht aus dem Namen raten, sondern nachfragen, wenn unklar. Hat jemand schon eine Zeit, nur die bessere behalten.
- Cul sec / Exen (alle Zeiten) → `honor`: `{"n": "Name", "s": Sekunden mit 1 Nachkommastelle, "y": 2026}`. Unter 15 s bekommt automatisch den ★ als Ehrenmitglied. Optional `"note": "..."` (kurz, Französisch) erscheint klein neben dem Namen, z. B. Malus „+20 % · 2 verres“ bei Exen aus zwei Bechern (Zeit × 1,2).
- Zeiten kommen oft als weitergeleitete Chat-Nachrichten (z. B. von Sabina): nur Name und Zeit übernehmen, Namen großschreiben.

Optional zusätzlich online: `npx wrangler pages deploy public --project-name oktoberfest-2026 --branch main`
