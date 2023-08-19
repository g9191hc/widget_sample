#!/bin/bash

# List of dependencies to add
dependencies=(
  "go_router"
  "flutter_speed_dial:^5.0.0"
  "fluttertoast"
  # Add more dependencies as needed
)

# Loop through the dependencies and add them
for dep in "${dependencies[@]}"; do
  flutter pub add "$dep"
done

echo "Dependencies added!"
