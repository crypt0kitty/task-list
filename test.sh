#!/bin/bash

# Stop previous process if it's running
rm -f tmp/pids/server.pid 

# Run rails Test
bundle exec rails test
