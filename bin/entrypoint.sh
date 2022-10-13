#!/bin/sh

set -e

pwd

ls -hal

cd /action

mix local.rebar --force
mix do local.hex --force, \
       deps.get, \
       deps.compile

mix run -e "ScheduledMerge.run()"
