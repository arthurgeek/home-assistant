# My Home Assistant config

YAML packages for the automations, sensors and scripts.

## Layout

| Path | What lives there |
|---|---|
| `configuration.yaml` | Core config |
| `packages/areas/` | One file per room or outdoor area |

`automations.yaml`, `scripts.yaml` and `scenes.yaml` are the files the UI writes to; the logic is in `packages/`.

## Setup

- `secrets.yaml` is git-ignored: copy `secrets.yaml.example` and fill it in. It holds `external_url`, `internal_url`.
