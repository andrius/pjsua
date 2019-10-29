#!/usr/bin/env bats

@test "pjsua is installed" {
  run docker run --rm $IMAGE which pjsua
  [ "$status" -eq 0 ]
}

@test "pjsua runs ok" {
  run docker run --rm $IMAGE pjsua --help
  [ "$status" -eq 0 ]
}

