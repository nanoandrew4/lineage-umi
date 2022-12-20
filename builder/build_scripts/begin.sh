#!/bin/bash

if [ "$WITH_GMS" = 'false' ]; then
    rm -v $LMANIFEST_DIR/gms.xml
fi

if [ "$ENLARGED_PARTITIONS" = 'true' ]; then
    echo "Changing umi.xml to target enlarged partitions branch"
    sed -i 's~device/xiaomi/umi" remote="github"~device/xiaomi/umi" remote="github" revision="'"$BRANCH_NAME"'-enlarged-partitions"~g' $LMANIFEST_DIR/umi.xml
fi