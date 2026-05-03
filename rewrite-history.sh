#!/usr/bin/env bash
set -e
cd '/c/Users/crisp/Documents/halloween/Manuscript Horror Game'
TMPDIR=$(mktemp -d)
BARE="$TMPDIR/fixrepo"
git init --bare "$BARE"
git fast-export --all | perl -pe 's#Areas \(HTML\)/Infirmary /index\.html#Areas (HTML)/Infirmary/index.html#g' | git -C "$BARE" fast-import --quiet
echo "bare repo $BARE"
