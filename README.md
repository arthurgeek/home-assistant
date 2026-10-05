# My Home Assistant config

YAML packages for the automations, sensors and scripts, plus a phone-first dashboard ("Casa") in the Catppuccin palette.
The interface is in Brazilian Portuguese; everything else is in English.

## Layout

| Path | What lives there |
|---|---|
| `configuration.yaml` | Core config |
| `packages/areas/` | One file per room or outdoor area |
| `packages/core/` | Notifications and other plumbing the rest builds on |
| `packages/modes/` | House mode (day, night, away) |
| `packages/modules/` | Features that span rooms |
| `packages/routines/` | Time- and event-driven routines |
| `dashboards/` | The Casa dashboard: views, cards, pop-ups and card templates |
| `themes/` | The Catppuccin theme |

`automations.yaml`, `scripts.yaml` and `scenes.yaml` are the files the UI writes to; the logic is in `packages/`.

## Requirements

Installed from [HACS](https://hacs.xyz) on the instance, not included here.

Dashboard cards and theme:
[Bubble Card](https://github.com/Clooos/Bubble-Card),
[button-card](https://github.com/custom-cards/button-card),
[layout-card](https://github.com/thomasloven/lovelace-layout-card),
[card-mod](https://github.com/thomasloven/lovelace-card-mod),
[Sonos Card](https://github.com/punxaphil/custom-sonos-card),
[Mini Media Player](https://github.com/kalkih/mini-media-player),
[mini-graph-card](https://github.com/kalkih/mini-graph-card),
[Weather Forecast Card](https://github.com/troinine/ha-weather-forecast-card),
[Catppuccin theme](https://github.com/catppuccin/home-assistant).

Integrations:
[SmartThings Extra](https://github.com/mik-laj/ha_smartthing_extra),
[Microsoft Edge TTS](https://github.com/hasscc/hass-edge-tts).

## Setup

- `secrets.yaml` is git-ignored: copy `secrets.yaml.example` and fill it in. It holds `external_url`, `internal_url`.
