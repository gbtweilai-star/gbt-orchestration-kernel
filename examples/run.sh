#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_orchestration_kernel info
PYTHONPATH=src python -m gbt_orchestration_kernel check --payload '{}'
PYTHONPATH=src python -m gbt_orchestration_kernel run   --payload '{}'
