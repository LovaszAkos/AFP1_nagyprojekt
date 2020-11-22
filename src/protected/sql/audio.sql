-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2020 at 03:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--
CREATE DATABASE if NOT exists audio;
use audio;

CREATE TABLE `cart` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `address` varchar(250) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `city` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `complete` tinyint(1) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_brand` varchar(250) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `category` varchar(64) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `in_stock` int(4) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `shortdesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_brand`, `product_name`, `category`, `price`, `in_stock`, `picture`, `description`, `shortdesc`) VALUES
(24, 'Sennheiser', 'HD600', 'Fejhallgató', 93000, 4, 'thumb_d_gallery_base_cc4e4edc.jpg', 'dfgdfgfdg', 'dfgdfg'),
(25, 'AKG', 'k712', 'Fejhallgató', 83000, 6, 'K712Pro-large.jpg', 'A  K712PRO  az új csúcsreferencia az AKG fejhallgatók sorában, így a K702 a két új fejhallgató közé pozícionálható. A kifinomult nyitott kialakítás, a 3dB-el megnövelt mélyfrekvenciás teljesítmény, a forradalmi lapos hangtekercs, és a lecsatolható professzionális kábel fáradtságtól mentes munkaórákat biztosítanak a keverés során. A K712PRO eredeti bőr fejpánttal rendelkezik mely rendkívül kényelmes. A gondosan kiválasztott kapszulák kiegyensúlyozott és pontos hangképet biztosítanak. A K712PRO csomagolása tartalmaz egy spirál kábelt és egy prémium minőségű hordtáskát is.  Élvezetet nyújt és évtizedekig tartó AKG minőséget biztosít minden felhasználó számára.', 'Félig nyitott kialakítású referencia fejhallgató'),
(26, 'Fiio', 'K5', 'Erősítő', 63000, 3, 'fiio-k5_1.jpg', 'A FiiO K5Pro egy nagy teljesítményű, asztali fejhallgató erősítő digitális-analóg átalakítóval. A FiiO K5Pro használható analóg erősítőként, ehhez csatlakoztasd a hangforrást a hátlapon található, sztereó RCA vonali bemenetek segítségével az erősítőhöz!\r\nD/A átakítás: 768kHz/32bit + DSD64/128/256/512\r\nTeljesítmény: Fejhallgató kimenet : 1.65 W (16Ω) 1.5 W (32Ω )\r\nFrekvencia átvitel: 20 Hz - 80 kHz\r\nTorzítás: (THD+N) ＜0.004% (1 kHz)\r\nJel/zaj viszony (SNR): ≥115 dB\r\nFejhallgató impedancia: 16 -300 Ω\r\nMéret: 120.5mm × 130mm × 55mm\r\nTömeg: 436 gramm\r\nCsatlakozók:Vonali ki-/bemenet (RCA), optikai és koaxiális bemenet, USB audio bemenet, 6.35 fejhallgató kimenet (3.5 mm-es adapter mellékelve)', 'Professzionális asztali fejhallgató erősítő D/A konverterrel'),
(27, 'Beyerdynamic ', 'DT 990', 'Fejhallgató', 49900, 4, '49122516.beyerdynamic-dt-990-pro.jpg', 'Stúdióba a legjobb választás lehet a DT990 PRO. Részletgazdag frekvencia átvitele mellett kiváló hangminőséggel és nagy hangnyomással rendelkezik.', 'Nyitott, dinamikus fejhallgató'),
(28, 'Grado Labs', 'SR325e Prestige Series', 'Fejhallgató', 144325, 2, 'thumb_d_gallery_base_7405541a.jpg', 'fejhallgató: nyitott felépítés, on-ear kivitel, Prestige széria, dinamikus hangszórók, alumínium membrán, 18 Hz – 24 000 Hz frekvencia tartomány, 32 Ohm impedancia, SPL 1mW: 99,8 dB, 1.2 m hosszúságú kábel, 6.3 mm aranyozott Jack adapter, 3.5 mm aranyozott Jack csatlakozó, fekete szín, alumínium konstrukció', 'nyitott felépítés, on-ear kivitelésű fejhallgató');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `zip` int(11) NOT NULL,
  `city` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `permission` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `zip`, `city`, `country`, `permission`) VALUES
(6, 'Tóbi', 'Csanádi', 'csanadi.tobias@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dffhghjk', 3200, 'fgdgf', 'Kyrgyzstan', 1),
(7, 'elek', 'teszt', 'teszt@elek.hu', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Petőfi út 5.', 3300, 'Eger', 'Hungary', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
