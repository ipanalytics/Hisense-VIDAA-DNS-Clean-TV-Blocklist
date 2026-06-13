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

ota-tv.vidaahub.com
upgrade-plc-tv-eu.vidaahub.com
domain.vidaahub.com
