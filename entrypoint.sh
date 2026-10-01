#!/bin/sh
set -eu

username="${INPUT_USERNAME:-}"
greeting="${INPUT_GREETING:-Bonjour}"

if [ -z "$username" ]; then
  echo "::error::L'entrée 'username' est obligatoire." >&2
  exit 1
fi

message="${greeting}, ${username}!"
printf '%s\n' "$message"

if [ -n "${GITHUB_OUTPUT:-}" ]; then
  delimiter="ghadelimiter_$(od -An -N16 -tx1 /dev/urandom | tr -d ' \n')"
  {
    printf 'message<<%s\n' "$delimiter"
    printf '%s\n' "$message"
    printf '%s\n' "$delimiter"
  } >> "$GITHUB_OUTPUT"
fi