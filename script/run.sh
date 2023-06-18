#!/bin/bash

export PGPASSWORD=postgres

function ping_latency() {
  datetime=`date +"%s"`
  result=$(ping -c 1 -W 1 "8.8.8.8")

  if [ $? -eq 0 ]; then
    latency=$(echo "$result" | awk -F '/' 'END {print $5}')
    psql -h $PGCONTAINER -U postgres -c "INSERT INTO internet_metrics VALUES (to_timestamp($datetime), TRUE, $latency);"
    # printf "Latency: %s ms\n" "$latency"
  else
    psql -h $PGCONTAINER -U postgres -c "INSERT INTO internet_metrics VALUES (to_timestamp($datetime), FALSE, NULL);"
    # printf "Latency: -1\n"
  fi
}

while true
do
  ping_latency &
  sleep 2
done