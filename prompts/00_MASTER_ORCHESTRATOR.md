# 00 — MASTER ORCHESTRATOR PROMPT

Gunakan prompt ini kalau mau satu prompt panjang yang mengarahkan workflow dari awal.

```text
Gunakan workflow AI Project Assembly Line.

Baca PROJECT_BRIEF.md dan AGENTS.md.

Jalankan project secara bertahap dengan urutan:
1. ARCHITECT membuat PLAN.md
2. UIUX membuat UIUX.md
3. CODER mengimplementasikan aplikasi
4. DEVOPS menambahkan dokumentasi dan local setup
5. REVIEWER melakukan audit final dan membuat REVIEW.md

PENTING:
- Jangan loncat fase.
- Setelah menyelesaikan satu fase, berhenti dan laporkan hasilnya.
- Jangan lanjut ke fase berikutnya sebelum saya menyetujui.
- Setiap role hanya boleh mengerjakan tanggung jawabnya.
- Ikuti AGENTS.md.

Mulai sekarang dengan role ARCHITECT.

Tugas pertama:
Baca PROJECT_BRIEF.md lalu buat PLAN.md.
Jangan buat file lain.
Jangan coding dulu.
```
