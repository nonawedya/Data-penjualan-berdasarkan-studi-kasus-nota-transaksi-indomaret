# Sistem Basis Data Penjualan Retail  
## Studi Kasus Nota Transaksi Indomaret

## 📌 Deskripsi Proyek
Proyek ini merupakan hasil perancangan **Sistem Basis Data Penjualan Retail** berdasarkan studi kasus **nota transaksi Indomaret**.  
Sistem dirancang untuk mentransformasikan data statis dari struk belanja fisik menjadi **basis data relasional yang terstruktur, ternormalisasi, dan terintegrasi**.

Perancangan dilakukan dengan menerapkan konsep:
- Normalisasi data (1NF, 2NF, 3NF)
- Relasi antar tabel
- Primary Key dan Foreign Key
- Entity Relationship Diagram (ERD)
- Implementasi SQL (DDL, DML, dan Query)

Proyek ini disusun sebagai **Tugas Ujian Akhir Semester (UAS)** mata kuliah **Pemrograman Basis Data**.

---

## 🎯 Tujuan Sistem
- Menganalisis komponen data pada nota transaksi retail (Indomaret)
- Menghindari redundansi data melalui normalisasi hingga 3NF
- Menjaga integritas dan konsistensi data menggunakan relasi PK dan FK
- Merancang struktur basis data relasional yang efisien
- Menghasilkan database yang siap digunakan untuk analisis penjualan

---

## 🧩 Ruang Lingkup
- Fokus pada **perancangan basis data (Back-end)**
- Tidak mencakup pembuatan antarmuka (Front-end)
- Data yang diolah meliputi:
  - Data Kasir
  - Data Member
  - Data Barang
  - Data Transaksi
  - Detail Transaksi
  - Pembayaran (PPN, Voucher, Total Bayar)

---

## 🗄️ Struktur Database
**Nama Database:** `Penjualan_Indomaret`

### 📋 Daftar Tabel
1. `tabel_barang`
2. `tabel_kasir`
3. `tabel_member`
4. `tabel_transaksi`
5. `tabel_detail_transaksi`
6. `tabel_pembayaran`

---

## 🔑 Relasi dan Kardinalitas
- **Kasir → Transaksi** : 1 : N  
- **Member → Transaksi** : 1 : N  
- **Transaksi → Detail_Transaksi** : 1 : N  
- **Barang → Detail_Transaksi** : 1 : N  
- **Transaksi → Pembayaran** : 1 : 1  

Struktur ini memastikan:
- Tidak ada data ganda
- Setiap transaksi memiliki detail dan pembayaran yang valid
- Integritas data terjaga secara konsisten

---

## 🧠 Normalisasi Data
- **1NF** : Data atomik, tidak ada grup berulang
- **2NF** : Pemisahan data master dan transaksi
- **3NF** : Menghilangkan ketergantungan transitif  
  (PPN, Voucher, Total Bayar dipisah ke tabel Pembayaran)

---

## 🧾 Entity Relationship Diagram (ERD)
ERD dirancang menggunakan **MySQL Workbench** dan menjadi dasar implementasi fisik database.  
Tabel `transaksi` bertindak sebagai pusat relasi antar entitas.

---

## ⚙️ Implementasi SQL
### 🔹 DDL (Data Definition Language)
- `CREATE DATABASE`
- `CREATE TABLE`
- `PRIMARY KEY`
- `FOREIGN KEY`

### 🔹 DML (Data Manipulation Language)
- `INSERT INTO`
- `SELECT`
- `JOIN`

### 🔹 Query yang Diterapkan
- JOIN antar tabel
- GROUP BY & fungsi agregasi
- HAVING
- Subquery

---

## 🧪 Pengujian
Pengujian dilakukan menggunakan **MySQL Workbench** dan **phpMyAdmin**:
- Semua query berjalan tanpa error
- Relasi tabel tervalidasi
- Data konsisten sesuai ERD dan normalisasi

---

## 🚀 Saran Pengembangan
- Penambahan **Trigger** untuk update stok otomatis
- Penggunaan **Stored Procedure** dan **View**
- Implementasi **hak akses pengguna**
- Integrasi dengan aplikasi berbasis web atau desktop

---

## 👨‍🎓 Penyusun
- **Wedyawati** (240103179)  
- **Heva Maya Oktaviani** (240103162)  
- **Muhammad Anis Maksum W** (240103169)  

Program Studi Teknik Informatika  
Fakultas Ilmu Komputer  
Universitas Duta Bangsa Surakarta  
Tahun Akademik 2025/2026

---

## 📚 Referensi
Disesuaikan dengan daftar pustaka pada laporan UAS  
(Studi sistem Indomaret, ERD, Normalisasi, SQL, DBMS)

---

## 📎 Repository
🔗 https://github.com/nonawedya/Data-penjualan-berdasarkan-studi-kasus-nota-transaksi-indomaret


![My GitHub QR](https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=https://github.com/nonawedya/Data-penjualan-berdasarkan-studi-kasus-nota-transaksi-indomaret

