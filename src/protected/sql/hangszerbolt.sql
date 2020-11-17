-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 11:09 AM
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
-- Database: `hangszerbolt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `quantity`) VALUES
(2, 1, 1),
(6, 2, 3);

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
(1, 'Fender', 'Stratocaster', 'Gitár', 750000, 6, '1.jpg', 'Elektromos gitár a Fender American Ultra sorozatból. A sorozat igényes játékosok számára megfelelő eszközöket kínál. Kiváló feldolgozási minőséget, maximális teljesítményt és prémium hangot ad. A gitár lezárt hangolóval, króm hardverrel és csontból készült zéró féreggel van felszerelve. Prémium kemény tokkal szállítva.  Body: Alder Body Finish: Gloss Polyurethane Body Shape: Stratocaster Neck Material: Maple Neck Finish: Satin Urethane with Gloss Urethane Headstock Face Neck Shape: Modern \"D\" Scale Length: 648 mm Fingerboard: Maple Fingerboard Radius: 254 mm – 355,6 mm Number of Frets: 22 Frets Size: medium jumbo String Nut: Bone Nut Width: 42,80 mm Bridge: 2-Point Deluxe Synchronized Tremolo with Pop-In Arm Hardware Finish: Nickel/Chrome Tuning Machines: Deluxe Cast/Sealed Locking Bridge Pickup: Ultra Noiseless Vintage Strat Neck Pickup: Ultra Noiseless Vintage Strat Middle Pickup: Ultra Noiseless Vintage Strat Controls: Master Volume (with S-1 Switch), Tone 1. (Neck/Middle Pickups), Tone 2. (Bridge Pickup), 5-Position Blade switch Pickguard: Aged White Strings: Fender USA 250L Nickel Plated Steel (.009-.042) Colour: Cobra Blue', 'Amerikai gyártású Fender Stratocaster  3 sigle-coil hangszedővel'),
(2, 'Gibson', 'Les Paul Standard', 'Gitár', 650000, 8, '2.jpg', 'Elektromos gitár a Gibson Les Paul Standard 60-as sorozatából. A Les Paul Standard új verziója visszatér a klasszikus ikonikus designhoz. Teljes és gazdag hangot nyújt, amely évtizedekig a zenefajták széles skálájára alkalmas. A gitár a klasszikus Gibson modell folytatása.', 'Gibbons Les Paul Standard'),
(3, 'Fender', 'Telecaster', 'Gitár', 555000, 3, '3.jpg', 'Elektromos gitár, American Original ´50s Telecaster széria, kőrisfa test, menzúra 648 mm, 1952-es U-alakú csavarozott juhar nyak, 241 mm-es juhar fogólap 21 Vintage Tall érintővel, \'\'Fender Deluxe\'\' Pure Vintage Single Line mechanika krómozott kivitelben, csont felső nyereg 42 mm, 3-Saddle Vintage-Style Strings-Through-Body Tele húrláb. Két Pure Vintage \'52 Single-Coil Tele hangszedő, 3 állású kapcsoló és Master Volume, Master Tone pontméterek. Tartozék luxus keménytok Vintage változatban. Szín: Butterscotch Blonde.', 'Fender American Original ‘50s Telecaster, szín: Butterscotch Blonde'),
(7, 'Chapman', 'ML1-7', 'Gitár', 340000, 3, 'ml1_7.jpg', '7-húros elektromos gitár, Pro széria. Sima felületű mahagóni test, juhar fedlap, átmenő sima C alakú nyak, ébenfa fogólap 24 Jumbo érintővel és pontberakással, amely világit a sötétben, menzúra 673 mm (~ 26 , 5 \'\'). Hipshot grip-lock nyitott mechanika, Graf tech black felső nyereg, Chapman string-through húrláb, Ernie Ball Regular Slinky Nickel Wound húrok (10-56). Két Chapman Sonorous 7 humbucker hangszedő, master volume és master tone pontméterek és 5-állású kapcsoló tekercsszétkapcsolással. Tartozék Chapman keménytok. Szín: Lunar.', '7 húros gitár, mahagóni test, 2 humbucker pickup'),
(8, 'EarthQuaker Devices', 'Sea Machine V3', 'Effekt', 89000, 7, 'sea_machine.jpg', 'A tengeri gép egy kóruszpedál, annyi modulációs lehetőséggel, amilyen a hal az óceánban. Ez sok hal. És sok a moduláció. A finom, csillogó kórus hangoktól kezdve a csillogásig, a tengeri hajózásig, a kényelmesen elhajló hajózásig, amely szikrázza a csónakot, a Sea Machine az audió csali, amely segíteni fog a nagyban. A tengeri gép nem egy trükkös tengeralattjáró. A változó hullámos LFO (az alakzáráson keresztül állítható) modulálja a kórus hangját a sima háromszög alakból, egy durva és szaggatott négyszöghullámhoz, és egy hosszabb késleltetési vonal lehetővé teszi, hogy mélyebbre merüljön a feltérképezett modulált vizekbe, mint valaha. Az egyéb LFO vezérlők közé tartozik az arány, amely meghatározza az LFO sebességét és a mélységet, amely meghatározza, hogy az LFO milyen erősen modulálja a késleltetési időt.\r\n\r\nFeatures\r\nRate: Sets the speed of the LFO. The miniature LED will show the tempo even in bypass mode.\r\nShape: From soft triangle through hard square wave.\r\nDimension: Adds a slight slap-back at low levels, reverb-like ambiance at mid levels and an echo-resonance at max.\r\nDepth: How much the LFO modulates the delay time.\r\nAnimate: How far the pitch shifted signal swings, lower levels equals a tighter and more focused shift à la traditional chorus. As you increase the control a more wild and animated pitch shift begins to emerge.\r\nIntensity: How much modulated signal is blended in with the dry signal.\r\nMeasures 4.625″ x 2.5″ x 2.25″ with knobs    ', 'Analóg chorus pedál'),
(9, 'TC Electronic', 'Plethora x5', 'Effekt', 175000, 6, 'PlethoraX5.jpg', 'A plethora x5 egy multi-effekt pedál, ami tartalmazza a TC Electronic toneprint funkcióval ellátott pedáljait, beleértve a Hall Of Fame 2 Reverb, Flashback 2 Delay, Sub n Up Octaver, Brainwaves Pitch Shifter, Corona Chorus, Hypergravity Compressor, Mimiq Doubler, Vortex Flanger, Pipeline Tap Tremolo, Quintessence Harmony, Sentry Noise Gate, Shaker Vibrato pedálokat.', 'Multi-effekt pedál'),
(10, 'EarthQuaker Devices', 'Arrows', 'Effekt', 46000, 2, 'eqdarrows.jpg', 'gitáreffekt: prémium minőségű effekt pedál - Boost, nem csak torzító pedálok, hanem csöves erősítők, kombók előerősítőjének feltököléséhez is remek, hangerőszabályzó, minőségi alkatrészekből készült, True Bypass, 9V elemmel vagy adapterrel (center negative) működtethető (nem tartozék), méretek: 11 x 6 x 3,8 cm', 'preamp booster pedál'),
(11, 'Fender', 'Blues Deluxe Reissue', 'Erősítő', 317000, 3, 'blues_deluxe.jpg', 'gitárkombó: 40 Watt teljesítmény, 3 x 12AX7, 2 x 6L6 csövek, 2 csatorna, 1x 12\" hangszóró, 8 Ohm impendancia, SS rectifier, effekt hurok, zengető, Bright kapcsoló, független Gain és fő hangerő a Drive csatornán, 1-kapcsolós lábkapcsoló a Drive kapcsolására', '40 watt csöves gitárkombó'),
(12, 'Orange', 'Crush 35RT', 'Erősítő', 95000, 2, '35rt.jpg', 'gitárkombó: 35 W teljesítmény, 10\" Voice of the World hangszóró, 2 csatorna, CabSim funkció, Dirty Gain, Treble, Middle, Bass, Clean/Dirty Volume szabályzók, beépített hangoló, 1/4\" hangszer bemenet, fejhallgató kimenet, AUX bemenet, méretek: 440 x 400 x 230 mm, súly: 11 kg', '35 wattos tranzisztoros gitárkombó'),
(13, 'Orange', 'Custom Shop 50 V2', 'Erősítő', 955000, 1, '50v2.jpg', 'Egycsatornás lámpás gitárerősítő, Custom Shop széria, teljesítmény 50 w. A beépített erősítő kézzel gyártott, teljesítménye 50W A / B osztályú üzemmódban és 30W A osztályú üzemmódban. Vezérlők: Master Volume, speciális magasfrekvencia szabályozó, 3-sávos EQ és Gain. A hangszerbemeneten kívül lábkapcsoló bemenettel rendelkezik EQ Lift funkcióval, a kapcsoló szerepel a csomagban. A hátsó panel 50 vagy 30 W vátlóval és három kimenettel rendelkezik külső hangszórókhoz, 2x 8 ohmos vagy 1x 16 ohmos impedanciával. Az UK-ban készült. Szín: Orange.', '50w csöves erősítőfej'),
(14, 'Walrus Audio', 'Julia V2', 'Effekt', 77900, 3, 'juliav2.jpg', 'Effekt pedál - analóg kórus / vibrato a Walrus Audio-tól. A pedál a hangjellemzők széles választékát, csatlakozókat hátul, csendes működési kapcsolót és Adam Forster kialakítást kínál.\r\n\r\nGyengéd kórushatást és kiváló vibrato effektust eredményez, könnyű testreszabással. Tartalmazza a Sebesség, Mélység, Lag és DCV (Száraz - Kórus - Vibrato) vezérlőket és az állítható LFO hullámformákat.\r\n\r\nA Lag vezérlés lehetővé teszi, hogy beállítsa a késleltetési időt, amelytől kezdve modulálja az LFO hatást. Finomítástól a maximálisig modulálást biztosít, új lehetőségeket teremtve a hagyományos Chorus / Vibrato effektusokhoz.', 'analóg chorus / vibrato pedál'),
(15, 'EarthQuaker Devices', 'Data Corrupter', 'Effekt', 101900, 2, 'datacorrupter.jpg', 'A Data Corrupter egy \"vad, mégis ismételhető\" három hangú modulált monofonikus harmonizáló PLL (fázison zárt hurok), amely a bemeneti jelet veszi és \"brutálisan felerősíti egy zúzó négyzethullámú fuzz tónusba, amelyet ezután megszorzott, megosztott és modulált \"Egy harmonikusan összetett, kifejező, és érintésérzékelő analóg szintézis létrehozásához legfeljebb három oktáv alatti (vagy annál magasabb) értéket, valamint további harmonikákat. A Data Corrupter mainframe-ben lévõ repedt gép felszabadításához állítsa a Subharmonic Root kapcsolót Oszcillátorra, és próbálja meg se távolodni, mivel a telepített Sonic malware a bemeneti jelet a Master Oscillator és Subharmonic összegével és különbségével együtt Frekvenciamodulátor a felső és alsó oktávokra.', 'Analóg harmonizáló pedál'),
(21, 'D\'Addario', 'NYXL 1046', 'Kiegészítő', 4990, 15, 'nyxl1046.jpg', 'elektromos gitár húrkészlet 10-46 nikkel, széria NYXL regular light', 'Gitárhúr 10-46'),
(22, 'D\'Addario', 'NYXL 1059', 'Kiegészítő', 5690, 8, 'nyxl1059.jpg', 'elektromos gitár húrkészlet, 7-húros , 10-59 nikkel, széria NYXL regular lite', 'Gitárhúr (7 húros gitárhoz) 10-59'),
(23, 'Seymour Duncan', 'Pegasus Sentient Humbucker Set 7-String', 'Kiegészítő', 87900, 3, 'thumb_d_gallery_base_22a784fd.jpg', 'Pegasus/Sentient passzív humbucker hangszedőkből álló szett 7 húros gitárhoz, a modern, progresszív zene kedvelőinek ajánlott kombináció, Alnico 5 mágnes, 4 szálú vezeték, DC ellenállás (Pegasus): 7,74 kOhm, DC (Sentient): 12,5 kOhm, fekete szín', 'Passzív hangszedő szett 7 húros gitárhoz');

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
