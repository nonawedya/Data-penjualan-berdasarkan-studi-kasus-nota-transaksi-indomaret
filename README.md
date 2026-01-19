# 🏪 Sistem Basis Data Penjualan Retail Indomaret

Proyek ini merupakan perancangan **sistem basis data penjualan retail** berdasarkan studi kasus **nota transaksi Indomaret**.  
Sistem dirancang menggunakan pendekatan **basis data relasional**, melalui tahapan **normalisasi (1NF–3NF)** dan divisualisasikan menggunakan **Entity Relationship Diagram (ERD)**.

Proyek ini disusun untuk memenuhi **Ujian Akhir Semester (UAS)** mata kuliah **Pemrograman Basis Data**.

---

## 📌 Studi Kasus
Studi kasus diambil dari **nota transaksi Indomaret**, yang memuat informasi:
- Data toko
- Data kasir
- Data member
- Data barang
- Detail transaksi pembelian
- Pajak (PPN)
- Voucher
- Total pembayaran

Data pada struk dianalisis dan ditransformasikan menjadi **skema basis data terstruktur dan terintegrasi**.

---

## 🎯 Tujuan Proyek
- Menganalisis data mentah dari nota transaksi retail
- Menerapkan **normalisasi basis data (1NF, 2NF, 3NF)**
- Menghindari redundansi dan menjaga integritas data
- Menentukan **relasi dan kardinalitas antar entitas**
- Merancang **ERD final**
- Mengimplementasikan skema database ke **MySQL**

---

## 🛠️ Teknologi yang Digunakan
- **DBMS** : MySQL  
- **Tools** : MySQL Workbench, phpMyAdmin  
- **Bahasa Query** : SQL (DDL, DML, TCL)  
- **Metodologi** : Normalisasi & ERD  

---

## 🔄 Relasi Antar Tabel
- Kasir → Transaksi (**1 : N**)
- Member → Transaksi (**1 : N**)
- Transaksi → Detail_Transaksi (**1 : N**)
- Barang → Detail_Transaksi (**1 : N**)
- Transaksi → Pembayaran (**1 : 1**)

---

## 🔍 Contoh Query
- JOIN antar tabel transaksi
- GROUP BY dan fungsi agregasi
- HAVING
- Subquery untuk analisis lanjutan

---

## 📊 Hasil
- Database berhasil dinormalisasi hingga **3NF**
- Redundansi data berhasil diminimalkan
- Relasi antar tabel konsisten
- Query berjalan dengan baik di MySQL

---

## 👨‍🎓 Penyusun
- **Wedyawati** (240103179)  
- **Heva Maya Oktaviani** (240103162)  
- **Muhammad Anis Maksum W** (240103169)  

Program Studi **Teknik Informatika**  
Fakultas Ilmu Komputer  
**Universitas Duta Bangsa Surakarta**  
Tahun Akademik **2025/2026**

---

## 📄 Lisensi
Proyek ini dibuat untuk **keperluan akademik dan pembelajaran**.  
Tidak digunakan untuk kepentingan komersial.

