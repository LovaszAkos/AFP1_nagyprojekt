-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Dec 07. 17:26
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `audio`
--
CREATE DATABASE IF NOT EXISTS `audio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `audio`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cart`
--

CREATE TABLE `cart` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
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

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `first_name`, `last_name`, `address`, `zip`, `city`, `country`, `complete`, `time`) VALUES
(12, 7, 'elek', 'teszt', 'Petőfi út 5.', '3300', 'Eger', 'Hungary', 0, '2020-11-24 08:54:21'),
(13, 6, 'Tóbi', 'Csanádi', 'dffhghjk', '3200', 'fgdgf', 'Kyrgyzstan', 0, '2020-12-07 15:51:26');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `packages`
--

CREATE TABLE `packages` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `packages`
--

INSERT INTO `packages` (`order_id`, `product_id`, `amount`) VALUES
(12, 25, 2),
(13, 36, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
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
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `product_brand`, `product_name`, `category`, `price`, `in_stock`, `picture`, `description`, `shortdesc`) VALUES
(24, 'Sennheiser', 'HD600', 'Fejhallgató', 93000, 4, 'thumb_d_gallery_base_cc4e4edc.jpg', 'Ezt a fejhallgatót a valódi audiofileknek tervezték: a nyílt akusztikájú tervezésnek, digitálisan optimalizált mágneseknek,\r\n                        illetve a az alumínium lengőtekercseknek köszönhetően páratlan tisztaságú, precíz sztereó hangzást biztosít.\r\n\r\nTípus: fejpántos (fejhallgató)\r\n\r\nDriver Típus: dinamika\r\n\r\nHangzás: sztereó\r\n\r\nÉrzékenység (1kHz-nél): 300 Ohm\r\n\r\nFrekvencia (min): 12 Hz\r\n\r\nFrekvencia (max): 39000 Hz\r\n\r\nHarmónikus torzulás: 0,1 %\r\n\r\nHangszóró teljesítmény: 97 dB\r\n\r\nKábel hossza: 3 m\r\n\r\nCsatlakozás típusa: mini-jack 3.5 mm\r\n\r\nSúly: 260 g\r\n', 'fejpántos (fejhallgató)'),
(25, 'AKG', 'k712', 'Fejhallgató', 83000, 6, 'K712Pro-large.jpg', 'A  K712PRO  az új csúcsreferencia az AKG fejhallgatók sorában, így a K702 a két új fejhallgató közé pozícionálható. A kifinomult nyitott kialakítás, a 3dB-el megnövelt mélyfrekvenciás teljesítmény, a forradalmi lapos hangtekercs, és a lecsatolható professzionális kábel fáradtságtól mentes munkaórákat biztosítanak a keverés során. A K712PRO eredeti bőr fejpánttal rendelkezik mely rendkívül kényelmes. A gondosan kiválasztott kapszulák kiegyensúlyozott és pontos hangképet biztosítanak. A K712PRO csomagolása tartalmaz egy spirál kábelt és egy prémium minőségű hordtáskát is.  Élvezetet nyújt és évtizedekig tartó AKG minőséget biztosít minden felhasználó számára.', 'Félig nyitott kialakítású referencia fejhallgató'),
(26, 'Fiio', 'K5', 'Erősítő', 63000, 3, 'fiio-k5_1.jpg', 'A FiiO K5Pro egy nagy teljesítményű, asztali fejhallgató erősítő digitális-analóg átalakítóval. A FiiO K5Pro használható analóg erősítőként, ehhez csatlakoztasd a hangforrást a hátlapon található, sztereó RCA vonali bemenetek segítségével az erősítőhöz!\r\nD/A átakítás: 768kHz/32bit + DSD64/128/256/512\r\nTeljesítmény: Fejhallgató kimenet : 1.65 W (16Ω) 1.5 W (32Ω )\r\nFrekvencia átvitel: 20 Hz - 80 kHz\r\nTorzítás: (THD+N) ＜0.004% (1 kHz)\r\nJel/zaj viszony (SNR): ≥115 dB\r\nFejhallgató impedancia: 16 -300 Ω\r\nMéret: 120.5mm × 130mm × 55mm\r\nTömeg: 436 gramm\r\nCsatlakozók:Vonali ki-/bemenet (RCA), optikai és koaxiális bemenet, USB audio bemenet, 6.35 fejhallgató kimenet (3.5 mm-es adapter mellékelve)', 'Professzionális asztali fejhallgató erősítő D/A konverterrel'),
(27, 'Beyerdynamic ', 'DT 990', 'Fejhallgató', 49900, 4, '49122516.beyerdynamic-dt-990-pro.jpg', 'Stúdióba a legjobb választás lehet a DT990 PRO. Részletgazdag frekvencia átvitele mellett kiváló hangminőséggel és nagy hangnyomással rendelkezik.', 'Nyitott, dinamikus fejhallgató'),
(28, 'Grado Labs', 'SR325e Prestige Series', 'Fejhallgató', 144325, 2, 'thumb_d_gallery_base_7405541a.jpg', 'fejhallgató: nyitott felépítés, on-ear kivitel, Prestige széria, dinamikus hangszórók, alumínium membrán, 18 Hz – 24 000 Hz frekvencia tartomány, 32 Ohm impedancia, SPL 1mW: 99,8 dB, 1.2 m hosszúságú kábel, 6.3 mm aranyozott Jack adapter, 3.5 mm aranyozott Jack csatlakozó, fekete szín, alumínium konstrukció', 'nyitott felépítés, on-ear kivitelésű fejhallgató'),
(29, 'Fiio', 'e10k-olympus2', 'Erősítő', 25655, 6, 'e10k-olympus2.jpg', 'FiiO E10K Olympus2 DAC+AMP fejhallgató erősítő D/A konverterrel adatai:\r\n\r\nTöbbé nem kell megelégedned a számítógéped beépített hangkártyája által nyújtott, átlagos hangzással, a FiiO E10K D/A konverter nagyságrendekkel javítja a hangminőséget. Csatlakoztasd USB-n keresztül a számítógépedhez, és máris élvezheted a kimagasló, 96 kHz/24 bites digitális-analóg átalakító (DAC), és az azt körülvevő, fejhallgató erősítő (AMP) áramkör által nyújtott zenei élményt. Akár egy tetszőleges Youtube videóval és egy átlagos fülhallgatóval is csodát tesz az FiiO E10K, amely teljesen átveszi a belső hangkártya szerepét.\r\n \r\nA FiiO E10K D/A átalakító minden íróasztal dísze lehet. A kompakt méretű, fekete ház masszív felépítésű. Az impozáns megjelenésű, szálcsiszolt alumínium borítás alatt audiofil mérnökök által kiválasztott alkatrészek alkotnak remek csapatot. A készülék előlapján található Alps potméter finoman állítható, és kiváló együttfutást biztosít a jobb és bal csatorna között, a basszus kiemeléssel pedig adhatsz egy kis plusz mélységet a zenének, ha úgy tartja kedved.\r\n \r\nA digitális zene a hátlapon lévő micro-USB porton keresztül érkezik a számítógépből a készülékbe. Ugyanitt kapja a FiiO E10K a tápfeszültséget is, így nem csúfítja az asztalt a külső tápegység kábelezése. A line-out kimenet a vonali jelet biztosítja arra az esetre, ha külső erősítőre szeretnéd kötni az E10K által biztosított analóg jelet. A koaxiális kimeneten PCM kódolású, digitális jel jelenik meg további felhasználásra. ', 'FiiO E10K Olympus2 DAC+AMP fejhallgató erősítő D/A konverterrel'),
(30, 'Fostex', 'HP-V8 ', 'Erősítő', 2999844, 23, 'fostex-hp-v8.jpg', 'Vacuum tube headphone amplifier. Model HP-V8 is the high-end stand alone vacuum tube amplifier dedicatedly designed for headphones using the legendary 300B for power tubes for the first time in the industry on headphone amplifier. The Signal to Noise ratio as good as 115 dB achieved by the Fostex proprietary ST-PC technology as well as thorough noise reduction countermeasures reveals the authentic power of the tubes. Output transformers are custom-made by Hashimoto Electric complying with balance and unbalanced outputs. The base plate made of aluminum weighing 2 kg and the OFC (Oxygen Free Copper) plate with Teflon washers used for the power tube socket to minimize vibration noise. High anti-vibration rubber feet isolate the chassis from the floor. Pure audio grade electronic volume is used to eliminate the gang errors between L and R volumes. Custom-made electrolytic and film capacitors are adopted. The audio grade AC Inlet is made by Furutech. Impedance: 600 Ohm. Frequency response: 20Hz - 50kHz. Max. SPL: 2000 mW / 16 Ohm. S/N: 115 dB. Dimensions: 430 x 245 x 416 mm. Weight: 31 kg. ', 'Nagyon erősít és csöves.'),
(31, 'Sennheiser', 'HDV 820 ', 'Erősítő', 925211, 356, 'sennheiser-hdv-820.jpg', 'Az új HDV 820 a Sennheiser következő generációs digitális fejhallgató-erősítője. Ez a Németországban tervezett és gyártott audiofil remekmű a csúcsminőségű audiofil fejhallgató-sorozat tökéletes kiegészítője. A továbbfejlesztett alkotóelemeknek köszönhetően most még nagyobb precizitást és még tökéletesebb hangminőséget biztosít. A legmodernebb digitális-analóg átalakítás technológiával bíró HDV 820 állandó, szimmetrikus jelfeldolgozást, valamint rendkívül alacsony harmonikus torzítást kínál, az eredetihez hű, tökéletes zenei élmény jegyében. A referencia minőségű fejhallgatók tökéletes partnere. Két dolog van, ami a tökéletességre törekvőket jellemzi: sohasem tekintenek semmit sem befejezettnek, és képesek mindenből a legextrémebb dolgokat kihozni, területükön tevékeny részt vállalva a jövő alakításában. Lépj be a HDV 820 világába, és bizonyosan megváltozik majd, ahogyan a zenét hallgatod és megtapasztalod. Ez azt jelenti, hogy egy olyan fejhallgatóval fogsz rendelkezni, amely képes a HDV 820 által közvetített rendkívül kiváló minőségű audio jelet ugyanolyan magas színvonalon megszólaltatni. A küldetés: a legjobb tökéletesítése Ha csúcskategóriát képviselő audio eszközöket készítesz, akkor egy még jobb megalkotása a leggyümölcsözőbb feladat, amit a Sennheisernél el tudunk képzelni. Ez volt az előttünk álló feladat a HDV 820 megtervezésénél is. Új technológiai területekre kalandozva még több lehetőséget találtunk a valósághűbb hangvisszaadásra, amelyet elérhetővé szerettünk volna tenni legigényesebb ügyfeleink számára. A hangzás: hogy a nagyszerű fejhallgatók minden képességüket kibontakoztathassák Tényleg minden képességüket. Ezt biztosítja a HDV 820 a Te fejhallgatód számára is. Így csak a fejhallgatón múlik, hogy mindezt hallhatóvá tegye. Két – egyébként ugyanolyan – hangszer különböző hangszínét. Egy zenekar zenészei közötti távolságot, valamint az énekes megszólalása előtti feszültséget. Mindez ott van, hogy felfedezhesd. A technológia: csakis a felülmúlhatatlan a megfelelő Minél fejlettebb a technika, annál magasabbak az elvárások. Az új HDV 820 lelke egy félelmetes ESS SABRE32 DAC (digitális-analóg konverter), amely 32 bites felbontásával és 384 kHz-es mintavételi gyakoriságával felülmúlja az előző generáció teljesítményét. Az erősítő akár a 12,3 MHz-es DSD256 fájlok lejátszására is képes. A megjelenés: a látvány is tükrözze a hangzást A HDV 820 számára – egy hihetetlenül valósághű hangzásélményt nyújtó audio eszközhöz illően – olyan külsőt terveztünk, amelyre öröm ránézni. Az erősítő egy új, eloxált fekete bevonatot és fehér LED-eket kapott, melyek megtervezésénél az volt a fő szempont, hogy tökéletesen harmonizáljanak a Sennheiser csúcskategóriás zászlóshajója, a HD 800 S fejhallgató megjelenésével – apropó: egy ideális páros a páratlan audiofil hangzásélmény eléréséhez. A kompatibilitás: a rendkívüli hangzás utat tör magának Az audio kimenetek széles választékának – többek között az XLR3, XLR4, 6,3 mm-es és 4,4 mm-es Pentaconn aljzatnak – köszönhetően egyszerű optimális megoldást találnod fejhallgatód HDV 820-hoz történő csatlakoztatásához. Kiválóan teljesít digitális források esetén – legyen szó optikai, koaxiális vagy USB-n keresztül történő csatlakoztatásról –, valamint szimmetrikus (XLR) és aszimmetrikus (RCA) analóg bemeneteket is kínál. A HDV 820 egy dedikált, országspecifikus tápkábellel kerül forgalomba. Mit tartalmaz a csomag? ', 'Az új HDV 820 a Sennheiser következő generációs digitális fejhallgató-erősítője.'),
(32, 'Aqua', 'acoustic quality La Scala MK II', 'Hangkártya', 2190000, 25, 'aqua-acoustic-quality-la-scala-mk-ii.jpg', 'La Scala MKII Optologic DAC , high-end digital-analóg konverter Cristian Anelli és Stefano Jelo cége az Aqua Acoustic Quality az olasz szenvedélyesség, a befektetett szellemi energia és a sok erőfeszítés mintaképe. 2005 óta fejlesztik az elektronikákat, hogy rátaláljanak más megoldásokra a túlmintavételezéses átalakítók helyett. Az egyik fő, talán a legjellemzőbb gyártmányuk, a La Scala, amely kikerüli a digitális szűrés megoldását, minőségi PCM jelátvitelt biztosít, egy DAC, amit az igényes audiofil közönségnek szántak. Mivel a kommersz D/A konverterek általában teljesen lélektelen, érzelmileg távoli, szürke és „konzerv hangzású, steril zenét szolgáltattak, Signore Anelli szilárdan elhatározta, hogy változtat ezen. Az Aqua Acoustic nem követi a szokásos utat, ennek eredménye az áramkörök egyedi tervezésén túl, leginkább a hangzásminőségben tükröződik. A La Scala Mk II örökli elődjétől az innovatív, szabadalmaztatott DFD dekódolás, felskálázás és digitális szűrő nélküli metodikáját, ezzel biztosítva a tiszta és pontos digitális jelet. Az Aqua Acoustic aszinkron USB és PPL (phase locked loop technology) S/PDIF csatolót használ. Az AQlink PRO (I2S protokoll) jitter-mentes digitális interfész az I2S csatolón hozza a legjobb teljesítményt, ez a bejárat kompatibilis más erre felkészített eszközzel is. A beérkező digitális jelet nem skálázza fel. Az elektronika Burr Brown PCM 1704K típusú DAC chipekből négyet használ differenciál, iker-mono konfigurációban. A diszkrét elemekből álló szabályozó áramkörök (az MOSFET, J-FET és BJT) az erősítés analóg és az átalakítás digitális szakaszában egyaránt megtalálhatók. A készülékben rendkívül gyors diódákat, valamint más magas minőségű alkatrészeket, mint a hosszú-élettartamú kondenzátorok és alacsony zajszintű fém-fólia ellenállások, alkalmaznak. ', 'Magas minőségű alkatrészek'),
(33, 'RME', 'HDSPe MADI FX', 'Hangkártya', 578900, 9, 'rme-hdspe-madi-fx.jpg', '390-csatornás 24 Bit/192 kHz tripla MADI PCI Express kártya\r\n\r\nÍgy is ismerheti: HDSPeMADIFX ', '390-csatornás 24 Bit/192 kHz tripla MADI PCI Express kártya\r\n\r\n'),
(34, 'TASCAM', 'IF-MA64-EX', 'Hangkártya', 563985, 2, 'tascam-if-ma64-ex.jpg', 'Kiegészítő, MADI kártya DA6400/DP-hez, BNC, optika\r\n\r\nÍgy is ismerheti: IF MA 64 EX, IFMA64EX, IF MA64 EX, IF MA64-EX, IF-MA64 EX ', 'MADI kártya DA6400/DP-hez'),
(35, 'Focusrite', 'Clarett 2Pre USB', 'Hangkártya', 269696, 69, 'focusrite-clarett-2pre-usb.jpg', 'USB audio interfész, Clarett széria, 10 bemenettel és 4 kimenettel és két mikrofon / vonal / hangszer bemenettel, amely lehetővé teszi bármilyen berendezés hangrögzítését - az kondenzátor mikrofontól a forró hangszedőig - a nem kívánt torzítás nélkül. Dinamikus tartományban 119 dB, használható minden Mac vagy PC segítségével , amely támogatja az USB 2.0 és újabb verziókat. Fel van szerelve speciálisan tervezett, nagy teljesítményű, alacsony zajszintű (-128dB EIN) mikrofon előerősítőkkel, ultra-lineáris kialakítás alacsony torzítással, garantálva a tiszta és nyílt hangot, amely hűen reprodukálja az eredetit. A több évtizedes tapasztalaton alapuló analóg áramkörök a 24-bit / 192 kHz A-D és D-A konverzió körül kiváló jelútat biztosítanak. A Gain Halo lehetővé teszi a bemeneti jel egyszerű beállítását. Az ADAT bemenet további nyolc csatornát támogat, többcsatornás mikrofon előerősítőkkel, mint a Clarett OctoPre. A kimenetek két kimenetet tartalmaznak a visszahallgatáshoz anti-thump technológiával, fejhallgató kimenetet hangerő szabályozással és két vonal kimenetet, valamint MIDI bemenetek és kimenetek. Az interfész többféle mellékelt szoftverrel is rendelkezik, beleértve az XLN Audio - Addictive Keys, a Focusrite - Red Plug-in Suite, a SoftUpload - Time and Tone Bundle, a Focusrite - Plug-in Collective, az Ableton - Live Lite, a Loopmasters és a Focusrite Control. 3A/ 5V áramellátást igényel sínáramkörről, amelynet a közvetlen USB csatlakozás 15C típusú 15W portokhoz képes biztosítani a fogadó számítógépeken. Tartozék tápegység és szabványos USB és USB Type-C kábel bármilyen USB 2.0 vagy újabb porthoz. ', '10 bemenettel és 4 kimenettel és két mikrofon'),
(36, 'Kingston', 'HyperX QuadCast (HX-MICQC)', 'Kiegészítő', 60558, 6, 'kingston-hyperx-quadcast-hx-micqc.jpg', 'Univerzális HyperX QuadCast kondenzálóval ellátott mikrofon streamerekhez vagy YouTuberhez. Integrált rezgéscsillapítójának és speciális környezeti zajszűrőjének köszönhetően kiváló minőségű hang visszaadással rendelkezik. A mikrofon elegáns piros LED-es háttér világítása állapotjelzőként szolgál.\r\n\r\nHa világít, azt jelenti, hogy a mikrofon aktív és készen áll a felvételre. A felső rész megérintésével kikapcsolhatod, ennek köszönhetően megakadályozhatod a véletlenszerű felvételt, ilyenkor a mikrofon tompított LED-es fénye világít.\r\n\r\nA mikrofon alján található az érzékenység beállítására szolgáló forgatógomb. Négy üzemmód áll rendelkezésre - sztereó, irányított, cardioid és kétirányú, a beállítások optimalizálásához és a rögzítendő hangra való koncentráció fenntartásához.\r\n\r\nA csomagolás része egy univerzális adapter, amely lehetővé teszi a HyperX QuadCast felszerelését bármilyen 3/8 vagy 5/8 hüvelykes állványra vagy konzolra. - Discord és Teampseak programok támogatása - Anti vibrációs talapzat - Némítás gomb a tetején, ezt jelző világítással - Fejhallgató Jack bemenet\r\n\r\n', 'Nagyon nagyon gamer.'),
(37, 'ASUS', 'ROG THRONE QI', 'Kiegészítő', 68542, 12, 'asus-rog-throne-qi-fejhallgato-allvany.jpg', ':190', 'Ha sok pénzed van és szereted a fancy dolgokat.'),
(39, 'JBL', 'Charge 4', 'Kiegészítő', 46885, 98, 'jbl-charge-4.jpg', 'BL hangszórók: Mindenütt veled levő gazdag hangzás\r\n\r\nA JBL vállalat, amely 1946-ban jött létre Kaliforniában már a hangszórók fejlődésének kezdetén jelen volt a hangstúdiók és mozitermek hangosításánál. Napjainkban élvezheted az egyedülálló minőségű JBL hangszórók által nyújtott luxust otthonodban is, vagy bárhova magaddal viheted, ahová csak szeretnéd. A JBL specialitásai közé tartoznak a vízálló hangszórók is, amelyekkel gond nélkül ugrálhatsz akár a medencébe is. ', 'JBL hangszórók: Mindenütt veled levő gazdag hangzás'),
(40, 'Olympus', 'DS-9500 Premium Kit ', 'Kiegészítő', 658988, 4, 'olympus-ds-9500-premium-kit.jpg', 'TermékleírásGyártó OlympusModell DS-9500\r\nMobil beszédhangrögzítés, biztonságos fájlkezelés, gyors megosztás. Az Ön professzionális mobil beszédhangrögzítőjeÖn döntheti el, mikor, hol és miként kívánja megoldani a diktálást. A két mikrofon kiváló minőségű beszédhangfelvételt biztosít mindenféle felvételi környezetben. Használjon WiFi-t a fájlok átvitelére DS-9500 hangrögzítővel (DS-9000 esetén nem alkalmazható). Élvezze a nagyszerű hatékonyságot és az extra időt, melyet olyan dolgokra fordíthat, ami igazán fontos.\r\nIntelligens kétmikrofonos rendszer a kiváló minőségű beszédfelismeréshezHárom felvételi mód mindenféle diktálási környezetnek megfelelően\r\nKONFERENCIA FELVÉTELE SZTEREÓBANA két, 90-ban elrendezett mikrofon minőségi felvételek készítését biztosítja realisztikus térérzetet adó sztereó hangzással. A felvételt - elkészítése után - gyorsan és egyszerűen oszthatja meg MP3 formátumú fájlként.\r\nDIKTÁLÁS MÓD ZAJOS KÖRNYEZETBENA fő mikrofon irányított módja az aktív zajkioltó funkcióval kiváló fókuszálást biztosít a beszédhangokra. A környezeti zajok így minimálisra csökkenthetők.\r\nDIKTÁLÁS MÓD CSENDES KÖRNYEZETBENNem számít, milyen szögből beszél a hangrögzítő felé, a többirányú mikrofonok pontosan rögzítik az elmondottakat. Ebben a módban mindegy, hogyan tartjuk a hangrögzítőt a kezünkben.\r\nTöbb szabadidő, melyet a családommal tölthetekA munka és a családi élet összeegyeztetése elengedhetetlen a számomra. A DS-9500 használatával értékes időt szabadíthatok fel gyermekeim és a karrierem számára is.\r\nExtra produktivitás a mindennapi munkábanA munkám a szenvedélyem. Szeretnék annyi projektben részt venni, amennyiben csak tudok. A DS-9500 segítségével időt szabadíthatok fel, amit a szakmai céljaim elérésére fordíthatok. A munkám így hatékonyabb lehet, minden szempontból.\r\nEgyszerű és biztonságos menedzsment az ODMS szoftverrelAz ODMS R7 szoftver segítségével egyszerűen oszthatja meg fájljait. A kiemelt fontosságú fájlokat előre rangsorolhatja. Tekintse meg, hogyan segítheti az ODMS R7 a vezeték nélküli hanganyag-feldolgozás munkafolyamatait.\r\nMinden fájl - egy áttekinthető listába rendezveAz ODMS R7 és Olympus SCP munkacsoport telepítésével a felvett hanganyagok feldolgozottságának állapota megjelenik a DS-9500 lista nézetében. WLAN csatlakozás esetén ikonok tájékoztatnak az átírás állapotáról, illetve elkészültéről.\r\nEllenálló kivitel mindennapi használatraA robusztus háznak és felépítésnek köszönhetően a hangrögzítő rendkívül ellenálló. Tesztjeink igazolják, hogy a DS-9500 akkor is folytatja a hangrögzítést, ha egy asztalról leesik - sőt, bármiféle károsodás nélkül teljesíti ezt (1,5 méter magasból történő leejtésig). Emellett a felületkezelés alkoholálló, így az eszköz higiénikus törlőkendővel fertőtleníthető.\r\nIntuitív kezelhetőség a teljes odafigyelés biztosításához beszéd felvétele közbenA csúszókapcsoló intuitív kezelhetőséget kínál. Kiváló minőségű anyagok használata biztosítja a hangrögzítő csúszókapcsoló-rendszerének masszív, tartós kivitelét.\r\nHatékony munkavégzés dokkoló állomás használatávalA DS-9500 dokkoló állvány problémamentes kapcsolódást kínál számítógépéhez. Ha Olympus hálózati adapterrel is csatlakoztatjuk, a DS-9500 egyszerűen, mindössze 2 óra alatt teljesen feltölthető. Opcionális bővítési lehetőséget kínál a lábkapcsoló használata, mely csatlakoztatás után lehetővé teszi a hangrögzítő kéz nélküli vezérlését. A dokkoló állomás hálózati csatlakozója további adatátviteli megoldást kínál - például WiFi hiánya esetén.\r\nBiztonságos adatkezelésA DLP (Data Loss Prevention) rendszer segítségével a hangrögzítő csak olvasható módban működik számítógéphez csatlakoztatva, kiküszöbölve az USB pendrive-okhoz hasonló mód szerinti használatát - így a céges adatok véletlenül sem kerülhetnek ki külső adathordozóra.\r\nVédje hangrögzítőjét PIN kóddalBiztonsági PIN kód védi adatait az illetéktelen hozzáféréstől.\r\nMagas szintű biztonság - titkosított adatokAES 256-bit titkosítás nyújt magas szintű adatbiztonságot. ', 'Diktafon, bármilyen helyzethez.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
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
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `address`, `zip`, `city`, `country`, `permission`) VALUES
(6, 'Tóbi', 'Csanádi', 'csanadi.tobias@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'dffhghjk', 3200, 'fgdgf', 'Kyrgyzstan', 1),
(7, 'elek', 'teszt', 'teszt@elek.hu', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Petőfi út 5.', 3300, 'Eger', 'Hungary', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`user_id`,`product_id`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
