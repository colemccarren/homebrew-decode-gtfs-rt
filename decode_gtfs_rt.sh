#!/bin/bash

# decode_gtfs_rt.sh
# A script to decode a GTFS-RT protocol buffer file to JSON format

# Check if required argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <local path or URL to GTFS-RT feed>"
  exit 1
fi

INPUT="$1"
TEMP_PROTO="/tmp/gtfs-realtime.proto"
TEMP_FEED="/tmp/gtfs-rt-feed.pb"
OUTPUT_DIR="$HOME/Downloads"

# Download the latest gtfs-realtime.proto from the official Google repository
echo "Downloading gtfs-realtime.proto..."
curl -s -o "$TEMP_PROTO" "https://raw.githubusercontent.com/google/transit/master/gtfs-realtime/proto/gtfs-realtime.proto"

# Check if input is a URL or a file
if [[ "$INPUT" =~ ^https?:// ]]; then
  # URL: download the feed
  echo "Downloading GTFS-RT feed from URL..."
  curl -s -o "$TEMP_FEED" "$INPUT"

  # Get the current date and time in the format YYYY-MM-DD_HH-MM-SS
  TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
  OUTPUT_FILE="$OUTPUT_DIR/decoded_gtfs_rt_$TIMESTAMP.json"
else
  # Local file: copy the feed to the temp location
  echo "Using local GTFS-RT feed file..."
  cp "$INPUT" "$TEMP_FEED"

  # Extract base name of the input file and append "-decoded" to it
  BASE_NAME=$(basename "$INPUT" .pb) # Remove .pb extension if present
  OUTPUT_FILE="$OUTPUT_DIR/${BASE_NAME}-decoded.json"
fi

# Decode the GTFS-RT feed to JSON
echo "Decoding GTFS-RT feed..."
protoc --proto_path=/tmp --decode=transit_realtime.FeedMessage "$TEMP_PROTO" < "$TEMP_FEED" > "$OUTPUT_FILE"

echo "Decoded GTFS-RT feed saved to: $OUTPUT_FILE"
