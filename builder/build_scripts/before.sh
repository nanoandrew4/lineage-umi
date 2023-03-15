#!/bin/bash

echo "Using git-lfs to pull large blobs from repos..."

LFS_DIRS=$(find /srv/src -name ".lfsconfig" | sed "s~.lfsconfig~~g")
for d in $LFS_DIRS; do (cd "$d" && git-lfs pull); done
echo "Done pulling large blobs, build can now commence!"