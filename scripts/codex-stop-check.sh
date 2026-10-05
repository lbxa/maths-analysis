#!/bin/sh
set -eu

project_root=$(CDPATH= cd "$(dirname "$0")/.." && pwd)
check_log="$project_root/build/codex-stop-check.log"
mkdir -p "$project_root/build"

# Stop hooks require JSON on stdout, so keep the build output in its log.
if make -C "$project_root" check >"$check_log" 2>&1; then
  printf '{}\n'
else
  check_status=$?
  printf '{"systemMessage":"make check failed (exit %s). See build/codex-stop-check.log."}\n' "$check_status"
fi
