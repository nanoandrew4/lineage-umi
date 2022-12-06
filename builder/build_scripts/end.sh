BUILT_VERSIONS=$(ls /srv/zips | sed -n "s/^lineage-\([[:digit:]]*\.[[:digit:]]*\)-.*$/\1/p" | sort -u)

if [ ! -z "${BUILT_VERSIONS}" ]; then
    function join_by { local IFS="$1"; shift; echo "$*"; }

    BUILD_DATE_UNIX=$(cat $(find /srv/zips -name "*.prop") | sed -n "s/^ro.build.date.utc=\(.*\)$/\1/p")
    BUILD_DATE=$(date --date="@$BUILD_DATE_UNIX" +%Y%m%d)
    FORMATTED_BUILD_DATE=$(date --date="@$BUILD_DATE_UNIX" +%Y-%m-%d)
    SECURITY_PATCH=$(cat $(find /srv/zips -name "*.prop") | sed -n "s/^ro.build.version.security_patch=\(.*\)$/\1/p")    

    echo "$BUILT_VERSIONS build was successful at date $FORMATTED_BUILD_DATE, with security patch $SECURITY_PATCH, releasing..."

echo "
Updated with latest LineageOS changes.
Device specific changes can be checked [here](https://github.com/chaptsand/android_device_xiaomi_umi/releases). Note that usually only the latest version of LineageOS receives device specific updates for new features, but all versions maintained here will receive security patches as well as non-device specific fixes and improvements from LineageOS. 

Build date: \`$FORMATTED_BUILD_DATE\`
Security patch: \`$SECURITY_PATCH\`
" > /tmp/release_notes.txt  

    if [ ! -z "${RELEASE_REPO_URL}" ] && [ ! -z "${GITHUB_TOKEN}" ]; then
        optional_release_args=()
        if [ "${DRAFT_RELEASES}" = true ]; then
            optional_release_args+=("--draft")
        fi
        gh release create "lineage-umi-$(join_by '-' $BUILT_VERSIONS)-$BUILD_DATE" \
        --repo $RELEASE_REPO_URL \
        --title "LineageOS $(join_by '/' $BUILT_VERSIONS) for Mi 10" \
        --notes-file /tmp/release_notes.txt \
        "${optional_release_args[@]}" \
        /srv/zips/*
    else
        echo "RELEASE_REPO_URL or GITHUB_TOKEN env vars were not set, build will not be automatically released"
    fi
else 
    echo "No files exist in zip directly, assuming the build failed..."
fi