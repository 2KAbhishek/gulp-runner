#!/bin/sh -l

set -e

echo "Installing dependencies..."
npm ci || npm install

echo "Running gulp tasks..."
if [ -n "$INPUT_TASK" ]; then
    echo "Running gulp task: $INPUT_TASK"
    npx gulp "$INPUT_TASK"
else
    echo "Running default gulp task"
    npx gulp
fi

echo "Gulp tasks completed successfully!"

