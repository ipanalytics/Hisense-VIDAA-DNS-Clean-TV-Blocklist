# Hisense / VIDAA DNS Clean TV Blocklist

Private DNS blocklist for a Hisense Smart TV running VIDAA OS in Europe / Germany.

This list is made for a TV used mostly as a clean Smart TV screen for apps like YouTube and Netflix, without German live TV, HbbTV, Red Button, VIDAA Free channels, recommendations, promo tiles, banners, and other home-screen clutter.

## Tested Environment

- Region: Europe / Germany
- TV brand: Hisense
- TV OS: VIDAA
- DNS blocker: AdGuard Home
- Device DNS: TV points to a local Raspberry Pi running AdGuard Home
- Main goal: clean VIDAA home screen and reduce telemetry/recommendation traffic

## What This Blocks

This list targets Hisense / VIDAA domains related to:

- VIDAA home-screen recommendations
- VIDAA Free / FAST channel tiles
- promo and e-commerce tiles
- UI recommendation layouts
- telemetry / journal endpoints
- A/B testing
- voice / IoT telemetry
- device status reporting
- image/banner CDN used by VIDAA recommendations
- Hisense / VIDAA launcher and message endpoints

The result on my TV:

- VIDAA home screen became much cleaner
- recommendation rows disappeared
- empty recommendation boxes disappeared
- Free TV / channel promo tiles disappeared
- YouTube still works
- Netflix still works

## Domain Notes / Assumptions

These notes are based on domain names, observed TV behavior, and AdGuard Home query logs. They are assumptions, not official VIDAA/Hisense documentation.

| Domain | Likely purpose |
|---|---|
| `api-gps-em.hismarttv.com` | Hisense regional API endpoint, likely device/location/service discovery for EMEA. |
| `api-gps-na.hismarttv.com` | Hisense regional API endpoint, likely device/location/service discovery for North America. |
| `api-launcher-em.hismarttv.com` | Launcher/home-screen API for EMEA devices. |
| `api-launcher-na.hismarttv.com` | Launcher/home-screen API for North America devices. |
| `api.eu.hismarttv.com` | General Hisense/VIDAA API endpoint for Europe. |
| `api.euro.hismarttv.com` | General Hisense/VIDAA API endpoint for Europe. |
| `api.us.hismarttv.com` | General Hisense/VIDAA API endpoint for US/NA region. |
| `auth-em.hismarttv.com` | Authentication endpoint for EMEA devices. |
| `auth-launcher-em.hismarttv.com` | Launcher authentication endpoint for EMEA devices. |
| `auth-launcher-na.hismarttv.com` | Launcher authentication endpoint for North America devices. |
| `auth-na.hismarttv.com` | Authentication endpoint for North America devices. |
| `msg-em.hismarttv.com` | Messaging/notification endpoint for EMEA devices. |
| `msg-na.hismarttv.com` | Messaging/notification endpoint for North America devices. |
| `unified-ter-na.hismarttv.com` | Unified telemetry/reporting endpoint for North America devices. |
| `abtest-tv.vidaahub.com` | A/B testing and feature experiment configuration. |
| `bo.ads-privacy.vidaahub.com` | Ads/privacy backend, likely consent or ad settings related. |
| `detail-ui-eu.vidaahub.com` | App/detail page UI backend for VIDAA Hub in Europe. |
| `device-ecom.vidaahub.com` | E-commerce/promotional device backend. |
| `dvcstatus-dataretrv.vidaahub.com` | Device status/data retrieval endpoint. |
| `exc-jrnl-eu.vidaahub.com` | Journal/logging endpoint for Europe. |
| `geo-bas-eu.vidaahub.com` | Geo/location-based service or regional configuration endpoint. |
| `home-ui-eu.vidaahub.com` | VIDAA Home UI backend for Europe. |
| `hub-msg.vidaahub.com` | VIDAA Hub messaging/notification endpoint. |
| `img.vidaahub.com` | Image CDN for VIDAA Home tiles, banners, icons, and recommendations. |
| `iot-voice-eu.vidaahub.com` | Voice/IoT feature endpoint for Europe. |
| `layout-ui-eu.vidaahub.com` | Home-screen layout/configuration UI endpoint for Europe. |
| `params-msg-eu.vidaahub.com` | Messaging/configuration parameters endpoint for Europe. |
| `policy-jrnl-eu.vidaahub.com` | Policy/journal/logging endpoint for Europe. |
| `recommend-ui-eu.vidaahub.com` | Recommendation UI backend for Europe. |
| `sttc-az-recommend-ui.vidaahub.com` | Recommendation UI/CDN backend, likely Azure-hosted. |
| `ter-jrnl-eu.vidaahub.com` | Telemetry/journal/reporting endpoint for Europe. |
| `tvmodules-vidaa.vidaahub.com` | VIDAA TV modules/app launcher backend. May affect app store or sideload flows. |
| `file-ul.vidaahub.com` | File upload endpoint, likely diagnostics/log upload. |
| `member-ui-eu.vidaahub.com` | Member/account UI backend for Europe. |

## What This Is Not

This is not a general adblock list.

It is not intended to block YouTube or Netflix in-stream video ads. DNS blocking cannot reliably remove those without also risking playback breakage.

It is not meant for every Hisense / VIDAA user. If you use VIDAA account features, app store, sideloading, HbbTV, Red Button, German live TV portals, or VIDAA Free channels, this list may break things you use.

## Important Warning

This is an aggressive TV-only list.

It may break:

- VIDAA app store
- VIDAA account login
- app installation through VIDAA
- app details pages
- VIDAA Free channels
- HbbTV / Red Button
- home-screen tiles
- recommendation images
- some regional TV features

Use at your own risk. Keep a backup of your AdGuard Home config and your previous rules.

Notes
This list was created by watching AdGuard Home Query Log from a Hisense / VIDAA TV after boot, cache cleanup, and VIDAA Home navigation.

It is intentionally aggressive for a setup where the TV is used mainly for selected apps, not for VIDAA Free, HbbTV, Red Button, or the native VIDAA content portal.


