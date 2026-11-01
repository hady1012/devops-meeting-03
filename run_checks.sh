#!/usr/bin/env bash
set -euo pipefail
python -m compileall -q app.py
python -m pytest -q
printf '\nPASS: build check and tests completed.\n'
