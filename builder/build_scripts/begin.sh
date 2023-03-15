#!/bin/bash

if [ "$WITH_GMS" = 'false' ]; then
    rm -v $LMANIFEST_DIR/gms.xml
fi

if [ "$ENLARGED_PARTITIONS" = 'true' ]; then
    echo "Changing umi.xml to target enlarged partitions branch"
    sed -i 's~device/xiaomi/umi" remote="github"~device/xiaomi/umi" remote="github" revision="'"$BRANCH_NAME"'-enlarged-partitions"~g' $LMANIFEST_DIR/umi.xml
else
    echo "Changing umi.xml to target unofficial partitions branch"
    sed -i 's~remote="github"~remote="github" revision="'"$BRANCH_NAME"'-unofficial"~g' $LMANIFEST_DIR/umi.xml
fi

echo "Installing git-lfs..."
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash
apt-get install git-lfs -y
echo "git-lfs installed!"