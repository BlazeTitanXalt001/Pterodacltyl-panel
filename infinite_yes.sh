#!/bin/bash
set -euo pipefail

trap 'echo "Received signal, exiting gracefully"; exit 0' SIGTERM SIGINT
trap 'echo "Error on line $LINENO"; exit 1' ERR

max_runs=${MAX_RUNS:-}
sleep_interval=${SLEEP_INTERVAL:-5}
count=0

if [[ -n "$max_runs" ]]; then
    while [[ $count -lt $max_runs ]]; do
        echo "yes"
        sleep "$sleep_interval"
        count=$((count + 1))
    done

    echo "Completed $count iterations and exiting safely."
else
    while true; do
        echo "yes"
        sleep "$sleep_interval"
    done
fi
