FROM lineageos4microg/docker-lineage-cicd:lineage-20

# Base image default env vars
ENV DEVICE_LIST 'umi'
ENV INCLUDE_PROPRIETARY false
ENV SIGN_BUILDS true
ENV ZIP_SUBDIR false
ENV LOGS_SUBDIR false
ENV SIGNATURE_SPOOFING "restricted"
ENV DELETE_OLD_ZIPS 1
ENV DELETE_OLD_LOGS 1

## Custom env vars
ENV RELEASE_REPO_URL ""
ENV GITHUB_TOKEN ""
# Releases will be marked as drafts instead of being released and marked as latest, to avoid test builds causing issues for users
ENV DRAFT_RELEASES false
#Used to change device branch to target one with bigger partition sizes, so GApps can fit. It takes the BRANCH_NAME env var and appends "-enlarged-partitions" to it, which modifies the umi.xml file to target that branch
ENV ENLARGED_PARTITIONS false

RUN apt-get -qq update && apt-get install -y apt-utils && apt-get install -y gh

COPY manifests /srv/local_manifests
COPY build_scripts /srv/userscripts

RUN chown -R root:root /srv/userscripts && chmod +x /srv/userscripts/*.sh