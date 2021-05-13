#!/bin/bash
declare PT__installdir

# shellcheck disable=SC1090
source "$PT__installdir/support_tasks/files/common.sh"
# Generate Token for requested user, for consumption in other tasks
# shellcheck disable=SC2086

printf "%s" "$password" | puppet access login $user --lifetime 1d || fail "unable to generate token"

success '{ "status": "Token for $user created" }'
