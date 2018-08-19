#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )"

./stop-cpu.sh

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

docker-compose -f docker-compose-cpu.yml up --build --force-recreate
