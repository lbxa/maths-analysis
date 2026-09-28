#!/bin/bash

set -euo pipefail

if [[ $# -ne 2 ]]; then
  printf 'Usage: %s INPUT_IMAGE OUTPUT_JPEG\n' "$0" >&2
  exit 2
fi

input_image="$1"
output_image="$2"

if [[ ! -f "$input_image" || ! -r "$input_image" ]]; then
  printf 'Error: input image is not a readable file: %s\n' "$input_image" >&2
  exit 1
fi

if [[ -z "$output_image" || -d "$output_image" ]]; then
  printf 'Error: output must be a JPEG file path: %s\n' "$output_image" >&2
  exit 1
fi

# Prefix relative paths so filenames beginning with '-' are not options.
[[ "$input_image" = /* ]] || input_image="./$input_image"
[[ "$output_image" = /* ]] || output_image="./$output_image"

mkdir -p "$(dirname "$output_image")"
sips -s format jpeg "$input_image" --out "$output_image"
