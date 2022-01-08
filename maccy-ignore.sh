#!/usr/bin/env bash

function disable(){
  defaults write org.p0deje.Maccy ignoreEvents true
  echo 'maccy-ignore active!'
}

function enable(){
  defaults write org.p0deje.Maccy ignoreEvents false
  echo 'maccy-ignore inactive!'
}

disable
trap "enable; kill -TERM $$" SIGINT
stty -echoctl

while true; do sleep 1; done


