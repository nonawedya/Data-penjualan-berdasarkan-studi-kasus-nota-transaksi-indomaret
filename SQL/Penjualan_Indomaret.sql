-- Membuat Database
CREATE DATABASE Penjualan_Indomaret;
USE Penjualan_Indomaret;

-- Membuat Tabel Kasir
CREATE TABLE Tabel_Kasir (
    id_kasir VARCHAR(10) PRIMARY KEY,
    nama_kasir VARCHAR(50) NOT NULL
);

-- Membuat Tabel Member
CREATE TABLE Tabel_Member (
    id_member VARCHAR(15) PRIMARY KEY,
    nama_member VARCHAR(50) NOT NULL
);

-- Membuat Tabel Barang
CREATE TABLE Tabel_Barang (
    id_barang VARCHAR(10) PRIMARY KEY,
    nama_barang VARCHAR(50) NOT NULL,
    harga_satuan DECIMAL(15, 2) NOT NULL
);

-- Membuat Tabel Transaksi (Header)
CREATE TABLE Tabel_Transaksi (
    id_transaksi VARCHAR(20) PRIMARY KEY,
    tanggal DATETIME NOT NULL,
    id_kasir VARCHAR(10),
    id_member VARCHAR(15),
    FOREIGN KEY (id_kasir) REFERENCES Tabel_Kasir(id_kasir),
    FOREIGN KEY (id_member) REFERENCES Tabel_Member(id_member)
);

-- Membuat Tabel Detail_Transaksi
CREATE TABLE Tabel_Detail_Transaksi (
    id_detail INT(11) AUTO_INCREMENT PRIMARY KEY,
    id_transaksi VARCHAR(20),
    id_barang VARCHAR(10),
    qty INT(11) NOT NULL,
    subtotal DECIMAL(15, 2) NOT NULL,
    FOREIGN KEY (id_transaksi) REFERENCES Tabel_Transaksi(id_transaksi),
    FOREIGN KEY (id_barang) REFERENCES Tabel_Barang(id_barang)
);

-- Membuat Tabel Pembayaran (Relasi 1:1 sesuai 3NF)
CREATE TABLE Tabel_Pembayaran (
    id_pembayaran VARCHAR(10) PRIMARY KEY,
    id_transaksi VARCHAR(20) UNIQUE,
    voucher DECIMAL(15, 2),
    ppn DECIMAL(15, 2),
    total_bayar DECIMAL(15, 2),
    FOREIGN KEY (id_transaksi) REFERENCES Tabel_Transaksi(id_transaksi)
);

-- Memulai Transaksi
START TRANSACTION;

-- Menambah Data Master
INSERT INTO Tabel_Kasir VALUES ('K01', 'PUGUH');
INSERT INTO Tabel_Member VALUES ('...3207', 'Wedya');
INSERT INTO Tabel_Barang VALUES ('B01', 'STARBUCKS LATTE 220', 15900);
INSERT INTO Tabel_Barang VALUES ('B02', 'AQUA AIR MINERAL 600', 3800);
INSERT INTO Tabel_Barang VALUES ('B03', 'SR/RT SBK DUO COK 72', 8000);

-- Menambah Data Transaksi
INSERT INTO Tabel_Transaksi VALUES ('TON8-36330', '2026-01-04 04:12:00', 'K01', '...3207');

-- Menambah Rincian Barang (Detail)
INSERT INTO Tabel_Detail_Transaksi (id_transaksi, id_barang, qty, subtotal) VALUES 
('TON8-36330', 'B01', 1, 15900),
('TON8-36330', 'B02', 2, 7600),
('TON8-36330', 'B03', 1, 8000);

-- Menambah Data Pembayaran Akhir
INSERT INTO Tabel_Pembayaran VALUES ('P01', 'TON8-36330', 1700, 3122, 29800);

-- Menyimpan Perubahan Secara Permanen
COMMIT;

SELECT 
    t.id_transaksi, 
    t.tanggal, 
    k.nama_kasir, 
    m.nama_member, 
    b.nama_barang, 
    dt.qty, 
    b.harga_satuan, 
    dt.subtotal,
    p.voucher,
    p.ppn,
    p.total_bayar
FROM Tabel_Transaksi t
JOIN Tabel_Kasir k ON t.id_kasir = k.id_kasir
JOIN Tabel_Member m ON t.id_member = m.id_member
JOIN Tabel_Detail_Transaksi dt ON t.id_transaksi = dt.id_transaksi
JOIN Tabel_Barang b ON dt.id_barang = b.id_barang
JOIN Tabel_Pembayaran p ON t.id_transaksi = p.id_transaksi;

SELECT 
    b.id_barang, 
    b.nama_barang, 
    SUM(dt.qty) AS total_terjual, 
    SUM(dt.subtotal) AS total_pendapatan
FROM Tabel_Barang b
JOIN Tabel_Detail_Transaksi dt ON b.id_barang = dt.id_barang
GROUP BY b.id_barang, b.nama_barang
HAVING SUM(dt.qty) >= 1
ORDER BY total_terjual DESC;

-- Query Subquery
-- Menampilkan ID dan Nama Member yang belanjanya di atas rata-rata total bayar
SELECT 
    id_member, 
    nama_member 
FROM Tabel_Member 
WHERE id_member IN (
    SELECT t.id_member 
    FROM Tabel_Transaksi t
    JOIN Tabel_Pembayaran p ON t.id_transaksi = p.id_transaksi
    WHERE p.total_bayar > 20000
);
