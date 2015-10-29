#!/usr/bin/env bash

(
cd _site
git add -A
git commit -m "Site update"
git push
)
