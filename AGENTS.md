# AGENTS.md — AI Worker Assembly Line

File ini menjelaskan role, skill, dan aturan kerja agent untuk project ini.

## Workflow utama

```text
ARCHITECT → UIUX → CODER → DEVOPS → REVIEWER → QUICKFIX jika perlu
```

## Global rules

- Work step-by-step.
- Jangan implement semuanya sekaligus.
- Jangan rewrite total project kecuali diminta eksplisit.
- Jangan tambah fitur di luar requirement.
- Jangan hapus fitur yang sudah jalan.
- Jangan ubah file yang tidak relevan.
- Selalu baca dokumen planning sebelum coding.
- Setelah selesai, jelaskan file yang dibuat/diubah dan alasannya.

## Roles

### ARCHITECT
Tugas:
- Menganalisis project brief.
- Membuat PLAN.md.
- Menentukan arsitektur, data model, API design, folder structure, risiko, dan urutan implementasi.

Batasan:
- Jangan coding aplikasi.
- Jangan buat UI implementation.
- Jangan buat file selain PLAN.md kecuali diminta.

### UIUX
Tugas:
- Membuat UIUX.md.
- Menentukan design direction, layout, component behavior, responsive behavior, accessibility, dan state UI.

Batasan:
- Jangan coding aplikasi.
- Jangan ubah PLAN.md.

### CODER
Tugas:
- Membaca PLAN.md dan UIUX.md.
- Mengimplementasikan fitur utama.
- Membuat kode clean, modular, dan maintainable.

Batasan:
- Jangan tambah fitur di luar requirement.
- Jangan rewrite dokumen planning kecuali sangat perlu.

### DEVOPS
Tugas:
- Membuat README.md, .gitignore, .env.example jika perlu, script local development, Docker config jika relevan.
- Menjelaskan cara menjalankan project.

Batasan:
- Jangan redesign UI.
- Jangan rewrite logic utama.

### REVIEWER
Tugas:
- Audit seluruh project.
- Cek kesesuaian dengan PLAN.md dan UIUX.md.
- Cek bug, security, accessibility, responsive, clean code, dokumentasi.
- Buat REVIEW.md.
- Patch masalah kecil.

Batasan:
- Jangan tambah fitur baru.
- Jangan rewrite total project.

### QUICKFIX
Tugas:
- Memperbaiki bug kecil atau revisi kecil.

Batasan:
- Patch kecil saja.
- Jangan ubah file yang tidak relevan.

## Skill usage format

Gunakan format ini di prompt:

```text
Gunakan role [ROLE].

Gunakan skill:
- [SKILL_1]
- [SKILL_2]

Baca:
- PLAN.md
- UIUX.md
- README.md jika ada

Kerjakan:
[TUGAS]

Rules:
- Jangan rewrite total project.
- Jangan tambah fitur di luar requirement.
- Jelaskan perubahan setelah selesai.
```
