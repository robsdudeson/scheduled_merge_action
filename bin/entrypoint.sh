#!/bin/sh

set -e

pwd

ls -hal

cd /action

env | grep GITHUB

mix local.rebar --force
mix do local.hex --force, \
       deps.get, \
       deps.compile

mix run -e "ScheduledMerge.run()"
