-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2021 at 08:04 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_boolbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartments`
--

CREATE TABLE `apartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_rooms` tinyint(4) NOT NULL DEFAULT '1',
  `n_beds` tinyint(4) NOT NULL DEFAULT '1',
  `n_baths` tinyint(4) NOT NULL DEFAULT '1',
  `square_meters` smallint(6) NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lon` decimal(11,8) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgs` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartments`
--

INSERT INTO `apartments` (`id`, `user_id`, `title`, `description`, `n_rooms`, `n_beds`, `n_baths`, `square_meters`, `lat`, `lon`, `address`, `imgs`, `visible`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Abitanti di Roma - Centro Storico', 'Al centro di Roma, dietro al Palazzo della provincia! Fori Imperiali e Piazza Venezia sotto casa, il Colosseo a pochi minuti a piedi, così come Via del Corso (centrale per lo shopping), Piazza di Spagna, Campo de\' fiori, Fontana di trevi, e ​Piazza Navona.\r\nMezzi di trasporto (metro/bus), ristoranti e principali musei raggiungibili facilmente a piedi. Un ottimo punto di partenza per esplorare la città. Stazione Termini é facilmente raggiungibile in poche fermate o a piedi.', 1, 4, 1, 50, '41.90422000', '12.49615000', 'Via Parigi, 00185 Roma', 'imgs/44b6dwv913B9fXRqi1y6RHwAfrH51JRpaAIi8GfQ.jpg', 1, 'abitanti-di-roma-centro-storico', '2021-10-13 15:53:47', '2021-10-13 15:53:47'),
(2, 1, 'Piazza del Popolo Luxury Apartment', 'The apartment is located in a quiet area in the center of Rome, precisely a few meters from Piazza del Popolo from where you can quickly reach the major tourist attractions of the city on foot: Piazza di Spagna, Villa Borghese, Il Pincio, Trevi Fountain, Via del Corso, the Prati district (Vatican).', 3, 6, 2, 88, '41.90422000', '12.49615000', 'Via Parigi, 00185 Roma', 'imgs/1UCoHHN32nNpdpLD336pPhay9oGh4y8aWBB9kXLB.jpg', 1, 'piazza-del-popolo-luxury-apartment', '2021-10-13 15:56:04', '2021-10-13 15:56:04'),
(3, 1, 'Appartamento Artistico Vicino a Fontana di Trevi', 'The apartment, newly renovated, is located in the historic center of Rome, just few steps away from the Trevi Fountain, surounded by the nice internal gardens. Nearby you can find the Barberini Metro station. Great location, very quite and safe area.', 5, 5, 2, 120, '41.90422000', '12.49615000', 'Via Parigi, 00185 Roma', 'imgs/5vH3eNXmtImvRf4VlldLOmqhB5LqOLhrmXoY1tiG.jpg', 1, 'appartamento-artistico-vicino-a-fontana-di-trevi', '2021-10-13 15:57:23', '2021-10-13 15:57:23'),
(4, 1, 'Roma Charming in love to Colosseum&Termini', 'L\'appartamento nasce nel centro storico di Roma a due passi da : Colosseo (900mt), Fori Imperiali, Stazione Termini (700mt), Metro A (Vittorio Emanuele 600mt), Metro B (Cavour 300mt), Basilica S. Maria Maggiore (260mt) e S. Prassede (300mt), Teatro Brancaccio, ecc...\r\nAccogliente e riservato con entrata indipendente, dispone di 6 posti letto suddivisi in 2 piani con cucina e 2 bagni adatto ad ogni vostra esigenza.', 6, 12, 4, 120, '41.90422000', '12.49615000', 'Via Parigi, 00185 Roma', 'imgs/qaKX4t46PhmI6P4KI6tFzgHPVfP1ykPeSiKRgyhq.jpg', 1, 'roma-charming-in-love-to-colosseumtermini', '2021-10-13 15:59:27', '2021-10-13 15:59:27'),
(5, 1, 'Accogliente Monolocale – A due passi da San Pietro', 'Accogliente monolocale di circa 15 mq, perfetto per 2 persone, situato al secondo piano con ascensore (5 gradini per accedervi, NON idoneo a persone disabili) di uno stabile d’epoca ristrutturato nel Rione Borgo Pio, nel cuore di Roma, in zona pedonale e in posizione strategica tra Piazza San Pietro e Castel Sant’Angelo.\r\nL’appartamento si compone di una zona notte, angolo cottura e bagno.', 1, 3, 1, 30, '41.90422000', '12.49615000', 'Via Parigi, 00185 Roma', 'imgs/miBJROxTA0NrZaE3w60WAaXzZJCmFqIZqn5vkD5Q.jpg', 1, 'accogliente-monolocale-a-due-passi-da-san-pietro', '2021-10-13 16:03:24', '2021-10-13 16:03:24'),
(6, 1, 'House \"FlaTò\"- Alloggio Turistico moderno e comodo', 'Delizioso appartamento confortevole e luminoso in posizione centrale, che ti piacerà per l\'ospitalità, la tranquillità, la pulizia della struttura ed il comfort. Alloggio adatto per coppie, per viaggiatori solitari e per chi viaggia per lavoro. Ubicato vicino all\'aeroporto, è ideale per chi deve viaggiare partendo presto la mattina seguente o per chi arriva tardi e stanco da un viaggio, volendo riposare al meglio.\r\nA pochi passi dalla spiaggia e da una vasta scelta di ristoranti locali tipici.', 5, 3, 3, 253, '41.75835000', '12.26824000', 'Via Doberdò, 00054 Fiumicino', 'imgs/36rPZtm5fXKRtctZKsPtfWODm9pDUTTBUEAhwFmp.jpg', 1, 'house-flato-alloggio-turistico-moderno-e-comodo', '2021-10-13 16:07:04', '2021-10-13 16:07:04'),
(7, 1, 'Appartamento sofí', 'È un piccolo monolocale di 35mq con ingresso indipendente dotato di tutti i confort bagno spazioso e completo di tutti i confort(sapone corpo,viso, bagnodoccia, asciugacapelli e set di asciugamani) cucina completa di stoviglie, posate, macchina da caffè forno.Situato al centro di Fiumicino a 3 km dall aereoporto a 500 metri dal mare e a 7 km dal centro commerciale leonardo d avinci.', 7, 15, 5, 150, '41.75678000', '12.23113000', 'Via del Faro, Fiumicino', 'imgs/0V3tilDhJULLsNsFmB9gYmeboxzyUPWC3ZsBVdfa.jpg', 1, 'appartamento-sofi', '2021-10-13 16:10:41', '2021-10-13 16:10:41'),
(8, 2, 'Elegant in a central location', 'Elegant in a fabulous central location, from where the city center can be reached on foot.\r\nOffer the guest the best in comfort for an unforgettable stay in Milan.\r\nDescription\r\n-two Double bedrooms\r\n-two bath rooms\r\n-a super spacius living room whit a sofa bed\r\n- fully equipped kitchen\r\nFree wifi , Washing machine ,heating,air conditional ,tv, bed linen and towels, baby coat on request .\r\nPerfect for a family or a medium group .', 2, 6, 2, 90, '45.59887000', '8.96619000', 'Via 20 Settembre, 20123 Milano', 'imgs/s5UI981yZgbFidj0JcJj7n44xiMVtq3wdFswNXlw.jpg', 1, 'elegant-in-a-central-location', '2021-10-13 16:16:37', '2021-10-14 07:31:40'),
(9, 2, 'Lovely apartment in most romantic Milanese area', 'Charming apartment in the most romantic neighborhood at the heart of Milan\r\nThe accommodation includes:\r\n- concierge\r\n- bedroom with king size bed, double wardrobe, wide desk and bright view\r\n- bathroom with shower\r\n- spacious living room with sofa bed, kitchen, table, refrigerator, oven and dishwasher\r\n- additional room with washer and drier\r\n- inner garden\r\n- free WiFi-connection\r\n10 minutes by foot to Duomo / Via Montenapoleone. 3 minutes by foot to Cadorna subway station. 1 minute by foot to Tram', 8, 10, 5, 25, '45.46806000', '9.16901000', 'Via Sebeto, 20123 Milano', 'imgs/AMYRLmn0vGbdXHWUaKGixtnmZRjFEZw0TBRDpJdD.jpg', 1, 'lovely-apartment-in-most-romantic-milanese-area', '2021-10-13 16:18:33', '2021-10-13 16:18:33'),
(10, 2, 'affitto appartamento brevi periodi', 'Bellissimo mini appartamento completamente arredato nel cuore di Milano, a soli 3 minuti a piedi dalla storica chiesa di S. Maria delle Grazie e Cenacolo di Leonardo da Vinci, vicino alla Basilica di S. Ambrogio e a pochi minuti dal bel parco Sempione. L\'appartamento si trova in un elegante edificio d\'epoca in una delle zone più tranquille e residenziali di Milano.\r\nLa casa, molto silenziosa e luminosa, ha un delizioso arredamento moderno ed è fornita di tutti i comfort: televisione, angolo cucina con lavatrice, frigorifero, freezer e fornelli, wifi , aria condizionata. Il letto matrimoniale è posto su un soppalco aperto sul piccolo angolo soggiorno sottostante ed è ad esso collegato da una scala un po\' ripida. L\'appartamento si trova a piano terra, ha un ingresso autonomo che si raggiunge dal cortile interno, immerso nel verde. La soluzione è perfetta per una coppia giovane e sportiva che decide di visitare Milano, o di soggiornare durante il Salone del Mobile, per la settimana della moda o altri eventi importanti legati alla vita della città.\r\nLa zona è molto ben servita dai mezzi pubblici: è vicina alla stazione della metropolitana di Cadorna (linee rossa e verde) a linee tranviarie che portano in centro città ( tram n. 1 e 19) , oltre che dalla stazione Ferroviaria di Cadorna, arrivo e partenza del treno Malpensa Express . Vedi la mappa (ultima foto dell\'annuncio)', 8, 11, 11, 1, '45.46806000', '9.16901000', 'Via Sebeto, 20123 Milano', 'imgs/40h3tDkXvx4ijSDUGfxZ5yxDxWteWubCOhEExoHT.jpg', 1, 'affitto-appartamento-brevi-periodi', '2021-10-13 16:20:42', '2021-10-13 16:20:42'),
(19, 11, 'Casa al lago - modificato', 'Bello chalet con vista sul lago', 4, 2, 1, 50, '45.98886000', '11.26555000', 'Caldonazzo Via Caorso 1', 'imgs/nfHb28VsoZesZ9J7S4rHm10egYrtdDGDvqlJXCFh.jpg', 1, 'casa-al-lago-modificato', '2021-10-21 11:50:11', '2021-10-21 11:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `apartment_service`
--

CREATE TABLE `apartment_service` (
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_service`
--

INSERT INTO `apartment_service` (`apartment_id`, `service_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL),
(1, 3, NULL, NULL),
(1, 7, NULL, NULL),
(1, 14, NULL, NULL),
(1, 17, NULL, NULL),
(1, 22, NULL, NULL),
(1, 28, NULL, NULL),
(2, 1, NULL, NULL),
(2, 7, NULL, NULL),
(2, 11, NULL, NULL),
(2, 12, NULL, NULL),
(2, 14, NULL, NULL),
(2, 17, NULL, NULL),
(2, 18, NULL, NULL),
(2, 22, NULL, NULL),
(3, 1, NULL, NULL),
(3, 2, NULL, NULL),
(3, 7, NULL, NULL),
(3, 11, NULL, NULL),
(3, 21, NULL, NULL),
(4, 1, NULL, NULL),
(4, 2, NULL, NULL),
(4, 6, NULL, NULL),
(4, 7, NULL, NULL),
(4, 11, NULL, NULL),
(4, 12, NULL, NULL),
(4, 22, NULL, NULL),
(4, 25, NULL, NULL),
(4, 28, NULL, NULL),
(5, 1, NULL, NULL),
(5, 11, NULL, NULL),
(5, 17, NULL, NULL),
(5, 18, NULL, NULL),
(5, 21, NULL, NULL),
(5, 25, NULL, NULL),
(6, 1, NULL, NULL),
(6, 7, NULL, NULL),
(6, 11, NULL, NULL),
(6, 12, NULL, NULL),
(6, 14, NULL, NULL),
(6, 17, NULL, NULL),
(6, 18, NULL, NULL),
(6, 22, NULL, NULL),
(6, 29, NULL, NULL),
(7, 1, NULL, NULL),
(7, 2, NULL, NULL),
(7, 3, NULL, NULL),
(7, 6, NULL, NULL),
(7, 7, NULL, NULL),
(7, 11, NULL, NULL),
(7, 12, NULL, NULL),
(7, 14, NULL, NULL),
(7, 17, NULL, NULL),
(7, 18, NULL, NULL),
(7, 21, NULL, NULL),
(7, 22, NULL, NULL),
(7, 25, NULL, NULL),
(7, 28, NULL, NULL),
(7, 29, NULL, NULL),
(8, 1, NULL, NULL),
(8, 7, NULL, NULL),
(8, 11, NULL, NULL),
(8, 12, NULL, NULL),
(8, 14, NULL, NULL),
(8, 17, NULL, NULL),
(8, 18, NULL, NULL),
(8, 21, NULL, NULL),
(8, 22, NULL, NULL),
(8, 28, NULL, NULL),
(8, 29, NULL, NULL),
(9, 1, NULL, NULL),
(9, 2, NULL, NULL),
(9, 7, NULL, NULL),
(9, 11, NULL, NULL),
(9, 12, NULL, NULL),
(9, 14, NULL, NULL),
(9, 21, NULL, NULL),
(9, 22, NULL, NULL),
(9, 29, NULL, NULL),
(10, 1, NULL, NULL),
(10, 7, NULL, NULL),
(10, 14, NULL, NULL),
(10, 17, NULL, NULL),
(10, 21, NULL, NULL),
(10, 25, NULL, NULL),
(19, 2, NULL, NULL),
(19, 3, NULL, NULL),
(19, 6, NULL, NULL),
(19, 14, NULL, NULL),
(19, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `apartment_sponsor`
--

CREATE TABLE `apartment_sponsor` (
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `sponsor_id` bigint(20) UNSIGNED NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_sponsor`
--

INSERT INTO `apartment_sponsor` (`apartment_id`, `sponsor_id`, `date_start`, `date_end`, `created_at`, `updated_at`) VALUES
(3, 2, '2021-10-13 20:26:35', '2021-10-26 20:26:35', '2021-10-13 18:26:35', '2021-10-13 18:26:35'),
(7, 2, '2021-10-13 20:23:51', '2021-10-27 20:23:51', '2021-10-13 18:23:51', '2021-10-13 18:23:51'),
(8, 3, '2021-10-13 20:27:12', '2021-10-30 20:27:12', '2021-10-13 18:27:12', '2021-10-13 18:23:51'),
(10, 1, '2021-10-13 20:25:33', '2021-10-25 20:25:33', '2021-10-13 18:25:33', '2021-10-13 18:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `apartment_id`, `sender_email`, `sender_fullname`, `msg`, `created_at`, `updated_at`) VALUES
(1, 10, 'Artepovera@gmail.com', 'Mario De Lillo', 'Ciao vorrei sapere se l\'appartamento è disponibile per 2 mesi se si bello se no male ', '2021-10-13 18:28:09', '2021-10-13 18:28:09'),
(2, 10, 'Francobrutto@gmail.com', 'Franco Brutto', 'salve mi farebbe molto piacere avere informazioni più dettagliate sull\'appartamento ', '2021-10-13 18:31:33', '2021-10-13 18:31:33'),
(3, 7, 'emailfalsa@gmail.com', 'Simona Ventura', 'Mi dica ma nell\'appartamento è compresa la colazione a letto no perchè sono molto pigra', '2021-10-13 18:35:10', '2021-10-13 18:35:10'),
(4, 3, 'Maurizio@gmail.com', 'Maurizio Costanzo', 'Ciao vorrei sapere come siete messi a sciarpe e se in caso possiate prestarmene alcune ve ne sarei molto grato ', '2021-10-13 18:40:06', '2021-10-13 18:40:06'),
(5, 10, 'Dragonborn@gmail.com', 'Giorgio Gogi', 'Ciao vorrei sapere quante persone sono accessibili dentro la casa e se sono permessi cani', '2021-10-13 18:43:57', '2021-10-13 18:43:57'),
(15, 3, 'bob@mail.com', 'bob doe', 'Salve, sono interessato ad affittare il vostro appartamento per venirci a festeggiare il capodanno, sarebbe libero per quel periodo?', '2021-10-21 11:46:51', '2021-10-21 11:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_30_145225_update_users_table', 1),
(5, '2021_09_30_151112_create_apartments_table', 1),
(6, '2021_09_30_153715_create_sponsors_table', 1),
(7, '2021_09_30_154323_create_apartment_sponsor_table', 1),
(8, '2021_09_30_155041_create_views_table', 1),
(9, '2021_09_30_160051_create_services_table', 1),
(10, '2021_09_30_160421_create_apartment_service_table', 1),
(11, '2021_09_30_160930_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'WiFi', '2021-10-13 15:40:09', '2021-10-13 15:40:09'),
(2, 'Posto macchina', '2021-10-13 15:40:09', '2021-10-13 15:40:09'),
(3, 'Piscina', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(6, 'Vista mare', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(7, 'Asciugacapelli', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(11, 'Acqua calda', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(12, 'Gel doccia', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(14, 'Biancheria da letto', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(17, 'Ferro da stiro', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(18, 'TV', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(21, 'Climatizzatore', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(22, 'Riscaldamento', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(25, 'Estintore', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(28, 'Cucina', '2021-10-13 15:40:10', '2021-10-13 15:40:10'),
(29, 'Frigorifero', '2021-10-13 15:40:10', '2021-10-13 15:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_span` smallint(5) UNSIGNED NOT NULL,
  `price` double(5,2) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `time_span`, `price`, `name`, `created_at`, `updated_at`) VALUES
(1, 24, 2.99, 'Silver', '2021-10-13 16:23:29', '2021-10-13 16:23:29'),
(2, 72, 5.99, 'Gold', '2021-10-13 16:23:29', '2021-10-13 16:23:29'),
(3, 144, 9.99, 'Platinum', '2021-10-13 16:23:29', '2021-10-13 16:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `birth_date`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pinco', 'pallo', '2005-02-09', 'pinco@mail.it', NULL, '$2y$10$cmfw17B7j026bFWXn/g2IObNuzzb.d34.xhwaViGxjjnK8HhQYl2O', NULL, '2021-10-13 15:30:43', '2021-10-13 15:30:43'),
(2, 'pippo', 'baudo', '1988-02-03', 'pippo@gmail.com', NULL, '$2y$10$OsfcxpVuiWBhFqE/b.Z7oOWF4GdQeruSHXk1mxCysAbypCp00xgXu', NULL, '2021-10-13 16:12:30', '2021-10-13 16:12:30'),
(11, 'Luca', 'Rissa', '2002-02-21', 'luca@mail.com', NULL, '$2y$10$yObppXNC/jGPI48U.gjFlulCZKmTVMuoRQ4bzEsax/ORE.e0ygELG', NULL, '2021-10-21 11:47:44', '2021-10-21 11:47:44');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `ip_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartments`
--
ALTER TABLE `apartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartments_user_id_foreign` (`user_id`);

--
-- Indexes for table `apartment_service`
--
ALTER TABLE `apartment_service`
  ADD PRIMARY KEY (`apartment_id`,`service_id`),
  ADD KEY `apartment_service_service_id_foreign` (`service_id`);

--
-- Indexes for table `apartment_sponsor`
--
ALTER TABLE `apartment_sponsor`
  ADD PRIMARY KEY (`apartment_id`,`sponsor_id`),
  ADD KEY `apartment_sponsor_sponsor_id_foreign` (`sponsor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_apartment_id_foreign` (`apartment_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_apartment_id_foreign` (`apartment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartments`
--
ALTER TABLE `apartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartments`
--
ALTER TABLE `apartments`
  ADD CONSTRAINT `apartments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `apartment_service`
--
ALTER TABLE `apartment_service`
  ADD CONSTRAINT `apartment_service_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `apartment_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `apartment_sponsor`
--
ALTER TABLE `apartment_sponsor`
  ADD CONSTRAINT `apartment_sponsor_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `apartment_sponsor_sponsor_id_foreign` FOREIGN KEY (`sponsor_id`) REFERENCES `sponsors` (`id`);

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `apartments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
