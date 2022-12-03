#!/bin/sh

PARTNER_GMS_DIR="/srv/src/LINEAGE_19_1/vendor/partner_gms/"

if [ -d "$PARTNER_GMS_DIR" ]; then
    cd /srv/src/LINEAGE_19_1/vendor/partner_gms
    git stash
    git stash drop
else
    echo "Skipping GMS patch stashing for LOS 19.1, $PARTNER_GMS_DIR not found"
fi