#!/bin/bash

trap 'echo "Received signal, exiting gracefully"; exit 0' SIGTERM SIGINT

while true; do
    echo "yes"
    sleep 5
done