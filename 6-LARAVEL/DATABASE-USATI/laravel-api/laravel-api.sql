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
-- Database: `laravel-api`
--
CREATE DATABASE IF NOT EXISTS `laravel-api` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `laravel-api`;

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
-- Struttura della tabella `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `leads`
--

INSERT INTO `leads` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'simone', 'io@io.it', 'ciao', '2023-05-08 13:59:12', '2023-05-08 13:59:12'),
(2, 'Cianuro', 'poi@gmail.com', 'prova invio mai 2', '2023-05-08 14:03:55', '2023-05-08 14:03:55'),
(3, 'Cianuro', 'poi@gmail.com', 'prova invio mai 3 strutturata', '2023-05-08 14:20:40', '2023-05-08 14:20:40'),
(4, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:01', '2023-05-09 04:59:01'),
(5, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:04', '2023-05-09 04:59:04'),
(6, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:07', '2023-05-09 04:59:07'),
(7, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:10', '2023-05-09 04:59:10'),
(8, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:12', '2023-05-09 04:59:12'),
(9, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:14', '2023-05-09 04:59:14'),
(10, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:16', '2023-05-09 04:59:16'),
(11, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:19', '2023-05-09 04:59:19'),
(12, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:21', '2023-05-09 04:59:21'),
(13, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:23', '2023-05-09 04:59:23'),
(14, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:25', '2023-05-09 04:59:25'),
(15, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:28', '2023-05-09 04:59:28'),
(16, 'simone', 'pio@gmail.mio', 'bgcdiuewghcdiewh', '2023-05-09 04:59:30', '2023-05-09 04:59:30'),
(17, 'uoi', 'wqsd@gma.oi', 'oiooi', '2023-05-09 05:01:30', '2023-05-09 05:01:30'),
(18, 'hi', 'hi@hi.xi', 'crecdmnwepo', '2023-05-09 05:05:23', '2023-05-09 05:05:23'),
(19, 'fi', 'so.so@go.oi', 'edewq', '2023-05-09 05:06:06', '2023-05-09 05:06:06'),
(20, 'io', 'kjklj@k.oi', ',kòlok', '2023-05-09 05:06:57', '2023-05-09 05:06:57'),
(21, 'kljkljlk', 'jlkj@jlkj.mo', '54654564', '2023-05-09 05:08:01', '2023-05-09 05:08:01'),
(22, 'edfew', 'ewdfew@jk.i2', '2sw1\\', '2023-05-09 05:09:20', '2023-05-09 05:09:20'),
(23, 'kòojk', 'kpokj@jkl.oi', '4546', '2023-05-09 05:11:09', '2023-05-09 05:11:09'),
(24, 'revr', 'rev@jlk.oi', 'vrevkerèp', '2023-05-09 05:13:24', '2023-05-09 05:13:24'),
(25, 'hkjlhk', 'dcsc@jlkhlk.it', '5465465456', '2023-05-09 05:15:48', '2023-05-09 05:15:48'),
(26, 'vrpèekv', 'kjpo@jkl.oi', 'pioujpoòl', '2023-05-09 05:16:49', '2023-05-09 05:16:49'),
(27, 'hu9', 'opo@ppoi.oi', 'kòlkjòl', '2023-05-09 05:20:09', '2023-05-09 05:20:09'),
(28, 'peowkfcpowe', 'dcffc@jkj.lk', 'kòok', '2023-05-09 05:26:39', '2023-05-09 05:26:39'),
(29, 'kop', 'kopkp@kk.oi', 'jklj', '2023-05-09 05:27:34', '2023-05-09 05:27:34'),
(30, 'hkljhl', 'jkljkl@j.op', 'okopkkp', '2023-05-09 07:08:17', '2023-05-09 07:08:17'),
(31, 'bndkjfgbhdjk', 'kjbhkj@io.oi', 'opjopjko', '2023-05-09 08:06:58', '2023-05-09 08:06:58'),
(32, 'frwef', 'efewqfewf@kskq.it', 'fbvfdxsaxsaXWXWQX', '2023-05-09 14:24:37', '2023-05-09 14:24:37'),
(33, 'regreg', 'ergre@dkjqwh.op', 'wqdwqdwffewwq', '2023-05-09 14:32:15', '2023-05-09 14:32:15'),
(34, 'grfger', 'refer@djhwqhdc.io', 'qwedfewqdeqdqwdqwd', '2023-05-09 15:27:08', '2023-05-09 15:27:08'),
(35, 'Simone', 'buzzeosimone@hotmail.com', 'prova invio mail con markdown', '2023-05-10 09:33:44', '2023-05-10 09:33:44'),
(36, 'stronzo', 'kpokpokpo@gshuajds.com', 'kpokpokpoe tr43trfwe wert 4e w weweq', '2023-06-02 06:56:17', '2023-06-02 06:56:17');

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
(5, '2023_04_20_132657_create_projects_table', 1),
(6, '2023_04_26_141438_create_types_table', 1),
(7, '2023_04_26_143605_add_type_id_to_projects_table', 1),
(8, '2023_04_27_131113_create_technologies_table', 1),
(9, '2023_04_27_135227_create_project_technology_table', 1),
(10, '2023_05_05_171655_add_cover_image_to_projects_table', 2),
(11, '2023_05_08_133800_create_leads_table', 3),
(13, '2023_05_08_143421_create_leads_table', 4);

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
  `type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `projects`
