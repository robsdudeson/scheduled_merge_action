FROM elixir:1.14.0-alpine

RUN apk add --update build-base git
RUN mix local.hex --force

LABEL "repository"="https://github.com/robsdudeson/scheduled_merge_action"
LABEL "version"="0.0.1"

COPY bin /action/bin
COPY README.md LICENSE mix.exs mix.lock /

RUN mix deps.get

ENTRYPOINT ["/action/bin/entrypoint.sh"]
