#!/bin/bash

abort() {
  printf "\n\x1B[31mError: $@\x1B[0m\n\n"
  exit 1
}

log() {
  local label=$1
  shift
  printf "\x1B[36m>>> %s\x1B[0m :" $label
  printf " \x1B[90m$@\x1B[0m\n"
}


bash ./start.sh

log run "test cases"
ava --verbose --timeout=10s || abort "test fails"
