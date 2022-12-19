# lineage-umi

## Background
I recently got a Xiaomi Mi 10 and after being a LineageOS user on an officially supported device before, I was sad to see there is no officially supported version for the Mi 10. After looking around and trying to support it myself, I found [chaptsand](https://github.com/chaptsand/android_device_xiaomi_umi/) is actively working on supporting the device unofficially and publishes a stable version of vanilla LOS or GApps LOS every two months or so. But I wanted a version with MicroG instead of GApps, and to bring the OTA updates that are available in the official version so that anyone who uses my LOS builds doesn't have to check and manually install updates periodically. Thanks to the great work of [lineageos4microg](https://github.com/lineageos4microg/docker-lineage-cicd/) and [julianxhokaxhiu](https://github.com/julianxhokaxhiu/LineageOTA), I was able to set all this up and automate it in the cloud.

## Objective
This repository will point to repos that host versions of LOS for the Mi 10. I will attempt to build and release every two weeks (following the lineageos4microg release frequency), but make no promises, as sometimes the builds break and take some time to fix due to upstream changes. I have a [Telegram group](https://t.me/+JD3_waVOj_NhMTNk) which you can join if you want to stay up to date on when new releases are ready, if you want to make suggestions or simply ask questions. There is also the related [XDA thread](https://forum.xda-developers.com/t/rom-umi-unofficial-lineage-os-19-1-20-vanilla-microg-gapps.4526521/) where this project was first announced.

## Versions/Flavors
Currently supported versions are 19.1 and 20.0, and older versions will be phased out when downloads for newer builds stay at 0 for some time.

If you're looking for my vanilla LineageOS builds with OTA updates, go [here](https://github.com/nanoandrew4/lineage-umi-vanilla). You can flash GApps after flashing a vanilla build, instructions and GApps providers are also linked as part of the README for the vanilla repo linked previously.

If you're looking for my microG LineageOS builds with OTA updates, go [here](https://github.com/nanoandrew4/lineage-umi-microg).
