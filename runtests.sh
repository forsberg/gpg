#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export GNUPGHOME=${DIR}/testdata/gnupg

gpg-connect-agent reloadagent /bye

go test $@