--

INSERT INTO `projects` (`id`, `type_id`, `title`, `customer`, `description`, `url`, `slug`, `cover_image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Voluptas at rerum.', 'Lilliana Johns', 'Consequatur architecto ea unde. Sequi in cumque distinctio est voluptatem ut quam. Enim debitis ad ducimus temporibus enim non. Asperiores rerum sed minima ut porro. Officiis beatae facilis dolore qui. Voluptas eum dolorem voluptate ipsam provident quos omnis. Et eos qui est. Veniam molestias ut molestias odio aut illo nihil. Facere commodi nemo impedit iure tempora aut laboriosam. Id et rerum veniam non explicabo et. Aspernatur voluptatem accusantium doloribus tempora vel vitae aperiam unde. Quibusdam non eligendi ut. Eos qui cumque sit voluptate in recusandae. Eum magni voluptates officiis dolorem dolore. Iste odit autem non fugit earum fuga. Exercitationem perspiciatis laudantium consequuntur voluptate provident labore est. Modi modi iure repellat eius. Est aspernatur eum autem. Vel cum pariatur facere autem est quia officiis. Itaque non nam dolor. Saepe ut cumque et. Voluptas laborum minima et animi dolorum qui esse. Labore tempora nulla quisquam voluptatem tempora. Est consequatur aperiam sit. Et consequatur velit veritatis excepturi inventore rerum et vitae. Veniam ut molestias consectetur tenetur iusto. Et facilis architecto quibusdam officiis. Rerum architecto molestiae aperiam velit est sed. Voluptatibus optio eos voluptas totam exercitationem. Maxime modi exercitationem ea sit magni optio. Adipisci possimus ut et. Dolorem ea deleniti at perspiciatis. Eum molestiae saepe reprehenderit nesciunt beatae. Fugiat aut et tempore sed debitis accusantium. Maiores autem est nesciunt ipsa est. Molestiae repellat facere est ad aliquid. Aut illo tenetur blanditiis. Cum dolores accusantium illo voluptatum. Non a sint qui ad est fugiat. In odio quae qui quo aliquam vel nihil. Cupiditate aut debitis perferendis non. Nobis voluptatum beatae nemo asperiores. Voluptas rerum deleniti sequi nobis. Accusantium possimus voluptas consequatur natus quos ut soluta. Magnam voluptatem perspiciatis voluptas repellat molestias alias. Vero deleniti architecto sed eius facere atque in. Aliquid est dolor saepe sunt aut. Et sed est deserunt aliquid sit odio. A beatae cumque beatae ipsa aut. Sed est et non beatae. Ea itaque et consequuntur ratione. Animi non suscipit et consequuntur ea. Rerum sit cumque sapiente at quae provident quia. Similique molestiae error doloribus aut dolores accusamus. Velit perspiciatis vel assumenda ducimus. Natus animi quaerat suscipit quia et et voluptate.', NULL, 'voluptas-at-rerum', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(2, 2, 'Quia minus sit consequatur tempora.', 'Danial Larson', 'Doloribus ea at qui voluptate velit. Et natus quo saepe laboriosam. Aperiam reiciendis sed magnam ut voluptates ut. Corporis cupiditate corrupti suscipit ipsam impedit sapiente. Quaerat est amet veniam aut dolor rerum. Vitae vel tempore molestiae possimus illo aut. Necessitatibus autem alias repellat. Eum nam in dolores magnam ex in. Labore qui enim accusamus quae quae ut. Non quia voluptatum harum omnis ad sed beatae. Reiciendis et consequatur rem alias. Et nulla illo aspernatur quidem quia debitis. Quia pariatur consequatur animi ipsum id. Qui dolores atque earum molestiae ipsa aspernatur. Quasi facere voluptatum ut qui. Corporis eius in ipsum est laborum quia. Dicta et quia sed dignissimos pariatur necessitatibus. Cumque ut qui ullam aperiam quia repudiandae vitae. Voluptatum eaque tempore quidem expedita. Enim reiciendis tempora aspernatur inventore rerum accusamus. Qui ullam a in maxime veritatis. Id nesciunt distinctio amet. Ipsam dolor illo aut dolorem. Nulla omnis est rem beatae explicabo sapiente. Nisi ullam placeat sint perferendis perspiciatis voluptatibus molestiae. Cumque quos ex aliquid. Modi vitae temporibus consequatur autem eligendi occaecati. Nesciunt qui aut et nemo aut voluptates. Aliquid est velit quae doloremque. Consequuntur culpa earum doloremque rerum rerum ducimus. Et velit harum necessitatibus iste rem voluptatum. Ducimus a placeat quae at ipsa porro exercitationem. Dolores quae et rerum et qui quaerat. Consequatur quisquam quis repellat laudantium ut et. Qui id doloribus eos ullam vel corrupti eaque. Soluta quibusdam ducimus dicta nihil. Velit quos aut asperiores. Minima officiis sint quidem natus praesentium corporis cumque. Sapiente repellat eum sunt occaecati maxime. Ut a omnis commodi qui error. Accusamus expedita officia et harum dolore quia soluta. Aut dolore dolorem quis pariatur quo. Soluta fugit quis rem eum sapiente qui sed. Vel voluptate eos possimus laboriosam repudiandae modi et hic. Sit enim qui sint molestiae excepturi. Quod voluptatem sunt id possimus. Repellendus at voluptatem ut dicta consequatur qui. Error ipsam iure alias minus rerum error omnis consequuntur. Illum facilis explicabo non. Deserunt nulla quia facilis voluptas repellat omnis. Voluptatum nulla voluptatem dolor reiciendis. Similique consequatur dolor est libero rem dolores nemo. Et inventore culpa earum sit velit quam nemo.', 'http://champlin.org/placeat-et-ea-ut-ut-sit.html', 'quia-minus-sit-consequatur-tempora', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(3, 5, 'Praesentium est.', 'Herminia Zboncak DDS', 'Rerum vero cumque qui vitae. Ipsa quis doloremque dicta non eaque aut suscipit. Et officia aliquam est voluptatem explicabo. Aliquam quia recusandae et officia aspernatur dolores autem pariatur. Nisi fuga eaque ullam eos est. Libero sunt aliquam est rerum. Id sequi repellat dicta quibusdam qui. Aperiam autem nam hic ea sed et qui. Aut et voluptatem vel alias. Ut inventore quae qui facilis est dignissimos dolorem quis. Maxime fuga qui ut voluptas iure corrupti. Omnis tempore saepe facilis repudiandae. Amet veritatis architecto corporis reprehenderit et et quo. Impedit earum maxime et non. Odio veniam et saepe amet. Id deleniti necessitatibus sequi molestias fugiat harum in. Quidem placeat id officiis inventore quis similique. Officiis et voluptatem molestiae delectus. Molestias quis sit sapiente dolore illo ullam tempora. Deleniti ducimus velit accusamus. Et dolores eveniet vero vero voluptates quis est. In aut voluptatibus veritatis quae suscipit. Dolorem quaerat molestias est excepturi mollitia dolorum. Id et earum alias est dolorum. Reprehenderit ut labore autem. Autem non est quo pariatur voluptas quia aut. Sunt debitis magnam fuga soluta beatae. Quia qui animi voluptatem voluptas. Necessitatibus voluptas voluptatem aliquid consequatur possimus dolorum. Nihil ad earum architecto dolor corporis ipsa eaque id. Voluptate dolorum aperiam placeat recusandae accusantium aut aut. Ut accusamus et veritatis unde voluptates perspiciatis. Sunt distinctio mollitia vitae ut aliquam voluptatum aut. Placeat ratione sunt rerum vel officia aperiam. Inventore fugit accusamus non quasi incidunt ut. Facilis vel porro quod quis odit. Iure nihil qui fugit ut. Vitae nihil alias saepe velit sit et eius. Debitis placeat temporibus maiores quia voluptatum ducimus. Velit dolorum dignissimos laudantium doloremque error aperiam illum. Deserunt architecto et veniam ut saepe. Corporis quod at optio est necessitatibus. Odio aut ea in molestias fuga iure iusto quis. Iusto aliquam pariatur qui maxime. Alias odit velit consequatur ipsam. Impedit dolorum suscipit sint recusandae harum. Est qui et et ullam qui distinctio. Aperiam est nihil excepturi ipsa qui debitis. Repellat nostrum ipsum molestiae est laudantium qui reiciendis temporibus. Consequatur adipisci officiis debitis voluptas quae culpa. Assumenda recusandae illo minima rerum.', 'http://gutmann.com/beatae-quas-corrupti-sed', 'praesentium-est', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(4, NULL, 'Nobis sed quas consequatur.', 'Blaise Turner', 'Consequatur reprehenderit animi culpa. Corrupti omnis est eum qui. Ut ipsum voluptatem sunt vel ullam hic adipisci non. Rerum pariatur facilis qui nisi amet debitis id. Vel recusandae dolore sed voluptates et cumque harum. Odit et odit eaque reiciendis nesciunt iusto. Rerum cumque dolores eos libero magnam sit laboriosam fugit. Voluptates amet voluptas repellendus et eaque. Illum sed placeat modi minus molestias. Saepe et temporibus et esse. Aut rerum mollitia non cumque quasi. Ipsa sed ad dolore voluptatibus beatae temporibus. Deserunt nam est sed. Est id incidunt molestiae totam at. Dolorum rerum sit commodi error non blanditiis. Eos assumenda ipsum expedita at quia. Quisquam fugit dolores hic rerum rem aperiam. At labore debitis ut dolorem error quae. Quasi in recusandae animi. Dicta quidem earum quas tenetur quia. Animi non quasi ipsa. Aut doloribus consequatur occaecati voluptate incidunt sed voluptates. Consectetur cupiditate neque autem sed deleniti. Perferendis recusandae iure eos autem occaecati. Illum accusantium id ipsa laborum. Nobis dicta quos enim laborum accusantium et. Quis optio id sint alias. Aliquam ullam harum distinctio quia sunt ipsa cumque. Odit eos est necessitatibus sed numquam deleniti. Repellat quasi saepe et laboriosam ex autem. Voluptates aliquam qui nostrum rerum numquam quis. Minima ad cupiditate repellat consequuntur in. Optio aut ducimus eaque sint veniam. Ut unde enim qui earum. Omnis dolores assumenda ipsum quis optio. Iusto aut vel et molestiae voluptas est sint. Architecto officia placeat ut et tempora libero. Earum quia doloribus expedita id. Dolore non autem quam. Nostrum commodi asperiores quibusdam adipisci pariatur soluta ut. Ad ducimus voluptas deserunt aperiam suscipit ut. Rem optio nostrum aliquid in fugiat culpa. Autem eveniet pariatur quia quia odio dolor. Id optio numquam assumenda reiciendis delectus omnis beatae. Nostrum accusantium iste occaecati eius ratione. Nam at quia iusto autem voluptatum. Sequi nihil dolorem ducimus aut eligendi assumenda dignissimos distinctio. Accusantium rerum vel nihil expedita dolorum eaque ut aut. Pariatur quibusdam voluptatibus mollitia. Reprehenderit est nam iusto saepe quas et et. A possimus placeat optio et est nam. Aut animi fugiat qui omnis sunt quam aspernatur. Dolorem omnis sed doloremque vitae quod et excepturi. Dolor ea excepturi perspiciatis dolores ab aliquam.', NULL, 'nobis-sed-quas-consequatur', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(5, NULL, 'Maxime ut culpa.', 'Anna Hand', 'Minima aut et nemo non temporibus rem ut. Qui voluptatem autem mollitia ut est minima. Labore rerum mollitia dolore. Nihil officia deleniti deleniti omnis est sint. Voluptatem mollitia recusandae sed et. Maxime aut expedita in ea accusamus sint. Odio voluptatibus repudiandae sit est quo eos explicabo. Ex voluptate ut earum doloribus voluptas fugit. Voluptatem quis repudiandae quae rerum consequuntur magnam voluptates eligendi. Optio ipsa qui exercitationem quidem. Ut est optio dolores quisquam. Molestiae blanditiis odit molestiae veniam et recusandae enim atque. Laboriosam a totam quo. A explicabo id suscipit neque consequuntur accusantium ratione et. Voluptate et quasi et quo totam ut. Dolor occaecati eaque dolores incidunt ea voluptas. Laboriosam laboriosam totam rerum ducimus quas. Quo qui minima officiis soluta dolorum. At et qui reiciendis consequatur repudiandae. Repellendus qui error sit asperiores totam ut ea. Laborum voluptatem sapiente eveniet ut consequatur rerum quos id. Tenetur quo soluta et. Incidunt consequatur repudiandae ut. Ab veritatis quod ut asperiores iure illo commodi. Odit earum quia vero qui totam deleniti. Qui sit assumenda est quo quo qui rerum. Occaecati optio iure ducimus nisi harum non. Nam voluptas dolorem et facilis. Et pariatur voluptatem et nihil blanditiis omnis. Aut eos est error velit aut libero voluptates architecto. Quaerat minus dolore officiis officia enim vitae nobis quae. Optio ea aliquid et et. Dignissimos deleniti maiores incidunt illum dolores nobis quasi. Ut recusandae facere voluptates et quaerat. Veniam eum est dolor est aut porro. Libero animi impedit quia recusandae voluptatem quisquam nulla. Voluptatibus asperiores earum aut non sint nemo quis. Veritatis laborum occaecati dolorum et quae quia. Consequatur et maxime ex animi ut error. Ipsum nesciunt non odio voluptatem animi molestiae odit cum. Eligendi perspiciatis debitis sit enim adipisci mollitia dolorem. Saepe eum et sapiente facere culpa est voluptates nobis. Qui excepturi consequatur qui. Molestias voluptatum rerum fugiat aliquam tempora. Fugit aut autem iste inventore. Voluptas omnis similique cumque sint. Rerum adipisci sed autem eum excepturi enim aut. Aspernatur laborum voluptatem dicta corporis optio dolores earum. Qui ut voluptatem natus fugit. Sed ut expedita eum beatae. Minima et quo maiores voluptatem reprehenderit ex cum ad.', 'http://stehr.com/id-exercitationem-non-omnis-numquam-delectus-minus-ut', 'maxime-ut-culpa', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(6, NULL, 'Odit est.', 'Mr. Jamil Weber V', NULL, NULL, 'odit-est', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(7, NULL, 'Ut distinctio cum rem.', 'Caesar Wiza', NULL, NULL, 'ut-distinctio-cum-rem', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(8, 5, 'Qui quia culpa est.', 'Casandra Schoen', 'Quidem voluptas eum ea ut. Amet qui voluptas provident corporis. Minima facilis quam fuga maxime veritatis. Consequatur atque qui quisquam dicta non sunt. Dolorem ut eligendi ea beatae eum magni tempore. Dolor autem aut ex quibusdam. Nihil consectetur amet quo natus ut odio. Dolores quidem est possimus maiores velit alias. Exercitationem quam ut veniam est et tempora. Molestias voluptatem maiores iusto ad eaque quia. Voluptatum optio doloremque maxime sit dolorum itaque aliquam. Sunt et sequi sunt velit qui non aspernatur. Quisquam assumenda nihil esse dignissimos. Quibusdam in eum aut fugiat. In et officia voluptatem atque. Id facilis magnam nihil pariatur consequatur. Sint dignissimos tempora iste iure eum perspiciatis dolores. Beatae dolor quod aut praesentium sit. Expedita id omnis corrupti voluptatem possimus et. Rerum vitae qui maiores non aperiam omnis ducimus nemo. Aperiam quo officiis et non totam reiciendis. Dolorem et laboriosam sit possimus. Inventore modi ab fuga et. Exercitationem aut exercitationem ut qui laudantium. Laboriosam adipisci non labore aut quae. Aspernatur aut omnis officiis officia id est. Voluptas maxime debitis amet ullam itaque ea deleniti. Voluptatum iusto quia rem quis eveniet at. Incidunt voluptatem eveniet vero sapiente expedita non expedita nobis. Excepturi eius nesciunt voluptates et. Commodi et laborum similique tempore labore natus debitis. Iste et sed ut odio autem. Laborum voluptatem nam aliquid at voluptatem ipsam alias. Et quis enim itaque aut mollitia illo. Minus molestiae amet fuga aut. Dolorem quis velit sint labore dolorem eos. Accusamus fuga necessitatibus nobis. Voluptatibus est sequi est voluptas et. Voluptatem sunt enim et nam quia. Deleniti voluptatem et mollitia voluptate. Ut tempore et molestiae voluptatum. Earum dolores vitae possimus. Assumenda et sint molestias aut accusantium repudiandae officiis. Error aliquam ea et et. Alias necessitatibus non delectus cum dolor. Sunt ea harum eius magnam minus suscipit. Quo et in rerum vero quaerat velit autem reprehenderit. Voluptas molestias adipisci doloribus ut ut sit. Laborum dolore tenetur eos ut. Et earum aut alias aliquid. Magni consequatur velit exercitationem dolores nobis. Eaque natus tempore placeat ullam aut. Rerum dolorem doloremque rerum minus nostrum nihil. At consectetur ex quia.', NULL, 'qui-quia-culpa-est', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(9, NULL, 'Quam quo.', 'Vito Feil', NULL, NULL, 'quam-quo', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(10, 6, 'Enim voluptate aut.', 'Izaiah Hyatt', 'Hic itaque ratione sit quas odit. Perferendis corporis non expedita quia qui vero. Voluptatem ducimus quibusdam tenetur iure quam iure. Autem vero possimus velit quasi placeat aut sed libero. Sapiente veritatis distinctio veniam voluptatem. Dignissimos dolor rerum nobis deserunt et necessitatibus mollitia voluptatibus. Consectetur assumenda officiis voluptas ex. Rerum quae deserunt nulla et iste cum eum. Laboriosam delectus libero quidem occaecati consequatur. Repellendus ut minus sint. Rem sunt dolore nam distinctio consequatur. Molestias explicabo magnam delectus dolorum sit ad non. Modi nam id itaque. Reiciendis quidem ipsam ut sed nostrum. Repudiandae voluptates exercitationem accusamus itaque a repellat. Error sunt dolores impedit reiciendis corrupti. Atque iste vero fuga autem saepe. Sed similique labore a amet ea tenetur ut. Dolor placeat repudiandae facere magni. Repellat assumenda excepturi ullam consequatur non fuga magnam nobis. Fugiat in sit mollitia dolorem voluptatem omnis. Temporibus officia illum esse expedita rem. Totam distinctio perferendis consequatur necessitatibus. Quo qui recusandae eos sed ipsam enim qui. Sed exercitationem in et quaerat dolorem. Repellat omnis quos cumque laboriosam dolor vel nulla. At est perspiciatis provident porro est nemo eos. Vel animi iusto ducimus tenetur sapiente omnis. Illum et placeat velit quas quos asperiores. Aut quam sit voluptas laborum dolores. Eum rerum et animi cumque veritatis quaerat odio qui. Est eaque facere est aut voluptatem quibusdam. At iste et delectus qui eos illo. Blanditiis ad doloribus voluptas velit architecto est. Quasi tempora et consequatur quam repellat voluptatibus natus. Soluta quo dolorem aut similique eos omnis. Dolores asperiores velit ut neque rerum sunt. Repudiandae velit iste eos iusto repellat. Sint animi quam magni unde voluptatem dolor dignissimos error. Est dolorem deleniti inventore velit dolores sint aliquam. Et aperiam rerum optio distinctio. Dolores est eveniet qui voluptatem sed eaque omnis. Ut aut velit eaque delectus eos. Laudantium aliquid quia voluptates. Quidem eveniet quidem facere quibusdam nam id et. Qui ut rerum temporibus eos beatae sunt. Et quidem veniam aut earum. In sunt tempore ut quidem quia. Recusandae voluptas sunt odit quod iure quaerat.', NULL, 'enim-voluptate-aut', NULL, NULL, '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(12, 3, 'img', 'cianuro', 'wdwdwq', 'http://127.0.0.1:8000/projects/create', 'img', 'uploads/7lmJXGiZUyqPikgOplqLjDGd9vA3FyvvWPsEj09e.jpg', NULL, '2023-05-05 19:14:47', '2023-05-05 19:14:47');

-- --------------------------------------------------------

--
-- Struttura della tabella `project_technology`
--

CREATE TABLE `project_technology` (
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `technology_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `project_technology`
--

INSERT INTO `project_technology` (`project_id`, `technology_id`) VALUES
(1, 4),
(3, 7),
(3, 8),
(4, 5),
(4, 3),
(4, 7),
(5, 9),
(6, 3),
(6, 8),
(7, 8),
(8, 7),
(8, 3),
(9, 1),
(9, 7),
(10, 2),
(10, 9),
(12, 7),
(12, 6),
(12, 3),
(12, 9),
(12, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `technologies`
--

CREATE TABLE `technologies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `technologies`
--

INSERT INTO `technologies` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'CSS', 'css', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(2, 'JavaScript', 'javascript', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(3, 'PHP', 'php', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(4, 'VUE', 'vue', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(5, 'SQL', 'sql', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(6, 'LARAVEL', 'laravel', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(7, 'BOOTSTRAP', 'bootstrap', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(8, 'TAILWIND', 'tailwind', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(9, 'SASS', 'sass', '2023-05-02 09:39:56', '2023-05-02 09:39:56');

-- --------------------------------------------------------

--
-- Struttura della tabella `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `types`
--

INSERT INTO `types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Demo', 'demo', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(2, 'FrontEnd', 'frontend', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(3, 'BackEnd', 'backend', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(4, 'FullStacked', 'fullstacked', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(5, 'Programming', 'programming', '2023-05-02 09:39:56', '2023-05-02 09:39:56'),
(6, 'Boolean', 'boolean', '2023-05-02 09:39:56', '2023-05-02 09:39:56');

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
(1, 'Cianuro-83', 'buzzeosimone@gmail.com', NULL, '$2y$10$BfAeuRSm.19v03m8f6Iu8OwJ/tTPBJN43vFYiDwhieoyPqbjhUURq', 'cKANVbk0BI1NEbx7hNxWRGpaerQn0nJ1Xy4UMGaXnm0FGF6dav3YvEE1Orn2', '2023-05-02 09:39:56', '2023-05-02 09:39:56');

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
-- Indici per le tabelle `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `projects_title_unique` (`title`),
  ADD KEY `projects_type_id_foreign` (`type_id`);

--
-- Indici per le tabelle `project_technology`
--
ALTER TABLE `project_technology`
  ADD KEY `project_technology_project_id_foreign` (`project_id`),
  ADD KEY `project_technology_technology_id_foreign` (`technology_id`);

--
-- Indici per le tabelle `technologies`
--
ALTER TABLE `technologies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `technologies_name_unique` (`name`);

--
-- Indici per le tabelle `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

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
-- AUTO_INCREMENT per la tabella `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `technologies`
--
ALTER TABLE `technologies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `project_technology`
--
ALTER TABLE `project_technology`
  ADD CONSTRAINT `project_technology_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `project_technology_technology_id_foreign` FOREIGN KEY (`technology_id`) REFERENCES `technologies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
