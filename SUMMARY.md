# Summary: AI Worker Assembly Line + 9Router

Tujuan setup ini adalah membuat workflow pembangunan project berbasis AI worker, dengan 9Router sebagai routing layer model/provider dan Codex VSCode sebagai eksekutor kerja di repo lokal.

## Konsep inti

```text
Codex VSCode
  ↓
9Router
  ↓
Combo / Model Pool
  ↓
Role-based worker behavior
  ↓
Project files
```

## Komponen

- **9Router**: proxy/router model AI. Mengatur routing, round robin, fallback, quota tracking, usage analytics, dan provider selection.
- **Codex VSCode**: coding agent yang bekerja di repo lokal. Dipakai untuk membaca file, membuat file, edit code, dan menjalankan task.
- **Combo**: kumpulan model di 9Router. Contoh: ARCHITECT, UIUX, CODER, DEVOPS, REVIEWER.
- **Role**: instruksi perilaku agent. Contoh: “Gunakan role CODER”.
- **Skill**: SOP/kemampuan khusus yang dipanggil di prompt. Contoh: Code Reviewer, Backend Patterns, Frontend Clean Code.
- **Prompt**: perintah kerja aktual yang diberikan ke Codex.

## Worker pipeline

```text
PROJECT_BRIEF
  ↓
ARCHITECT → PLAN.md
  ↓
UIUX → UIUX.md
  ↓
CODER → source code
  ↓
DEVOPS → README, .gitignore, env, local setup
  ↓
REVIEWER → REVIEW.md + patch kecil
```

## Rekomendasi combo

### ARCHITECT
- cx/gpt-5.4
- ag/claude-sonnet-4-6

Gunakan untuk planning, arsitektur, breakdown task, risiko, API/data model.

### UIUX
- ag/claude-sonnet-4-6
- ag/gemini-pro-agent / gemini-pro-default

Gunakan untuk desain layout, component behavior, responsive, state UI, accessibility.

### CODER
- cx/gpt-5.3-codex-high
- ag/claude-sonnet-4-6
- ag/gemini-3-flash-a

Gunakan untuk implementasi kode utama.

### DEVOPS
- cx/gpt-5.3-codex-high
- ag/claude-sonnet-4-6

Gunakan untuk README, local setup, Docker/package scripts jika perlu.

### REVIEWER
- cx/gpt-5.3-codex-high-review
- cx/gpt-5.4

Gunakan untuk audit final, bug check, security, accessibility, patch kecil.

## Catatan penting

- 9Router bisa round robin model, tetapi Codex VSCode belum nyaman untuk otomatis pindah combo dari UI.
- Cara paling simple: pakai satu combo umum seperti PROJECT, lalu role ditentukan dari prompt.
- Cara paling presisi: pakai combo per role, lalu switch model via config/script.
- `ResponseAborted` dari Antigravity tidak selalu berarti gagal. Bisa saja Codex mengganti request/tool call. Tapi kalau sering stall, jangan pakai Opus sebagai worker utama.
- Context window bukan quota billing. Context adalah ruang memori kerja per sesi.
- Untuk hemat token, pisahkan sesi per fase: ARCHITECT, UIUX, CODER, DEVOPS, REVIEWER.
