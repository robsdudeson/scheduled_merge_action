#!/bin/sh

set -e

cd /action

echo "::group::Install mix dependencies"
mix local.rebar --force
mix do local.hex --force, \
       deps.get, \
       deps.compile
echo "::endgroup::"

mix run -e "ScheduledMerge.run()"
