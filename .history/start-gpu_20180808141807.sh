#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

./stop-gpu.sh

URL='http://localhost:8888';

cmd="open $URL"

if which xdg-open > /dev/null
then
  cmd="xdg-open $URL"
elif which gnome-open > /dev/null
then
  cmd="gnome-open $URL"
fi

`$cmd` &>/dev/null &disown;

CURRENT_USER=$(id -u):$(id -g) docker-compose -f docker-compose-gpu.yml up --build
