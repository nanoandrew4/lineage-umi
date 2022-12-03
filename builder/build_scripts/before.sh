#!/bin/sh

PARTNER_GMS_DIR="/srv/src/LINEAGE_19_1/vendor/partner_gms/"

if [ -d "$PARTNER_GMS_DIR" ]; then
    cd $PARTNER_GMS_DIR
    echo "Applying patch to partner GMS"
    git apply /srv/userscripts/los-microg-GMS.patch
else
    echo "Skipping GMS patching for LOS 19.1, $PARTNER_GMS_DIR not found"
fi