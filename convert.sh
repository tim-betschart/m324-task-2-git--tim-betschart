#!/bin/bash

# Datei überprüfen
INPUT_FILE="README.md"
OUTPUT_FILE="index.html"

# Prüfen, ob README.md existiert
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: $INPUT_FILE does not exist."
    exit 1
fi

# Markdown in HTML konvertieren
pandoc "$INPUT_FILE" -o "$OUTPUT_FILE" --standalone --metadata title="README"

# Erfolgsmeldung
if [ $? -eq 0 ]; then
    echo "Konvertierung erfolgreich: $OUTPUT_FILE wurde aktualisiert."
else
    echo "Fehler bei der Konvertierung."
    exit 1
fi
