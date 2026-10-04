# My Home Assistant config

YAML packages for the automations, sensors and scripts.

## Layout

| Path | What lives there |
|---|---|
| `configuration.yaml` | Core config |
| `packages/areas/` | One file per room or outdoor area |
| `packages/core/` | Notifications and other plumbing the rest builds on |
| `packages/modules/` | Features that span rooms |
| `packages/routines/` | Time- and event-driven routines |

`automations.yaml`, `scripts.yaml` and `scenes.yaml` are the files the UI writes to; the logic is in `packages/`.

## Requirements

Installed from [HACS](https://hacs.xyz) on the instance, not included here.

Integrations:
[SmartThings Extra](https://github.com/mik-laj/ha_smartthing_extra),
[Microsoft Edge TTS](https://github.com/hasscc/hass-edge-tts).

## Setup

- `secrets.yaml` is git-ignored: copy `secrets.yaml.example` and fill it in. It holds `external_url`, `internal_url`.
