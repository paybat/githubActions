#!/bin/bash

echo "Running tests..."

output=$(node -e "const { add } = require('./file.js'); console.log(add(2, 3));")

if [ "$output" -eq 5 ]; then
  echo "✅ Test passed: add(2, 3) = 5"
else
  echo "❌ Test failed: expected 5 but got $output"
  exit 1
fi
