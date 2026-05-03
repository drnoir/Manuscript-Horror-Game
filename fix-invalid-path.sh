#!/usr/bin/env bash
cd '/c/Users/crisp/Documents/halloween/Manuscript Horror Game'
git filter-branch --force --index-filter 'git ls-files -s | perl -pe "s#Areas \(HTML\)/Infirmary /index\.html#Areas (HTML)/Infirmary/index.html#g" | GIT_INDEX_FILE=$GIT_INDEX_FILE.new git update-index --index-info && mv "$GIT_INDEX_FILE.new" "$GIT_INDEX_FILE"' -- --all
