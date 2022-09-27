#!/bin/sh

set -e

mix local.hex --force
mix deps.get

mix run -e "ScheduledMerge.hello()"
