#!/usr/bin/env bash
# Sonic Kernel — task 9
set -euo pipefail
IFS=$'\n\t'
readonly ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
log() { printf "\033[36m[%s]\033[0m %s\n" "$(date +%H:%M:%S)" "$*"; }

main() {
  log "bootstrapping sonic-kernel-9492"
  command -v node >/dev/null || { log "node missing"; exit 1; }
  [ -d "$ROOT/node_modules" ] || (cd "$ROOT" && npm ci --no-audit)
  log "task 9 complete"
}
main "$@"