#!/bin/sh

set -e

pwd

ls -hal

mix do local.hex --force, \
       deps.get, \
       deps.compile

mix run -e "ScheduledMerge.hello()"
