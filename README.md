# AI Worker Prompt Template

Template ini dipakai untuk workflow:

```text
ARCHITECT → UIUX → CODER → DEVOPS → REVIEWER
```

## Cara pakai simple

1. Copy semua file ini ke root project baru.
2. Isi `PROJECT_BRIEF.md`.
3. Pakai prompt `prompts/00_MASTER_ORCHESTRATOR.md` di Codex.
4. Jalankan fase satu per satu.

## Cara pakai dengan combo per role

Jika combo custom di Codex UI tidak muncul, pakai script:

```bash
npm run role:architect
npm run role:uiux
npm run role:coder
npm run role:devops
npm run role:reviewer
```

Setiap ganti role, reload Codex panel/VSCode jika diperlukan.

## File penting

- `PROJECT_BRIEF.md`: input utama project.
- `AGENTS.md`: aturan role dan skill.
- `prompts/`: prompt per worker.
- `CHECKLIST.md`: checklist validasi.
- `docs/9ROUTER_COMBOS.md`: rekomendasi combo 9Router.
- `SUMMARY.md`: rangkuman konsep.
