# UTS Praktikum Web

Aplikasi web untuk mengelola data nilai mahasiswa berbasis PHP, MySQL, dan AdminLTE.

Repository ini berisi sistem CRUD sederhana untuk data nilai mahasiswa dengan fitur:

- Tambah data nilai mahasiswa
- Edit data mahasiswa
- Hapus data mahasiswa
- Upload dan menampilkan foto mahasiswa
- Pencarian data
- Pengurutan nilai akhir
- Pagination data
- Tampilan UI menggunakan AdminLTE

## Repository GitHub

https://github.com/adityyra/utspratikum_web

## Teknologi yang Digunakan

- PHP
- MySQL / MariaDB
- Apache (XAMPP)
- Bootstrap / AdminLTE
- JavaScript

## Struktur Project

- `connect.php` - koneksi database dan pengecekan tabel
- `viewdata.php` - halaman utama data mahasiswa
- `insertnilai.php` - proses tambah data
- `updatenilai.php` - proses edit data
- `deletenilai.php` - proses hapus data
- `latihan.php` - logika perhitungan nilai dan predikat
- `datatable.php` - halaman data tabel alternatif
- `uploads/` - folder penyimpanan foto upload
- `default-avatar.svg` - avatar default bila foto tidak tersedia
- `nilaimahasiswa.sql` - file export database
- `README.md` - dokumentasi project

## Database

Database yang digunakan adalah `db5a` dengan tabel `nilaimahasiswa`.

### Field utama

- `NIM`
- `NamaMahasiswa`
- `NilaiAkhir`
- `NilaiHuruf`
- `predikat`
- `create_date`
- `modified_date`
- `created_date`
- `file_path`

## Import Database

1. Buka phpMyAdmin.
2. Buat database baru dengan nama `db5a`.
3. Import file `nilaimahasiswa.sql`.
4. Pastikan folder `uploads/` dapat ditulis.

## Cara Menjalankan

1. Pastikan XAMPP sudah aktif.
2. Jalankan Apache dan MySQL.
3. Letakkan project di folder `htdocs`.
4. Akses URL berikut di browser:

```text
http://localhost/uts_web/viewdata.php
```

## Catatan Penting

- Jika tabel belum ada, sistem akan membuatnya secara otomatis pada file `connect.php`.
- Field `file_path` digunakan untuk menyimpan lokasi foto mahasiswa.
- Jika foto tidak tersedia, sistem akan menampilkan avatar default.
- Untuk menjalankan project di lingkungan lain, pastikan konfigurasi database sesuai.

## Fitur yang Sudah Ada

- CRUD data nilai mahasiswa
- Upload foto mahasiswa
- Search / pencarian data
- Sort / pengurutan nilai
- Pagination
- Tampilan AdminLTE

## Lisensi

Project ini dibuat untuk kebutuhan tugas UTS praktikum web dan dipublikasikan untuk keperluan pembelajaran.
