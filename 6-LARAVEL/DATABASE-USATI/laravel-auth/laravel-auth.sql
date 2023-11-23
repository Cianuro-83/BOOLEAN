-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Nov 23, 2023 alle 12:47
-- Versione del server: 5.7.39
-- Versione PHP: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-auth`
--
CREATE DATABASE IF NOT EXISTS `laravel-auth` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-auth`;

-- --------------------------------------------------------

--
-- Struttura della tabella `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_20_132657_create_projects_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `projects`
--

INSERT INTO `projects` (`id`, `title`, `customer`, `description`, `url`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Minima occaecati quos voluptas perspiciatis autem aliquam.', 'Antonietta Abshire', 'Error et molestias nesciunt. Quas incidunt commodi sunt fugit neque debitis. Laborum aliquam excepturi perferendis est ut voluptate voluptatem. Natus beatae illo et at sapiente et aliquid. Est omnis iure enim voluptas aut voluptate ipsum. Quia beatae autem beatae omnis assumenda aut voluptas delectus. Nostrum corrupti consequatur cum enim. Qui et dicta ullam consequatur nihil provident deserunt et. Quas nihil et nostrum possimus voluptas sint provident. Ut magni veritatis et iusto hic. Ratione consectetur in nesciunt et aperiam. Aut ea tempora in aliquid autem id sint. Magni qui dolor quidem laborum exercitationem recusandae facere. Sequi iusto non harum natus. Explicabo omnis ut et placeat. Necessitatibus reiciendis ut numquam ut laboriosam aspernatur dignissimos. Rem velit amet facere omnis qui nisi vel velit. Est magnam fugit quia cum id non veniam. Aut sit consectetur aut id dolores. Sit quisquam atque facilis consequatur mollitia rem. Cumque cupiditate aut corrupti iste provident voluptas quod. Ullam tempora assumenda et sed qui qui impedit. Aut molestiae voluptas pariatur sint nam. Sequi rerum in voluptatem tempora et enim quasi. Voluptas dolores sapiente tenetur optio est voluptatem ea. Eveniet nostrum inventore quia quae neque. Aut incidunt velit autem blanditiis molestiae asperiores. Praesentium et rerum debitis eum. Aspernatur maxime et tempore asperiores eos voluptates. Quibusdam qui perferendis facere molestiae ut ut. Amet eos dolorum magnam et optio quidem iure. Est exercitationem saepe minus quia quia nesciunt. Eaque repellat tenetur aut ea et. Expedita iure itaque enim nulla vel. Velit et autem alias dolore perferendis recusandae in. Voluptatem voluptatem voluptatibus nostrum itaque aut cumque. Voluptatum dolorem accusamus soluta sed laborum. Accusamus sed itaque molestias voluptate officia. Neque quibusdam optio iste. Eos cumque voluptas voluptate. Velit vel iusto harum. At reiciendis minus est et sit reprehenderit. Et eos exercitationem et. Perferendis et amet omnis assumenda. Consequuntur rerum quisquam vero qui est delectus. Pariatur maiores delectus qui est. Tenetur quibusdam cum sit libero et id. Minus deleniti sed omnis inventore pariatur saepe perspiciatis. Error aspernatur est natus est eos veniam at. Iure harum dolorem iste et quod. Tempora accusamus veniam sed praesentium ea necessitatibus. Porro omnis velit totam hic quasi exercitationem. At ipsa consequatur nisi tenetur veritatis itaque. Enim velit id iusto assumenda ea.', 'http://www.damore.com/tenetur-quasi-aut-amet-facilis-nostrum-at-sed-sequi', 'minima-occaecati-quos-voluptas-perspiciatis-autem-aliquam', '2023-04-26 05:20:58', '2023-04-26 05:18:26', '2023-04-26 05:20:58'),
(2, 'Eum rerum impedit unde quia a officia sit.', 'Roy McClure', NULL, 'https://www.wolf.net/blanditiis-voluptatum-voluptas-sapiente-illum-est-quis-qui', 'eum-rerum-impedit-unde-quia-a-officia-sit', '2023-04-26 05:21:00', '2023-04-26 05:18:26', '2023-04-26 05:21:00'),
(3, 'A odit fuga unde officiis cupiditate suscipit.', 'Donny Bradtke I', NULL, NULL, 'a-odit-fuga-unde-officiis-cupiditate-suscipit', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(4, 'Ea aliquid molestiae occaecati.', 'Obie Murphy', 'Magni sint temporibus quaerat voluptate. Temporibus aut aut quo eum. Voluptatibus quaerat quasi consequatur qui reprehenderit. Consequatur fuga ratione consectetur ea accusamus asperiores blanditiis. Tempora odio aut possimus pariatur libero voluptatem. Qui impedit nobis sunt eius. Soluta alias et eaque ut ducimus. Sed reiciendis provident sunt. Est provident similique est quia ut cumque provident. Vitae voluptates eaque consectetur quia. Nisi et est dolore saepe voluptatem. Odit hic ut eaque et saepe. Id sit atque atque inventore omnis dicta ducimus. Provident optio soluta in vel laborum quia illo. Eum aut enim ipsam et nihil. Inventore ut unde maiores voluptatem harum sit et nihil. Dignissimos in id voluptatem provident quo. Nihil est fugiat magnam officiis illum. Cumque ea dicta aspernatur ea aut. Sunt non aut omnis alias nemo. Laudantium illo modi rerum tempora. Laboriosam vel ut velit tempore fugiat incidunt. Accusantium maxime unde alias voluptatem. Dolorem in veritatis optio ut eius. Aut voluptatem omnis aut occaecati iusto facilis. Voluptatum voluptatibus alias aspernatur sint doloremque. Eum debitis et delectus porro. Tempore consequatur eos quia odio. Non hic temporibus at et itaque temporibus iure ullam. Fugit quia nobis eos ut nobis. Dolorem eum adipisci ut velit natus aut quasi. Excepturi quo magnam et ut dolor. Saepe ab odit officiis vitae voluptatum. Iure et maxime autem magni dolorum possimus. Laborum eligendi ut ut nihil praesentium sunt sit. Incidunt aliquam temporibus maxime animi. Ratione dolores similique alias vitae aspernatur et provident. Modi itaque aliquid sed quia optio est enim. Quia hic ipsum praesentium id. Consequatur ipsam quasi sunt omnis. Nihil necessitatibus illum ut dolorem. Et neque non explicabo saepe qui. Ipsa a voluptatem consectetur quo et sapiente magni in. Repudiandae distinctio fugit ipsum omnis. Aliquam quidem culpa laboriosam corporis voluptatem soluta. Accusantium suscipit itaque totam omnis explicabo eum temporibus. Voluptas quo quo nulla atque dolor sunt sit. Consequatur enim voluptate eligendi repellat tenetur pariatur praesentium. Dolores odit et nemo omnis. Minima rerum qui quibusdam rerum. In debitis ducimus similique voluptate. Quia veritatis quos tenetur nam suscipit sit culpa. Et dolor eaque sunt est nesciunt quis. Doloremque inventore enim aperiam laboriosam nihil qui harum.', NULL, 'ea-aliquid-molestiae-occaecati', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(5, 'Iusto dolor velit enim incidunt ea doloremque vero.', 'Emilie Collier', NULL, 'http://conroy.info/quis-asperiores-laudantium-distinctio-ipsam-quo.html', 'iusto-dolor-velit-enim-incidunt-ea-doloremque-vero', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(6, 'Ducimus in inventore a et cupiditate ut velit.', 'Turner Kihn', NULL, 'https://www.orn.com/assumenda-fugiat-accusantium-eveniet-mollitia', 'ducimus-in-inventore-a-et-cupiditate-ut-velit', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(7, 'Iste nihil assumenda molestiae quia placeat enim.', 'Prof. Mathew Daniel Sr.', NULL, 'http://www.rogahn.com/fugiat-iste-et-illum.html', 'iste-nihil-assumenda-molestiae-quia-placeat-enim', '2023-04-26 05:21:05', '2023-04-26 05:18:26', '2023-04-26 05:21:05'),
(8, 'Error dolorem sunt iure aut et.', 'Britney Gutkowski', 'Nemo dolores architecto quas minima sunt. Laboriosam quia rem voluptatem quo voluptatem ex vitae. Deleniti perspiciatis vitae vitae corrupti similique distinctio et. Et nobis esse aut adipisci. Cumque sapiente omnis quisquam corrupti sit. Magnam quisquam enim aperiam nam aperiam rem. Qui nihil laborum ut dolorem cupiditate. Culpa at qui quos quia. Nulla sunt odit error. Debitis incidunt assumenda sed error sunt. Ipsum aut vero ipsam itaque modi. Autem temporibus praesentium optio voluptatem neque accusamus deserunt. Atque et ipsum officia aut quidem quisquam qui. Soluta quas consequatur molestias consequatur adipisci amet. Molestiae placeat fugiat suscipit est. Sint est autem nulla et temporibus laboriosam blanditiis voluptates. Reprehenderit a magnam itaque perspiciatis illo velit numquam. Repudiandae provident maxime nulla modi. Quo fuga voluptatibus ut quia est. Eos et labore ut ipsa possimus repellat praesentium. Sapiente sit illum ut qui et rerum. Doloremque consequuntur perferendis sequi corrupti. Nihil aliquam porro totam ab sint autem. Aut recusandae est ducimus a iusto velit placeat mollitia. Asperiores facere qui consequatur repudiandae blanditiis qui. Hic eligendi quos facilis sed recusandae blanditiis quia. Ipsa repellendus similique animi laudantium aut libero provident. Omnis provident inventore fugiat. Inventore qui excepturi impedit eum consequatur. Et reiciendis commodi sit et omnis accusantium commodi. Temporibus dolorum beatae quis provident officia cupiditate rerum. Qui tempore dolores non magnam. Et tenetur repellat necessitatibus magnam et iure sint. Eum debitis molestiae ipsa consequatur officiis ipsum ipsam. Amet ratione porro id sequi veniam incidunt. Qui provident rerum consectetur adipisci aut beatae. Voluptatum quia quod necessitatibus vero a non non sapiente. Commodi dicta mollitia dolorum sed autem sed. Sit quis et vero natus tempore dolorum. Blanditiis similique totam cum nemo. Ut rerum quis ipsam placeat provident. Dolor dolores corporis praesentium velit molestiae. Quas laudantium dolor nihil aliquid corporis odio. Ut aut pariatur sint accusantium est id provident. Repellat illo voluptates qui fugiat. Laboriosam veritatis eaque animi reprehenderit hic aut. Aperiam quia blanditiis dolorem nemo. Suscipit ea enim voluptatem et minima ullam ipsum voluptas. Eum ut est iste rerum facilis consectetur expedita.', 'http://white.com/', 'error-dolorem-sunt-iure-aut-et', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(9, 'Omnis iusto eaque enim voluptatem.', 'Agustin Hagenes', 'Et voluptas recusandae rerum. Dignissimos sit ab laudantium modi. Molestiae voluptatum dolor architecto sequi omnis et quaerat. Reiciendis est ipsum sit perferendis. Et omnis quia distinctio ut quia omnis. At ea quam ut et est dicta aut. Laborum ratione a ut molestiae illo distinctio. Perferendis doloribus quidem praesentium atque quo voluptatem. Aliquid veniam doloremque ipsum fugiat consequatur. Dolorem exercitationem soluta voluptate est id et iure. Occaecati quas quibusdam et et. Magnam consequatur possimus delectus et animi. Rem dolores omnis laboriosam voluptatem iusto. Quis hic omnis quo voluptates magnam harum qui saepe. Cum omnis reprehenderit perferendis ullam culpa. Quasi aliquam beatae iusto quo id reiciendis voluptates. Accusantium necessitatibus accusantium accusantium voluptatum unde sunt. Laboriosam est tempora adipisci iure voluptatibus dolor. Ab praesentium eius eum perferendis impedit sit. Omnis consequatur officia suscipit qui consequuntur illum. Ut ipsa vel illo aperiam eius. Nesciunt et possimus tempore magni vel eius. Commodi alias quis non earum. Deleniti qui ex deleniti est. Quia dolor illum illum aliquam. Corrupti rerum ex possimus consequatur. Beatae perferendis aut ad eaque. Est eos delectus ut qui laudantium. Sit saepe ratione pariatur ut voluptas adipisci necessitatibus. Ex magni commodi aliquam molestias est optio. Voluptatem debitis et in autem. Doloribus et corrupti ut laboriosam. Minus tempore inventore placeat fuga delectus. Aut quas atque ullam aliquid fugit rerum error. Fuga voluptatem neque debitis deleniti. In odio atque qui vero commodi repellendus error. Adipisci placeat dolorem doloremque natus dolore. Consequatur sequi blanditiis atque nulla magnam ex. Labore ut eos adipisci ullam quasi voluptas eos. Ipsa nisi quibusdam rem hic cupiditate similique. Rerum voluptatibus ut deleniti aut qui iste possimus. Tenetur animi quod animi ipsa architecto. Natus dolorem amet ex eos aut. Illum iure occaecati quia repellendus impedit. Fugit molestias dolores tempora non rerum debitis. Velit quos ea corporis illo. Magnam tenetur et ullam quas quidem. Veritatis qui fuga repudiandae. Maxime iusto voluptas eius et quis. Enim debitis excepturi dolorem aut aperiam dolores. Vitae ea fugit ut velit nesciunt totam. Dolores dolor nam reiciendis saepe. Ut quisquam est officiis nihil provident.', 'http://www.russel.com/quibusdam-quam-ut-reprehenderit-a-ut-corporis', 'omnis-iusto-eaque-enim-voluptatem', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(10, 'Nulla officiis aspernatur adipisci eaque omnis.', 'Felicia Adams', 'Aut rem soluta tenetur veniam non voluptas dolor. Consectetur perspiciatis error ducimus dolor aut. Eius autem qui ut quae illum voluptatem. Est atque aut voluptate ea aut aliquid. Aut accusamus nostrum ratione voluptatem earum. Omnis quas et velit. Est eius sit dolore. Autem quia sit molestiae accusantium soluta. Repudiandae ut et quas consequatur incidunt. Voluptatibus eveniet consequatur eos laborum facilis. Consequuntur odio aut veritatis quia aspernatur autem. Alias aperiam et est ratione deleniti quibusdam. Excepturi est quam reiciendis necessitatibus. Voluptatum ut doloribus consectetur vel dolorem aut. Et sunt autem ea repellat sit eum nobis fugit. Nihil magnam quia ipsum consequuntur nemo. Totam molestiae qui ut eum doloribus eaque quis. Quia quo rem est voluptate dolorem ea praesentium ut. Voluptatem inventore quia maiores tempora qui nostrum vel hic. Suscipit deleniti dolores enim labore est nisi optio. Sed ut aut neque voluptatem. Fugiat corrupti molestiae ut et voluptatibus. Ipsa est qui recusandae quia pariatur nisi iste. Aut repudiandae similique voluptatem doloremque velit sed delectus. Sed beatae doloribus dicta eum voluptas. Quaerat quasi et ipsam omnis architecto velit. Quidem in excepturi temporibus eum nobis repellendus enim. Qui necessitatibus dolorum aut. Et blanditiis aliquam quibusdam iusto qui. Impedit ex sequi accusantium at et eos saepe eum. Odio eum quo et enim corrupti sint. Deserunt atque cum voluptas totam maiores ut ipsa accusantium. Laboriosam nihil corrupti itaque voluptatum non. Sapiente rerum magni quis sint ipsam consequatur. In id ut neque. Sunt hic odit et qui hic qui maxime magni. Suscipit illum et eum dolor rerum. Dolor reprehenderit architecto voluptatem iste ea quia. Earum quae aut sed esse voluptatibus ratione. Et maxime autem doloribus nemo. Quia esse et possimus. Eveniet nihil omnis optio architecto ut quisquam. Est veritatis eveniet culpa doloribus quia suscipit soluta iste. Corrupti officia non rerum voluptatem. Ex non voluptatum et rem. Officia doloribus voluptatem exercitationem molestiae. Doloremque odio fugiat ipsam unde voluptates sit. Ea quas quaerat qui maxime veniam. Aliquid repudiandae fugit doloremque ut ea aspernatur sapiente corporis. Molestias cupiditate eos molestias rerum repudiandae. Numquam eius hic doloremque provident ullam. Nobis deleniti et sed ea doloremque veritatis. Aliquam est neque ullam voluptatem facere.', NULL, 'nulla-officiis-aspernatur-adipisci-eaque-omnis', NULL, '2023-04-26 05:18:26', '2023-04-26 05:18:26'),
(11, 'Dicta temporibus autem odit et et.', 'Miss Lottie O\'Kon III', 'Voluptates laudantium recusandae dolor quaerat sed beatae quia unde. Consequatur exercitationem qui ut est. Repellendus velit amet vero at distinctio. Quia deleniti et omnis sapiente natus magni ut. Perferendis et exercitationem dolorem asperiores ut aspernatur qui. Placeat sapiente officiis alias. Quaerat quia id rerum ut aliquam. Temporibus iste nesciunt occaecati aut fugiat. Error dolore architecto ratione facilis corporis. Id delectus rerum est enim voluptas voluptatem. Nihil omnis sed consequatur numquam eius est asperiores. Hic in numquam impedit et. Distinctio exercitationem voluptatibus quis sed quod. Aut aut doloribus nobis autem. Ut ducimus et consectetur itaque. Explicabo maiores voluptatem nam dolor non. Doloremque est provident delectus quia molestiae. Sint recusandae assumenda nisi quibusdam aperiam deleniti pariatur. Neque voluptatum velit est eum aut nostrum. Doloremque sint aliquid sunt dolor quaerat fugiat. Eos omnis numquam maiores. Dignissimos cupiditate qui atque provident asperiores unde necessitatibus. Neque corporis consequuntur recusandae inventore. Libero a ea corrupti quam ratione. Dolores et veniam culpa perspiciatis non distinctio dolorum consequatur. Ratione eos et ratione in molestiae neque. Cumque sunt est commodi provident id deleniti. Sunt ipsum facere officiis nostrum quia odit maiores. Est facilis voluptas ad. Architecto ut dignissimos ullam modi quod in et. Quo aut esse id. Est sed veniam quisquam fuga quia totam est mollitia. Ea quo optio earum magni dolorum doloremque eum. Tempora officiis voluptas sed et libero qui. Incidunt cum est illo quo. Vitae aspernatur accusantium expedita deserunt sint quos ad. Officiis quia officia dolorem rerum et. Eos eos reprehenderit velit voluptas. Rerum rerum ipsa voluptas ipsa. Ut sed odio error ipsam. Omnis consequatur quos corrupti reprehenderit ut aut. Quia rerum ut quo voluptatibus veritatis at. Accusamus sed praesentium voluptatibus in officiis est tempore. Necessitatibus et quo consectetur distinctio nihil. Numquam quae temporibus explicabo ut quae. Delectus animi esse cum debitis. Nemo libero dolore placeat autem itaque fugiat sit. Inventore rerum ut dolor alias et esse qui. Debitis autem et eaque ratione mollitia officiis vel. Ullam at reiciendis nihil praesentium. Dolorem qui maiores odio. Mollitia et sequi sequi praesentium adipisci at itaque. Sunt dolorum repudiandae at delectus ex iure exercitationem dolorem.', 'http://gottlieb.biz/', 'dicta-temporibus-autem-odit-et-et', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(12, 'Qui esse aliquam dolorem quis dolor quia sequi.', 'Prof. Bryce Barrows PhD', NULL, NULL, 'qui-esse-aliquam-dolorem-quis-dolor-quia-sequi', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(13, 'Cupiditate repellat facere nihil necessitatibus.', 'Rowan Crooks', 'Ut temporibus culpa dolorem unde fuga quisquam. Omnis impedit dolorum praesentium voluptate modi non consequuntur non. Nihil culpa ea quos odit commodi soluta voluptatibus. Quas sed omnis laborum animi suscipit. Temporibus voluptas nobis ipsam eum. Aut quia ducimus architecto cumque quo iusto voluptas. Quia iure et perspiciatis eligendi molestias id inventore. Deleniti repellat labore inventore impedit suscipit. Repellat doloribus ut et ab nihil molestiae. Perferendis voluptas eos labore fugiat ut dolorem officiis inventore. Hic aut non et libero. Id consequatur quisquam laudantium dolores voluptas. Totam velit aliquam nemo consequatur corporis. Et amet vero occaecati accusamus corporis. Nobis quia placeat laborum deserunt. Molestias inventore quia in non quis. Iure eum quia rerum ullam ab sint. Laudantium qui nihil delectus. Corrupti impedit qui suscipit eum qui. Dolorem quas et id illo illum ullam non expedita. Reiciendis delectus dolor sit id voluptatibus perferendis. Enim cumque ipsa et illum delectus ab quis. Assumenda saepe aperiam consequatur est autem. Doloribus ea nulla doloribus perspiciatis. Error vitae ex iste odio vel aliquid. Similique officia ipsam est earum ipsum. Voluptate ut libero et molestias. Ex sed expedita eum consequatur odio. Illum distinctio qui possimus quam molestiae aliquam itaque. Enim doloribus assumenda nesciunt cupiditate ad suscipit ex. Laborum ut corrupti quis molestiae eum. Tenetur sit et qui voluptate. Molestiae architecto quia mollitia libero. Necessitatibus distinctio quam commodi ut perferendis est voluptate. Vitae consequuntur adipisci iure voluptatem iste dolores nam voluptates. Modi qui eos asperiores doloremque aut voluptatem consequatur est. Omnis velit eveniet ut qui quam. Quia ad nemo quo autem a molestiae similique fugiat. Impedit quas necessitatibus delectus maxime est exercitationem. Repellendus ut error aut eos. Et qui neque porro voluptas culpa voluptas. Accusantium delectus in iusto eos et et deserunt ipsum. Dolore quidem qui veniam consectetur cum rerum. Possimus expedita sunt ut veritatis iusto voluptatem placeat. Voluptates aut doloribus doloribus excepturi quos est. Sit fuga dolorum dolores voluptatibus et eos. Nobis vitae nostrum ut. Dolor dolor sit expedita voluptatum. Nulla error neque asperiores alias molestias iusto. Ab et deserunt facilis sint in incidunt. Veniam veritatis sequi deleniti quam aperiam voluptate repellendus.', NULL, 'cupiditate-repellat-facere-nihil-necessitatibus', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(14, 'Tempora qui quaerat ipsa quia officia aliquam.', 'Mr. Bill Wiza IV', NULL, 'https://www.williamson.com/sequi-voluptas-qui-beatae-delectus-impedit', 'tempora-qui-quaerat-ipsa-quia-officia-aliquam', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(15, 'Cumque temporibus cum enim eligendi sit cupiditate.', 'Mrs. Lurline Glover DDS', NULL, 'http://dare.com/', 'cumque-temporibus-cum-enim-eligendi-sit-cupiditate', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(16, 'Pariatur quia libero velit ullam facere veritatis.', 'Wilmer Bauch', NULL, NULL, 'pariatur-quia-libero-velit-ullam-facere-veritatis', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(17, 'Voluptate asperiores sint quia.', 'Morgan Wisoky', NULL, 'https://ankunding.org/et-sunt-quia-laboriosam-in-autem-iure-maxime.html', 'voluptate-asperiores-sint-quia', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(18, 'Voluptatibus ipsum sequi et.', 'Halle Volkman', NULL, NULL, 'voluptatibus-ipsum-sequi-et', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(19, 'Asperiores et odio est qui.', 'Darlene Ward', 'Ad in quisquam recusandae nihil nam. Iure et non aliquid laborum ducimus. Dicta non voluptas voluptatum consequuntur commodi minima consequuntur. Neque dolores et non voluptatibus aut nostrum. Qui doloribus ducimus impedit perspiciatis alias vero laudantium dolores. Possimus rem dicta praesentium nam recusandae maxime animi. A vero corrupti ut dignissimos. Atque ipsa itaque doloremque. Culpa dolores omnis expedita aut qui tempore nisi nam. Et ea non voluptatem doloremque consequatur. Non doloremque atque omnis ut. Adipisci labore optio sequi quaerat ipsam hic. Earum neque ut et. Tempora eius et illo nostrum. Enim occaecati atque nemo atque. Vitae tenetur consequatur earum. Eius harum iure distinctio provident. Eveniet commodi ut deserunt nemo laudantium. Et a veniam nesciunt aspernatur veritatis sunt dolore. Quo corporis quae minima expedita. Fuga officia soluta ab labore officia asperiores rem. Consequatur quia reiciendis animi ea sit veritatis. Omnis soluta et illo inventore recusandae atque consequatur. Necessitatibus nisi ratione voluptatum. Neque est dolorem ut pariatur molestias. Nesciunt qui doloribus consequatur ut praesentium porro ut. Et temporibus ab quas assumenda repudiandae in commodi. Architecto quisquam tempore tempore cumque atque in eum. Alias fuga saepe sit assumenda tenetur animi consequatur qui. In velit voluptatem et omnis dolorem. Magnam aut ut molestias quia consequuntur. Vel nulla eum et. Sunt dicta aut quaerat quia. Saepe libero dolorem ut dignissimos iure. A earum exercitationem non. Enim voluptatem quis labore. Voluptatem et minus dolor ut. Voluptatem ut nisi sed sint. Quis impedit suscipit nihil labore voluptas accusantium eum deleniti. Sunt porro totam quasi voluptas eligendi. Mollitia qui eveniet voluptatem qui magni consectetur praesentium. Aliquid voluptate ipsam eos est id. In quia voluptatem eius sint. Ullam aut quo neque numquam consequuntur. Ipsum in quis voluptates reiciendis ea. Quo maxime qui iure. Vitae ea suscipit sint cupiditate est. Neque et laborum aut laudantium qui eveniet. Sunt aliquam voluptatem qui animi. Eius excepturi rerum id quos quisquam. Sed molestias dolorum harum quae corporis. Eos necessitatibus voluptatibus doloribus quis ipsam officiis qui. Nulla tempora quibusdam hic ea. Voluptas modi natus dolor aliquam recusandae dolor. Aut consequatur et nihil. Quam nihil eius sed qui. Molestias soluta sunt animi autem. Iusto autem vitae doloremque vel earum expedita.', NULL, 'asperiores-et-odio-est-qui', NULL, '2023-04-26 05:19:42', '2023-04-26 05:19:42'),
(20, 'Quisquam rerum ea sapiente.', 'Willow Blick II', NULL, 'http://brakus.net/facere-iste-et-dignissimos-blanditiis-adipisci-ratione', 'quisquam-rerum-ea-sapiente', '2023-04-26 05:21:04', '2023-04-26 05:19:42', '2023-04-26 05:21:04');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cianuro-83', 'buzzeosimone@gmail.com', NULL, '$2y$10$JwCdAluqaSo1Ljq.pPx8XONTLQSfLJAS7TXx5hWmIfRAa/0w1s0sm', 'w6r2U3KE8GL5IPL9sgl3eejWZwY1RGjDKaPnz4VWnXb46A92CcNjvIQgfrm7', '2023-04-21 09:31:13', '2023-04-21 09:31:13');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indici per le tabelle `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indici per le tabelle `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_title_unique` (`title`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
