# lineage-umi

## Background
I recently got a Xiaomi Mi 10 and after being a LineageOS user on an officially supported device before, I was sad to see there is no officially supported version for the Mi 10. After looking around and trying to support it myself, I found [chaptsand](https://github.com/chaptsand/android_device_xiaomi_umi/) is actively working on supporting the device unofficially and publishes a stable version of vanilla LOS or GApps LOS every two months or so. But I wanted a version with MicroG instead of GApps, and to bring the OTA updates that are available in the official version so that anyone who uses this LOS version doesn't have to check and manually install updates periodically. Thanks to the great work of [lineageos4microg](https://github.com/lineageos4microg/docker-lineage-cicd/) and [julianxhokaxhiu](https://github.com/julianxhokaxhiu/LineageOTA), I was able to set all this up and automate it in the cloud.

## Objective
This repository will host versions of LOS with MicroG for the Mi 10. I will attempt to build and release every two weeks (following the lineageos4microg release frequency).

|LOS version|Supported|
|--|--|
|19.1|yes|
|20|yes|

## Installation
Go to the [releases](https://github.com/nanoandrew4/lineage-umi/releases) tab, download the latest zip file and recovery, and flash them as you would with a [similar](https://wiki.lineageos.org/devices/monet/install) Xiaomi phone. When the next build becomes available, you should be able to download and install it directly from the LOS Updater app, which will notify you when it finds a newer version. Since the hosting setup I use has a cache, it may take up to 24 hours for your Updater app to find the new version after it has been released in this repository.
