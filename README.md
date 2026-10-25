# UTS Web - Data Nilai Mahasiswa

Project ini dibuat untuk menampilkan data nilai mahasiswa dengan fitur:

- CRUD data nilai mahasiswa
- Upload dan tampilan foto mahasiswa
- Pencarian data
- Pengurutan nilai akhir
- Pagination data
- Antarmuka AdminLTE

## Struktur Proyek

- `connect.php` - koneksi database dan pengecekan tabel
- `viewdata.php` - halaman utama menampilkan tabel data
- `insertnilai.php` - tambah data baru
- `updatenilai.php` - edit data
- `deletenilai.php` - hapus data
- `datatable.php` - alternatif tampilan data tabel
- `latihan.php` - logika perhitungan nilai dan predikat
- `uploads/` - folder foto yang diupload
- `nilaimahasiswa.sql` - file backup database hasil export
- `default-avatar.svg` - avatar default jika foto tidak tersedia

## Database

File database yang sudah diekspor ada di:

- [nilaimahasiswa.sql](nilaimahasiswa.sql)

### Import database

1. Buka phpMyAdmin.
2. Buat database baru dengan nama `db5a`.
3. Import file [nilaimahasiswa.sql](nilaimahasiswa.sql).
4. Pastikan folder `uploads/` memiliki akses menulis.

## Konfigurasi Server

Project ini dirancang untuk berjalan di XAMPP / Apache PHP.

### Langkah cepat

1. Letakkan folder project di direktori htdocs.
2. Jalankan Apache dan MySQL di XAMPP.
3. Akses project melalui browser:

   http://localhost/uts_web/viewdata.php

## Catatan Penting

- Nama tabel yang dipakai adalah `nilaimahasiswa`.
- Field `file_path` dipakai untuk menyimpan path foto mahasiswa.
- Jika foto belum ada, sistem otomatis menampilkan avatar default.
- Database dan project sudah dibuat agar dapat berjalan pada environment lokal.

## GitHub

Untuk publish ke GitHub, ikuti langkah berikut:

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/NAMA_USERNAME/NAMA_REPO.git
git push -u origin main
```

Pastikan repositori di GitHub dibuat dengan visibilitas Public.

## Link Repository

Silakan ganti dengan link GitHub Anda:

https://github.com/NAMA_USERNAME/NAMA_REPO

## Penjelasan Tambahan

Project ini merupakan tugas UTS berbasis PHP dan MySQL dengan tata letak AdminLTE. Fitur yang sudah diterapkan meliputi:

- read data
- upload foto
- pencarian
- sorting data
- pagination
- edit dan delete data

Jika ada kendala saat menjalankan project, pastikan:

- MySQL sudah aktif
- database `db5a` sudah dibuat
- file `uploads/` writable
- Apache berjalan normal
