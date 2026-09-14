#!/usr/bin/env bash

# Define URLs array
urls=(
    "https://www.caitlinjohnst.one/p/i-write-about-israel-all-the-time"
    "https://www.caitlinjohnst.one/p/there-is-no-antisemitism-crisis-in"
    "https://www.caitlinjohnst.one/p/the-idf-didnt-just-target-hospitals"
    "https://www.caitlinjohnst.one/p/washington-drops-ukraine-israel-backs"
    "https://www.caitlinjohnst.one/p/israel-admits-it-violated-the-ceasefire"
    "https://www.caitlinjohnst.one/p/the-gaza-ceasefire-is-being-sabotaged"
    "https://www.caitlinjohnst.one/p/its-gross-and-cringey-to-love-a-state"
    "https://www.caitlinjohnst.one/p/the-plan-to-ethnically-cleanse-gaza"
    "https://www.caitlinjohnst.one/p/civil-rights-are-being-destroyed"
    "https://www.caitlinjohnst.one/p/as-the-gaza-agenda-moves-forward"
    "https://www.caitlinjohnst.one/p/the-nonstop-military-operation-known"
)

# Loop through URLs and generate markdown files
for url in "${urls[@]}"; do
    # Extract filename from URL and add .md extension
    filename=$(basename "$url").md
    
    # Download and convert to markdown
    curl --no-progress-meter "$url" | html2markdown > "$filename"
done
