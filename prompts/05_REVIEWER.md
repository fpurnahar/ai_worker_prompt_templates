# 05 — REVIEWER PROMPT

```text
Gunakan role REVIEWER.

Gunakan skill:
- Code Reviewer
- Security Review
- Accessibility Audit

Baca:
- PLAN.md
- UIUX.md
- README.md jika ada
- seluruh source code project
- AGENTS.md

Audit seluruh project ini.

Cek hal berikut:
1. Apakah implementasi sesuai PLAN.md
2. Apakah UI sesuai UIUX.md
3. Bug logic
4. Error handling
5. Validasi input
6. Security issue
7. Accessibility
8. Responsive design
9. Clean code
10. Struktur folder
11. Naming convention
12. File missing
13. Dependency yang tidak perlu
14. Dokumentasi README
15. Local run instruction
16. Potensi issue saat deployment

Kalau ada masalah kecil:
- Perbaiki langsung dengan patch kecil.

Kalau ada masalah besar:
- Jangan rewrite total project.
- Catat masalahnya di REVIEW.md.
- Berikan rekomendasi perbaikan bertahap.

Buat file REVIEW.md yang berisi:
1. Ringkasan hasil audit
2. Masalah yang ditemukan
3. Perbaikan yang dilakukan
4. Hal yang belum diperbaiki
5. Saran pengembangan berikutnya

Rules:
- Jangan tambah fitur baru.
- Jangan rewrite total project.
- Jangan ubah desain besar-besaran.
- Fokus sebagai reviewer final.
```
