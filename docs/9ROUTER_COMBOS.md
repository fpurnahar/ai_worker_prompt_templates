# 9Router Combo Recommendation

## Mode simple

Pakai satu combo umum:

```text
PROJECT
- cx/gpt-5.3-codex-high
- ag/claude-sonnet-4-6
- ag/gemini-3-flash-a
```

Lalu role ditentukan dari prompt.

## Mode presisi

Buat combo per role:

```text
ARCHITECT
- cx/gpt-5.4
- ag/claude-sonnet-4-6

UIUX
- ag/claude-sonnet-4-6
- ag/gemini-pro-agent

CODER
- cx/gpt-5.3-codex-high
- ag/claude-sonnet-4-6
- ag/gemini-3-flash-a

DEVOPS
- cx/gpt-5.3-codex-high
- ag/claude-sonnet-4-6

REVIEWER
- cx/gpt-5.3-codex-high-review
- cx/gpt-5.4

QUICKFIX
- cx/gpt-5.3-codex-spark
- ag/gemini-3-flash-a
- cx/gpt-5.4-mini
```

## Catatan

- Hindari Opus thinking sebagai worker round robin utama kalau sering `ResponseAborted` / `stream stall timeout` di Codex VSCode.
- Pakai Opus untuk prompt manual/short planning/review berat saja.
- Untuk coding harian, Codex High + Sonnet + Gemini Flash lebih stabil.
