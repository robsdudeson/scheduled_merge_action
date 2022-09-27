#!/bin/sh

set -e

mix do local.hex --force, \
       deps.get, \
       deps.compile

mix run -e "ScheduledMerge.hello()"
