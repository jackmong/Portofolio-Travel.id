-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2024 pada 09.57
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukawarung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Novanto Putra', 'admin', 'fcea920f7412b5da7be0cf42b8c93759', '081774145283', 'Istanaunggas90@gmail.com', 'Jln Wibawa Mukti II Kelurahan Jatisari Kecamatan Jatiasi Kota Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Kandang Type Pelung'),
(2, 'Kandang Type Nagadori'),
(3, 'Kandang Type Bekisar'),
(4, 'Kandang Type Lovebird'),
(5, 'Kandang Type Beo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(1, 3, 'Kandang Kotak', 2500000, '<p>ual kandang dari semen bentuk kotak&nbsp;</p>\r\n\r\n<p>Ukuran: tinggi 190 cm , lebar 90 cm&nbsp;<br />\r\nWarna: hijau, merah, hitam, hitam emas&nbsp;</p>\r\n\r\n<p>Barang yang kami jual dijamin original, berkualitas, terjangkau dan awet. Toko kami sendiri juga terjamin dan terpercaya, anti-penipuan. Jika takut penipuan pembelian kandang bisa dilakukan dengan COD untuk di daerah JABODETABEK. Pembelian hanya dilakukan di daerah JABODETABEK, untuk daerah di luar JABODETABEK dikenakan biaya tambahan pengiriman. Free ongkir untuk wilayah JABODETABEK Chat ke penjual untuk mengkonfirmasi stok yang di inginkan . bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi kandang Atau bisa langsung ke workshop kita</p>\r\n', 'produk1723954160.jpg', 1, '2024-08-18 04:09:20'),
(2, 3, 'Kandang Bulet', 2500000, '<p>Jual kandang dari semen bentuk bulet<br />\r\nUkuran; diameter:105 cm tinggi:195 cm&nbsp;<br />\r\nWarna; hijau,merah,hitam<br />\r\nFree ongkir untuk wilayah Jabodetabek<br />\r\nPembayaran : tunai/transfer<br />\r\nUntuk Jabodetabek bisa bayar di tempat (COD)<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan / bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi produk<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954294.jpg', 0, '2024-08-18 04:11:34'),
(3, 3, 'Kandang Segienam', 2500000, '<p>Jual kandang dari semen bentuk segi enam<br />\r\nUkuran; diameter:90 cm tinggi:190 cm&nbsp;<br />\r\nWarna; hijau,merah,hitam,hitam emas<br />\r\nFree ongkir untuk wilayah Jabodetabek<br />\r\nUntuk Jabodetabek bisa bayar di tempat (COD)<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan / bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi produk<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954402.jpg', 1, '2024-08-18 04:13:22'),
(4, 4, 'Kandang Kotak', 2350000, '<p>Jual kandang dari semen bentuk kotak<br />\r\nUkuran: tinggi 189 cm , lebar 60 cm<br />\r\nWarna: hijau, merah, hitam, hitam emas<br />\r\nBarang yang kami jual dijamin original, berkualitas, terjangkau dan awet.<br />\r\nToko kami sendiri juga terjamin dan terpercaya, anti-penipuan.<br />\r\nJika takut penipuan pembelian kandang bisa dilakukan dengan COD untuk di daerah JABODETABEK.<br />\r\nPembelian hanya dilakukan di daerah JABODETABEK, untuk daerah di luar JABODETABEK dikenakan biaya tambahan pengiriman.<br />\r\nFree ongkir untuk wilayah JABODETABEK<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan. bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi kandang<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954509.jpg', 0, '2024-08-18 04:15:09'),
(5, 4, 'Kandang Kotak', 2350000, '<p>Jual kandang dari semen bentuk kotak<br />\r\nUkuran: tinggi 180&nbsp;cm , lebar 60 cm<br />\r\nWarna: hijau, merah, hitam, hitam emas<br />\r\nBarang yang kami jual dijamin original, berkualitas, terjangkau dan awet.<br />\r\nToko kami sendiri juga terjamin dan terpercaya, anti-penipuan.<br />\r\nJika takut penipuan pembelian kandang bisa dilakukan dengan COD untuk di daerah JABODETABEK.<br />\r\nPembelian hanya dilakukan di daerah JABODETABEK, untuk daerah di luar JABODETABEK dikenakan biaya tambahan pengiriman.<br />\r\nFree ongkir untuk wilayah JABODETABEK<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan. bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi kandang<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954549.jpg', 1, '2024-08-18 04:15:49'),
(6, 5, 'Kandang Segienam', 2400000, '<p>Jual kandang dari semen bentuk segi enam<br />\r\nUkuran; diameter: 70 cm tinggi: 180 cm&nbsp;<br />\r\nWarna; hijau,merah,hitam,hitam emas<br />\r\nBarang yang kami jual dijamin original, berkualitas, terjangkau dan awet.<br />\r\nToko kami sendiri juga terjamin dan terpercaya, anti-penipuan.<br />\r\nJika takut penipuan pembelian kandang bisa dilakukan dengan COD untuk di daerah JABODETABEK.<br />\r\nPembelian hanya dilakukan di daerah JABODETABEK, untuk daerah di luar JABODETABEK dikenakan biaya tambahan pengiriman.<br />\r\nFree ongkir untuk wilayah Jabodetabek<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan . bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi kandang<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954695.jpg', 1, '2024-08-18 04:18:15'),
(7, 5, 'Kandang Bulet', 2400000, '<p>Jual kandang dari semen bentuk bulat<br />\r\nUkuran; diameter:80 cm tinggi:180 cm&nbsp;<br />\r\nWarna; hijau,merah,hitam , hitam emas<br />\r\nBarang yang kami jual dijamin original, berkualitas, terjangkau dan awet.<br />\r\nToko kami sendiri juga terjamin dan terpercaya, anti-penipuan.<br />\r\nJika takut penipuan pembelian kandang bisa dilakukan dengan COD untuk di daerah JABODETABEK.<br />\r\nPembelian hanya dilakukan di daerah JABODETABEK, untuk daerah di luar JABODETABEK dikenakan biaya tambahan pengiriman.<br />\r\nFree ongkir untuk wilayah JABODETABEK<br />\r\nChat ke penjual untuk mengkonfirmasi stok yang di inginkan . bisa chat juga untuk sekedar tanya-tanya tentang spesifikasi kandang<br />\r\nAtau bisa langsung ke workshop kita</p>\r\n', 'produk1723954790.jpg', 1, '2024-08-18 04:19:50');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
