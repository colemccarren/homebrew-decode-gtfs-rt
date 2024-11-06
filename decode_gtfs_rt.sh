#!/bin/bash

# Check if a file was provided
if [ -z "$1" ]; then
  echo "Usage: decode path/to/gtfs-rt-file.pb"
  exit 1
fi

# Path to the GTFS-RT protobuf file
PROTO_FILE="/usr/local/share/gtfs/gtfs-realtime.proto"

# Check if the protobuf file exists in the expected shared directory
if [ ! -f "$PROTO_FILE" ]; then
  echo "Error: gtfs-realtime.proto not found in /usr/local/share/gtfs."
  echo "Please make sure the file is available or reinstall the decode-gtfs-rt package."
  exit 1
fi

# Run protoc to decode the GTFS-RT file into JSON
protoc --proto_path=$(dirname "$PROTO_FILE") --decode_raw < "$1"

