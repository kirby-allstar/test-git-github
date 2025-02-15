#!/bin/bash
PORT=8000

PID=$(lsof -ti:$PORT)

if [ -n "$PID" ]; then
    kill $PID
    sleep 6
fi

python -m http.server $PORT
