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
ENV WITH_GMS true

# Custom env vars
ENV RELEASE_REPO_URL "github.com/nanoandrew4/lineage-umi"
ENV GITHUB_TOKEN ""
ENV DRAFT_RELEASES false

COPY manifests /srv/local_manifests
COPY build_scripts /srv/userscripts

RUN chown -R root:root /srv/userscripts
RUN apt-get -qq update && apt-get install -y gh