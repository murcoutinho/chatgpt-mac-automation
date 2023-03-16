#!/bin/bash

# Set the file names
FILE_NAMES=("audio-to-gpt.workflow/Contents/document.wflow" "audio-to-text.workflow/Contents/document.wflow" "text-to-gpt.workflow/Contents/document.wflow")

PLACEHOLDER="{PLACEHOLDER}"
REPLACE=$(pwd)

# Loop through each file name
for FILE_NAME in "${FILE_NAMES[@]}"; do
  # Check if the file exists
  if [ -f "$FILE_NAME" ]; then
    # Replace 'REPLACE' with 'HELLO' in the file
    sed -i.bak "s|$PLACEHOLDER|$REPLACE|g" "$FILE_NAME"

    # Remove the backup file created by sed
    rm "${FILE_NAME}.bak"
  else
    echo "File '$FILE_NAME' not found."
  fi
done

# Set the file names
FILE_NAMES=("gpt-script.py" "gpt-from-audio.py")

PLACEHOLDER="{KEYPLACEHOLDER}"
REPLACE="$1"

# Loop through each file name
for FILE_NAME in "${FILE_NAMES[@]}"; do
  # Check if the file exists
  if [ -f "$FILE_NAME" ]; then
    # Replace 'REPLACE' with 'HELLO' in the file
    sed -i.bak "s|$PLACEHOLDER|$REPLACE|g" "$FILE_NAME"

    # Remove the backup file created by sed
    rm "${FILE_NAME}.bak"
  else
    echo "File '$FILE_NAME' not found."
  fi
done

