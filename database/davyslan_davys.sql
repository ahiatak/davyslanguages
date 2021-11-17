-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 16 nov. 2021 à 16:23
-- Version du serveur :  5.7.36
-- Version de PHP : 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `davyslan_davys`
--

-- --------------------------------------------------------

--
-- Structure de la table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `abouts`
--

INSERT INTO `abouts` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'abouts/October2019/B918YpwDTyZ41LJEByO8.jpg', 'A propos de nous', '<p>Davys\' Languages est un centre de formation, de traduction et d\'interpretation qui propose des services d&rsquo;expertise linguistique exceptionnels. Nous avons une &eacute;quipe exp&eacute;riment&eacute;e et une certification de qualit&eacute; internationale.</p>\n<p>Avec Davys\' Languages, vous b&eacute;n&eacute;ficier d\'une formation intensive en Anglais et Fran&ccedil;ais en cours du jour et du soir &agrave; un prix tr&egrave;s accessible.</p>\n<p>Vous &ecirc;tes au Togo ou &agrave; l\'exterieur, vous voulez suivre des cours d\'anglais pour vous perfectionner. N\'h&eacute;siter pas &agrave; nous contacter.</p>', '2019-10-17 18:05:00', '2019-11-01 05:33:33');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(16, 'ETSEY Charles', NULL, '96102768', 'Slt à vs', '2019-11-07 14:35:42', '2019-11-07 14:35:42'),
(17, 'Myra Koné', 'myra27kone@gmail.com', '96638744', 'Bonjour,\r\nJ’aimerais avoir quelque renseignements sur votre formation.\r\nLes attestations ou certificats délivrés sont ils reconnus ici et ailleurs?\r\nDans l’attente d’une réponse,\r\nBien à vous.', '2019-12-15 08:37:43', '2019-12-15 08:37:43'),
(18, 'Myra Koné', 'myra27kone@gmail.com', '96638744', 'Bonjour,\r\n\r\nJ’aimerais avoir quelque renseignements sur votre formation. Les attestations ou certificats délivrés sont ils reconnus ici et ailleurs? Dans l’attente d’une réponse, Bien à vous.', '2019-12-16 10:56:59', '2019-12-16 10:56:59'),
(19, 'Larissa Adonon', 'makafuiadonon01@gmail.com', '99981176', 'please can i get your information sheet', '2020-02-14 18:30:12', '2020-02-14 18:30:12'),
(20, 'TCHAWEDJI ALI ABDOU RAZACK', 'tchawedjiar@gmail.com', '93025077', 'Je voudrai m\'exprimer couramment en anglais \r\nComment je m\'inscris', '2020-03-04 05:40:15', '2020-03-04 05:40:15'),
(21, 'MOLLONG Atake', 'telouesso2012@gmail.com', '90973400', 'Bonjour à vous!\r\nj\'aimerai améliorer mon anglais en parler et en écrit; j\'espère que votre centre pourrait me venir en aide.\r\nA cet effet, j\'aimerai savoir à combien cela pourrait me revenir. brèf avoir les détails sur le coût de formation en cours de jour comme du soir et la durée de la formation pour me faire une idée afin de prendre une décision.\r\nMerci d\'avance et bonne suite de journée', '2020-03-10 11:17:31', '2020-03-10 11:17:31'),
(22, 'MOLLONG Atake', 'telouesso2012@gmail.com', '90973400', 'Bonjour à vous!\r\nj\'aimerai améliorer mon anglais en parler et en écrit; j\'espère que votre centre pourrait me venir en aide.\r\nA cet effet, j\'aimerai savoir à combien cela pourrait me revenir. brèf avoir les détails sur le coût de formation en cours de jour comme du soir et la durée de la formation pour me faire une idée afin de prendre une décision.\r\nMerci d\'avance et bonne suite de journée', '2020-03-10 11:17:33', '2020-03-10 11:17:33'),
(23, 'Rudolph', 'haag.rudolph@yahoo.com', '061 937 15 94', 'Hi, I thought you might be interested in email advertising that actually promises that you will make sales? Yes that\'s right we have clients for practically any industry! Have a look: https://bit.ly/guaranteed-sales-and-leads', '2020-04-10 00:05:57', '2020-04-10 00:05:57'),
(24, 'Marilyn', 'lockie.marilyn45@hotmail.com', '06-33287454', 'Looking to lose weight quick and without crazy diets or insane exercise programs? You\'re gonna love this: http://bit.ly/fixbellyfateasy', '2020-04-12 14:49:17', '2020-04-12 14:49:17'),
(25, 'Vernell', 'vernell.allan16@hotmail.com', '08061 44 47 76', 'The world after COVID19 is shaping up. Currently, individuals, organizations and businesses who have off-site channels are still operational. The future will be more of that as clients habits die hard. It will be social and virtual.\r\nhttps://bit.ly/chitchatchannel is the new social commercial experience. It merges its own ecommerce feature with its channel-type social media where you as presenter catalogue your posts or products for your channel participants creating a virtual commercial opportunity.\r\nIt is ideal for individuals, groups, enterprises and organizations. What do you have to lose ~Sign Up, get your channel and be positioned for the future at https://bit.ly/chitchatchannel', '2020-04-15 01:13:27', '2020-04-15 01:13:27'),
(26, 'Boris', 'barreras.boris@hotmail.com', '06-77433638', 'Would you like totally free advertising for your website? Take a look at this: http://bit.ly/submityourfreeads', '2020-04-21 01:58:46', '2020-04-21 01:58:46'),
(27, 'Guillermo', 'office.largeglobes.com@gmail.com', '070 7790 4002', 'Hello,\r\nOur company makes handmade Large world globes that can be customized for your brand, company or interior design https://bit.ly/www-largeglobes-com\r\nPlease let me know if you would be interested in a custom large world globe and we can send more information.\r\n\r\nThank you.\r\nBest regards,\r\nRemus Gall\r\nGlobemaker at www.largeglobes.com\r\nProject manager at Biodomes www.biodomes.eu\r\n+40 721 448 830\r\nSkype ID office@biodomes.eu\r\nStr. Vonhaz nr 2/a Carei, Romania\r\n\r\n-----------------------------\r\n\r\nIf you would like to Unsubscribe from our mailing list please reply with the subject unsubscribe', '2020-04-25 00:17:56', '2020-04-25 00:17:56'),
(28, 'Kerstin', 'kerstin.haygood@googlemail.com', '0681 250 84 30', 'Zero Cost advertising, submit your site now and start getting new visitors. Visit: http://www.submityourfreeads.xyz', '2020-04-29 01:54:34', '2020-04-29 01:54:34'),
(29, 'Quyen', 'info@davyslanguages.com', '070 7311 8137', 'Hey there\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.99 each.  If interested, please visit our site: pharmacyusa.online\r\n\r\nThanks and Best Regards,\r\n\r\nCentre de Formation en Anglais au Togo | Davys\'Languages - davyslanguages.com', '2020-04-29 18:26:41', '2020-04-29 18:26:41'),
(30, 'Angelina', 'angelina.harpster@gmail.com', '077 7310 2450', 'Sick of wasting money on PPC advertising that just doesn\'t deliver? Now you can post your ad on 1000s of ad websites and you only have to pay a single monthly fee. Get unlimited traffic forever! \r\n\r\nFor more information just visit: http://www.adpostingrobot.xyz', '2020-05-04 15:19:22', '2020-05-04 15:19:22'),
(31, 'Marvin', 'marvin.slowik@hotmail.com', '51-82-74-62', 'Interested in advertising that costs less than $50 per month and delivers hundreds of people who are ready to buy directly to your website? Visit: http://www.trafficmasters.xyz', '2020-05-04 15:40:33', '2020-05-04 15:40:33'),
(32, 'Sabone Deborah', 'deborahsabone@gmail.com', '93504244', 'J\'aimerais bien parler l anglais', '2020-05-12 11:11:09', '2020-05-12 11:11:09'),
(33, 'Cammy Pinkert', 'Suihkonen35897@gmail.com', NULL, 'Hello,\r\n\r\nWe have available the following, with low minimum order requirements - if you or anyone you know is in need:\r\n\r\n-3ply Disposable Masks\r\n-KN95 masks and N95 masks with FDA, CE certificate\r\n-Gloves\r\n-Disposable Gowns\r\n-Sanitizing Wipes\r\n-Hand Sanitizer\r\n-Face Shields\r\n-Oral and No Touch Thermometers\r\n-Swabs\r\n\r\nDetails:\r\nWe are based in the US\r\n\r\nAll products are produced in China\r\n\r\nWe are shipping out every day.\r\n\r\nMinimum order size varies by product\r\n\r\nWe can prepare container loads and ship via AIR or SEA.\r\n\r\nPlease reply back to lisaconnors.2019@gmail.com with the product you need , the quantity needed, and the best contact phone number to call you\r\n\r\nThank you\r\nLisa Connors\r\nPPE Product Specialist\r\n\r\n\r\nno further ad messages https://bit.ly/356b7P8', '2020-05-14 04:02:11', '2020-05-14 04:02:11'),
(34, 'Leah', 'atwood.leah@gmail.com', NULL, 'Hello, I was just on your website and submitted this message via your \"contact us\" form. The contact page on your site sends you these messages via email which is why you\'re reading my message right now correct? This is the most important accomplishment with any kind of advertising, getting people to actually READ your ad and that\'s exactly what I just accomplished with you! If you have an ad message you would like to blast out to lots of websites via their contact forms in the U.S. or anywhere in the world send me a quick note now, I can even focus on specific niches and my costs are very reasonable. Shoot me an email here: Phungcorsi@gmail.com', '2020-05-18 02:02:21', '2020-05-18 02:02:21'),
(35, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - davyslanguages.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across davyslanguages.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-05-19 16:16:55', '2020-05-19 16:16:55'),
(36, 'Royal', 'royal.koss@gmail.com', '0477 78 07 53', 'TRIFECTA! A novel that starches your emotional – erotic itch!\r\nAgainst a background of big business, deceit, frustration, oppression drives a wide range of emotions as three generations of women from the same family, turn to the same man for emotional support and physical gratification!\r\nA wife deceives her husband while searching for her true sexuality!\r\nWhat motivates the wife’s mother and son-in-law to enter into a relationship?\r\nThe wife’s collage age daughter, with tender guidance from her step-father, achieves fulfillment!\r\nDoes this describe a dysfunctional family? Or is this unspoken social issues of modern society?\r\nBLOCKBUSTER Opening! A foursome of two pair of lesbians playing golf. A little hanky – panky, while searching for a lost ball out of bounds. Trifecta has more turns and twist than our intestines.\r\nTrifecta! Combination of my personal experiences and creativity.\r\nhttps://bit.ly/www-popejim-com for “CLICK & VIEW” VIDEO. Send me your commits.\r\nAvailable amazon, book retailers.\r\nTrifecta! by James Pope', '2020-05-19 19:46:05', '2020-05-19 19:46:05'),
(37, 'Mia', 'franck.tamdhu@gmail.com', '705-669-3029', 'The clarification of the critical situation in the world may help Your business. We don\'t give advice on how to run it. We highlight key points from the flow of conflicting information for You to draw conclusions. \r\nWe call this situation: Big Brother operation.\r\n\r\nFact:  pandemics; \r\nAgenda:  control over the human population; \r\nAim:  reduction of the population; \r\nWho:  a group of vested interests. \r\nMeans: genetic engineering of viruses and vaccines; production of nanobots; mass-media communication satellites; big data; A.I.; global wi-fi. \r\nWays:  use and/or elaborate a pandemic carrier; mass media scares the population; load vaccines with nanobots; mandatory vaccination; control and direct humans. \r\n\r\nLearn more: bit.ly/2SQi3uY,  bit.ly/3e8RZmJThank You for the time of reading our unsolicited message! God bless You.', '2020-05-25 19:41:57', '2020-05-25 19:41:57'),
(38, 'Shiela', 'preciado.shiela@hotmail.com', '06-50726487', 'Good morning, I was just on your site and submitted this message via your \"contact us\" form. The contact page on your site sends you messages like this via email which is the reason you are reading my message at this moment right? This is half the battle with any kind of advertising, getting people to actually READ your advertisement and this is exactly what you\'re doing now! If you have something you would like to promote to lots of websites via their contact forms in the US or to any country worldwide let me know, I can even target your required niches and my pricing is super low. Write an email to: cluffcathey@gmail.com\r\n\r\nreport abuse here https://bit.ly/2yp4480', '2020-05-27 03:00:53', '2020-05-27 03:00:53'),
(39, 'Liliana', 'adame.liliana@gmail.com', NULL, 'Sick of paying big bucks for ads that suck? Now you can post your ad on 1000s of ad sites and you only have to pay a single monthly fee. Never pay for traffic again! \r\n\r\nTake a look at: https://bit.ly/adpostingfast', '2020-05-28 03:25:21', '2020-05-28 03:25:21'),
(40, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hello, my name’s Eric and I just ran across your website at davyslanguages.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-05-28 10:43:55', '2020-05-28 10:43:55'),
(41, 'Athena', 'athena.holiman@googlemail.com', '950 95 602', 'Do you want more people to visit your website? Receive thousands of people who are ready to buy sent directly to your website. Boost your profits super fast. Start seeing results in as little as 48 hours. For additional information Have a look at: https://bit.ly/traffic-for-your-site', '2020-05-31 02:09:06', '2020-05-31 02:09:06'),
(42, 'Antony', 'antony.hardwicke@gmail.com', '070 7254 3867', 'Interested in the latest fitness , wellness, nutrition trends?\r\n\r\nCheck out my blog here: https://bit.ly/www-fitnessismystatussymbol-com\r\n\r\nAnd my Instagram page @ziptofitness', '2020-06-03 20:59:59', '2020-06-03 20:59:59'),
(43, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at davyslanguages.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-06-04 10:20:43', '2020-06-04 10:20:43'),
(44, 'Amos', 'amos.mccasland@outlook.com', '06-42345809', 'ABOLISH REACTIVE DEPRESSION AND EMERGE FROM ITS DEEP, DARK, BLACK HOLE?\r\n• Do you feel this came from the beginnings of a dysfunctional family system?\r\n• Or did this come from the loss of a beloved job or loved one?\r\n• Or did this come from dire effects from the disease of Alcoholism?\r\n• Or did this come from the brainwashing attempts of a fearful and angry world, i.e. terroristic recruitment?\r\nDo you know that whatever caused this DEEP, DARK, BLACK HOLE OF DEPRESSION which may have come from a NERVOUS BREAKDOWN can cease its influence over your life? Yes, you do not have to live buried in negative thinking from the defeat from negative life experiences in your life. Please know that any tragic experiences from childhood to adulthood need no longer affect your chance to gain emotional wellbeing.\r\nInstead, now you have the opportunity to be HAPPY and in PEACEFUL CONTROL OF YOUR OWN DESTINY with only the memory of what once ailed you. Now is the time to overcome depression and begin to take control over your life. Not only that, you alone have the opportunity to reverse negative thinking and achieve your very own POSITIVE BELIEF SYSTEM.\r\nPLEASE NOTE: Your views on spirituality or religion will not prevent you from successfully implementing your own PARENTAL SELF-LOVE PROCESS to ACHIEVE PURPOSE, MOTIVATION, GOOD SELF-ESTEEM, SUCCESS, AND MORE. Yes, like Lin Tillman did, you too can ACHIEVE MORE THAN YOU ASKED FOR and make meaningful and healthy contributions to this planet.\r\nYou can learn more about Lin’s journey in her book The Invisible Girl & GOD, where she shares her TRUE STORY of how she healed herself from an agonizing depression with suicidal ideations.\r\nGO TO: https://bit.ly/Depression-self-help to learn more', '2020-06-04 14:57:27', '2020-06-04 14:57:27'),
(45, 'Kevin', 'mckeddie.kevin32@gmail.com', '(03) 9259 7017', 'How would you like to promote your website for free? Have a look at this: https://bit.ly/ads-for-free', '2020-06-10 13:57:26', '2020-06-10 13:57:26'),
(46, 'Chasity', 'hacker@showmethemoneybook.biz', '517-760-7182', 'PLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.davyslanguages.com and extracted your databases.\r\n\r\nHow did this happen?\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.\r\n\r\nWhat does this mean?\r\n\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your site http://www.davyslanguages.com was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index our targets.\r\n\r\nHow do I stop this?\r\n\r\nWe are willing to refrain from destroying your site\'s reputation for a small fee. The current fee is $2000 USD in bitcoins (BTC). \r\n\r\nSend the bitcoin to the following Bitcoin address (Copy and paste as it is case sensitive):\r\n\r\n1Q1DF9rJS6fNDSpiV2iEA46BS1mNEaELtC\r\n\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receiving this notice or the database leak, e-mails dispatched, and de-index of your site WILL start!\r\n\r\nHow do I get Bitcoins?\r\n\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM. We suggest you https://cex.io/ for buying bitcoins.\r\n\r\nWhat if I don’t pay?\r\n\r\nIf you decide not to pay, we will start the attack at the indicated date and uphold it until you do, there’s no counter measure to this, you will only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.\r\n\r\nThis is not a hoax, do not reply to this email, don’t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!\r\n\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', '2020-06-11 03:33:50', '2020-06-11 03:33:50'),
(47, 'Letha', 'boothman.letha@gmail.com', '0660 980 67 93', 'Hi,\r\n\r\n“According to Gartner’s recent research, data decays on an average of 7 to 9% every month because of various reasons.”\r\n\r\nDo you have a large database of contacts/companies in-house? If yes, is it up-to-date? \r\n\r\nWe can cleanse, validate and enrich your in-house database with relevant fields that can get you connected with the most premium target profiles of your choice.\r\n\r\nPlease let me know of a convenient time for a quick call to discuss this further. Also, feel free to seek any specific clarifications or assistance that we can help you with. \r\n\r\nThank you for your time, wishing you a great day ahead. \r\n\r\nBest Regards,\r\nDiana Baker\r\nMarketing Data Specialist\r\nJust Validate- https://bit.ly/www-justvalidate-com\r\nEmail: diana.baker@justvalidate.com', '2020-06-15 15:37:00', '2020-06-15 15:37:00'),
(48, 'Ernesto', 'ernesto.burden@outlook.com', '06-82823421', 'Do you want completely free advertising for your website? Take a look at this: http://www.free-ad-posting.xyz', '2020-06-21 02:00:21', '2020-06-21 02:00:21'),
(49, 'Bennie', 'bennie.strahan7@msn.com', '077 8731 4577', 'You Can DOUBLE Your Productivity For Life In Under 48 Hours\r\n\r\nAnd when it comes to changing your life, there\'s nothing more important to fixing your productivity.\r\n\r\nThink about it.\r\n\r\nIf you\'re twice as productive, then, as far as your environment supports it, you\'re going to make at least twice as much. However, the growth is almost always exponential. So expect even more income, free time, and the ability to decide what you want to do at any given moment.\r\n\r\nHere\'s the best course I\'ve seen on this subject:\r\n\r\nhttps://bit.ly/michaeltips-com\r\n\r\nIt\'s a fun and pretty short read... and it has the potential to change your life in 48 hours from now.\r\n\r\nMichael Hehn', '2020-06-21 06:01:52', '2020-06-21 06:01:52'),
(50, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hi, my name is Eric and I’m betting you’d like your website davyslanguages.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at davyslanguages.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-06-21 20:03:00', '2020-06-21 20:03:00'),
(51, 'DAUMENYO Noelie', 'noelie97akpene@gmail.com', '90426562', 'J\'aimerai bien apprendre à parler couramment l\'anglais', '2020-06-23 14:58:42', '2020-06-23 14:58:42'),
(52, 'DAUMENYO Noelie', 'noelie97akpene@gmail.com', '90426562', 'J\'aimerai bien apprendre à parler couramment l\'anglais', '2020-06-23 15:00:24', '2020-06-23 15:00:24'),
(53, 'Oliva', 'plumb.oliva83@gmail.com', '044 411 23 68', 'Would you be interested in an advertising service that costs less than $49 monthly and sends thousands of people who are ready to buy directly to your website? Check out: http://www.morevisitorsforyoursite.xyz', '2020-06-25 01:57:38', '2020-06-25 01:57:38'),
(54, 'Anglea', 'meeks.anglea@hotmail.com', '0524-3038017', 'No more paying tons of cash for overpriced Google advertising! I can show you a platform that costs only a small payment and creates an almost infinite volume of web visitors to your website\r\n\r\nFor all the details, check out: http://www.auto-ad-posting.xyz', '2020-06-25 02:13:59', '2020-06-25 02:13:59'),
(55, 'Ash', 'payment@techknowspace.com', '(888) 938-8893', 'Hello, \r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n \r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893 \r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\nhttps://twitter.com/techknowspace\r\nhttps://www.linkedin.com/company/the-techknow-space', '2020-06-26 00:28:35', '2020-06-26 00:28:35'),
(56, 'Susannah', 'badcoe.susannah@gmail.com', '0688 751 53 85', 'EROTICA becomes REALITY!!!\r\nStepping Stones to the ARCH De Pleasure\r\n     Men, put your feet in James Pope’s shoes, women put your feet in the women’s shoes I encounter, as I traveled the road from farm-to-MATTRESONAME!\r\nStepping Stones is my third novel in a 3, connected, series.  1- Post Hole Digger! 2-Trifecta! \r\nhttps://bit.ly/www-popejim-com “CLICK & VIEW videos.  Search: amazon.com, title - author', '2020-07-02 02:21:35', '2020-07-02 02:21:35'),
(57, 'Ash', 'ash@techknowspace.com', '(888) 938-8893', 'Hello, \r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board & Mainboard Repair\r\n\r\nWhen other shops say \"it can\'t be fixed\" WE CAN HELP!\r\n\r\nALL iPHONE 8 & NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n \r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands & Models - Custom Built - PC & Mac\r\nGame Consoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands & Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series & Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands & Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands & Models - iPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893 \r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\nhttps://twitter.com/techknowspace\r\nhttps://www.linkedin.com/company/the-techknow-space\r\n\r\n-------\r\n\r\nReport any unsolicited messages \r\n\r\nabuse@godaddy.com\r\nabuse@cloudflare.com\r\nhttps://supportcenter.godaddy.com/AbuseReport\r\nhttps://www.cloudflare.com/abuse/form\r\nhttps://forms.icann.org/en/resources/compliance/complaints/registrars/standards-complaint-form', '2020-07-03 10:19:53', '2020-07-03 10:19:53'),
(58, 'Doretha', 'comer.doretha@gmail.com', '0496 23 10 09', 'Hi, I was just visiting your website and filled out your \"contact us\" form. The feedback page on your site sends you these messages to your email account which is why you are reading through my message at this moment correct? This is half the battle with any type of online ad, making people actually READ your message and I did that just now with you! If you have an advertisement you would like to promote to lots of websites via their contact forms in the US or anywhere in the world let me know, I can even focus on particular niches and my pricing is very low. Shoot me an email here: Benja57mik57@gmail.com', '2020-07-05 01:49:42', '2020-07-05 01:49:42'),
(59, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hello, my name’s Eric and I just ran across your website at davyslanguages.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-07-05 02:03:34', '2020-07-05 02:03:34'),
(60, 'Howard', 'howard.fewings@gmail.com', '01.02.87.95.91', 'VEUILLEZ TRANSMETTRE CE COURRIEL À QUELQU\'UN DE VOTRE ENTREPRISE QUI EST PERMIS DE PRENDRE DES DÉCISIONS IMPORTANTES!\r\n\r\nNous avons piraté votre site Web http://www.davyslanguages.com et extrait vos bases de données.\r\n\r\nComment est-ce arrivé?\r\nNotre équipe a trouvé une vulnérabilité au sein de votre site que nous avons pu exploiter. Après avoir trouvé la vulnérabilité, nous avons pu obtenir vos informations d\'identification de base de données et extraire l\'intégralité de votre base de données et déplacer les informations vers un serveur offshore.\r\n\r\nQu\'est-ce que ça veut dire?\r\n\r\nNous passerons systématiquement par une série d\'étapes visant à nuire totalement à votre réputation. D\'abord, votre base de données sera divulguée ou vendue au plus offrant, qu\'ils utiliseront quelles que soient leurs intentions. Ensuite, si des e-mails sont trouvés, ils seront informés que leurs informations ont été vendues ou divulguées et que votre site http: //www.davyslanguages.com était en faute, endommageant ainsi votre réputation et ayant des clients / associés en colère avec tout ce qui est en colère les clients / associés le font. Enfin, tous les liens que vous avez indexés dans les moteurs de recherche seront désindexés en fonction des techniques de blackhat que nous avons utilisées dans le passé pour désindexer nos cibles.\r\n\r\nComment puis-je arrêter cela?\r\n\r\nNous sommes disposés à ne pas détruire la réputation de votre site pour une somme modique. Les frais actuels sont de 0.324 BTC en bitcoins (3000 $ USD).\r\n\r\nEnvoyez le bitcoin à l\'adresse Bitcoin suivante (copiez et collez car il est sensible à la casse):\r\n\r\n1HPTGdcnRDcQtfAeE8GPdMQT2NPczHZ6EW\r\n\r\nUne fois que vous avez payé, nous serons automatiquement informés qu\'il s\'agissait de votre paiement. Veuillez noter que vous devez effectuer le paiement dans les 5 jours suivant la réception de cet avis, sinon la fuite de la base de données, les e-mails envoyés et la désindexation de votre site commenceront!\r\n\r\nComment obtenir des Bitcoins?\r\n\r\nVous pouvez facilement acheter des bitcoins via plusieurs sites Web ou même hors ligne à partir d\'un Bitcoin-ATM. Nous vous suggérons https://cex.io/ pour acheter des bitcoins.\r\n\r\nEt si je ne paie pas?\r\n\r\nSi vous décidez de ne pas payer, nous commencerons l\'attaque à la date indiquée et la maintiendrons jusqu\'à ce que vous le fassiez, il n\'y a pas de contre-mesure à cela, vous finirez par gaspiller plus d\'argent en essayant de trouver une solution. Nous détruirons complètement votre réputation auprès de Google et de vos clients.\r\n\r\nCe n\'est pas un canular, ne répondez pas à cet e-mail, n\'essayez pas de raisonner ou de négocier, nous ne lirons aucune réponse. Une fois que vous avez payé, nous cesserons ce que nous faisions et vous ne nous entendrez plus jamais!\r\n\r\nVeuillez noter que Bitcoin est anonyme et personne ne saura que vous vous êtes conformé.', '2020-07-08 02:45:16', '2020-07-08 02:45:16'),
(61, 'Leticia', 'espinal.leticia@gmail.com', '(03) 6223 3682', 'Good afternoon, I was just visiting your site and submitted this message via your contact form. The feedback page on your site sends you these messages to your email account which is the reason you\'re reading through my message right now correct? That\'s half the battle with any type of advertising, getting people to actually READ your advertisement and I did that just now with you! If you have an advertisement you would like to blast out to millions of websites via their contact forms in the U.S. or to any country worldwide let me know, I can even focus on particular niches and my prices are super reasonable. Send a message to: destineylylazo75@gmail.com\r\n\r\ncease these ads here https://bit.ly/2VBnm2R', '2020-07-14 15:14:44', '2020-07-14 15:14:44'),
(62, 'Nickolas', 'sheehy.nickolas@gmail.com', '0367 3928259', 'Boda Medical USA would like to present the 5-Ply KN95 Mask- Visit website https://bit.ly/bodamedicalusa for more information. Or Use Coupon Code \'PRO10\' for 10% additional discount with free ground shipping from US warehouse directly.', '2020-07-14 21:25:40', '2020-07-14 21:25:40'),
(63, 'Reda', 'hux.reda@hotmail.com', '03.98.19.43.84', 'Sick of paying big bucks for ads that suck? Now you can post your ad on thousands of ad websites and you only have to pay a single monthly fee. Never pay for traffic again! \r\n\r\nFor all the details, check out: https://bit.ly/continual-free-traffic', '2020-07-16 16:55:28', '2020-07-16 16:55:28'),
(64, 'Ima', 'ima.eames@outlook.com', '250-206-6061', 'Do you want more people to visit your website? Get thousands of people who are ready to buy sent directly to your website. Boost your profits super fast. Start seeing results in as little as 48 hours. To get info Check out: https://bit.ly/more-website-visits', '2020-07-19 02:12:25', '2020-07-19 02:12:25'),
(65, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hi, my name is Eric and I’m betting you’d like your website davyslanguages.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at davyslanguages.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitor.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitor.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitor.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitor.com/unsubscribe.aspx?d=davyslanguages.com', '2020-07-20 10:46:14', '2020-07-20 10:46:14'),
(66, 'Berniece', 'mcilwraith.berniece@msn.com', '05.54.59.79.75', 'Outsource your graphic design, presentation / layout, video content, social media or advertising work to us.\r\nWe are a creative graphics and video content specialist focusing on visual content for your social media. Increase your customer contacts and engagement by at least 200%+ with our low cost plans and options.\r\n\r\nWe are an Award Winning dedicated social media manager and video content producer. We are Melbourne based and serving clients worldwide.\r\n\r\nReply to for a quick chat: sarap9productions@gmail.com', '2020-07-20 17:55:46', '2020-07-20 17:55:46'),
(67, 'Richard', 'richard.ransom@googlemail.com', '077 2757 5176', 'TITLE: Are YOU Building Your Own DREAMS Or Has SOMEONE ELSE Hired You To Build THEIRS? \r\n\r\nDESCRIPTION: Have you ever looked at sites like Google or Facebook and asked yourself…“How can they make SO MUCH MONEY when they aren’t even really selling any products?!?!”\r\nWell, Google and Facebook are cashing in on their platforms. They’re taking advantage of the millions of people who come to their sites…Then view and click the ads on their pages.\r\nThose sites have turned into billion dollar companies by getting paid to send traffic to businesses. \r\n\r\nDid You Know That More People Have Become Millionaires In The Past Year Than Ever Before? Did You Know You Can Make Money By Becoming A Traffic Affiliate?\r\n\r\nWatch Our Video & Discover The Easy 1-Step System Our Members Are Using To Get Paid Daily.\r\n\r\nURL: https://bit.ly/retirement-biz', '2020-07-26 01:08:51', '2020-07-26 01:08:51'),
(68, 'Jenifer', 'jarman.jenifer@hotmail.com', '06-57281048', 'Dear davyslanguages.com owner,\r\n\r\nIn an alarming 10 Dec 2019 article in CNN, Morgan Stanley has proclaimed \r\nthat we may see the “MOTHER OF ALL RECESSIONS” in 2020.  The recession has already started.\r\n\r\nWhat are you doing to prepare for it?\r\n\r\nClick here for a bona-fide solution http://www.zoomsoft.net/PerpetualIncome\r\n\r\nIn the recent minor recession of 2018, people lost jobs, livelihoods and \r\nassets. Imagine what would happen if the major one hits?\r\n\r\nIt will be an economic tsunami! You have an obligation to protect your \r\nfinances at any cost.\r\n\r\nHere’s a way to thrive in any market. http://www.zoomsoft.net/PerpetualIncome\r\n\r\nHere’s to a breakthrough 2020.\r\n\r\nBest,\r\n\r\nP.S. If you’re living from paycheck to paycheck, you’re in the most \r\ndanger if things go wrong and companies start cutting jobs.\r\nClick here for a Plan B that can even make you rich http://www.zoomsoft.net/PerpetualIncome\r\n\r\nUNSUBSCRIBE http://www.zoomsoft.net/unsubscribe', '2020-07-26 06:42:38', '2020-07-26 06:42:38'),
(69, 'Sandra', 'admin@davyslanguages.com', '(08) 8765 1192', 'Hi there\r\n\r\nBe Buzz Free! The Original Mosquito Trap.\r\n\r\n60% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping\r\n✔️LED Bionic Wave Technology\r\n✔️Eco-Friendly\r\n✔️15 Day Money-Back Guarantee\r\n\r\nShop Now: mosquitotrap.online\r\n\r\nKind Regards,\r\n\r\nCentre de Formation en Anglais au Togo | Davys\'Languages - davyslanguages.com', '2020-07-30 11:48:32', '2020-07-30 11:48:32'),
(70, 'Gretta', 'prewitt.gretta77@gmail.com', '02381 94 00 18', 'Advertise your site FREE here!: https://bit.ly/no-cost-ads', '2020-07-31 19:00:58', '2020-07-31 19:00:58'),
(71, 'Shanell Matthew', 'Derouchie1282@gmail.com', NULL, 'Good morning, I was just taking a look at your site and filled out your \"contact us\" form. The contact page on your site sends you messages like this to your email account which is why you\'re reading my message at this moment correct? That\'s the most important accomplishment with any type of online ad, getting people to actually READ your message and I did that just now with you! If you have an advertisement you would like to blast out to millions of websites via their contact forms in the US or anywhere in the world send me a quick note now, I can even focus on your required niches and my charges are very affordable. Reply here: noemarcelojf85@gmail.com', '2020-08-05 16:55:25', '2020-08-05 16:55:25'),
(72, 'Blaine', 'blaine.kotai@gmail.com', '06-92578776', 'Stem cell therapy has proven itself to be one of the most effective treatments for COPD (Chronic Obstructive Pulmonary Disorder). IMC is the leader in stem cell therapies in Mexico. For more information on how we can treat COPD please visit:\r\nhttps://bit.ly/copd-integramedicalcenter', '2020-08-06 13:45:29', '2020-08-06 13:45:29'),
(73, 'Morris', 'morris.miner26@hotmail.com', '09657 84 15 61', 'Advertise your website free here!: http://www.completely-free-ads.xyz', '2020-08-09 04:05:50', '2020-08-09 04:05:50'),
(74, 'Charline', 'charline.list@gmail.com', '201-641-0874', 'Say no to paying thousands of $$ for ripoff Facebook advertising! Let me show you a platform that charges only a small bit of money and provides an almost endless amount of visitors to your website\r\n\r\nTake a look at: http://www.organic-traffic-forever.xyz', '2020-08-11 17:58:00', '2020-08-11 17:58:00'),
(75, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, this is Eric and I ran across davyslanguages.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-08-13 08:03:56', '2020-08-13 08:03:56');
INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(76, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, this is Eric and I ran across davyslanguages.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-08-13 09:28:44', '2020-08-13 09:28:44'),
(77, 'Wanda', 'mobley.wanda@gmail.com', '418 8032', 'Want more visitors for your website? Get tons of people who are ready to buy sent directly to your website. Boost revenues quick. Start seeing results in as little as 48 hours. To get info Check out: http://www.easy-web-traffic.xyz', '2020-08-14 21:12:40', '2020-08-14 21:12:40'),
(78, NULL, 'edmundse13@gmail.com', '(302) 316-5112', 'Hello there!\r\n\r\nI was browsing on your website and it got me wondering if you\'re looking for cheap but high-quality web design services. I\'m a web designer working from home and have more than a decade of experience in the field. I\'m capable of developing a stunning and highly profitable website that will surpass your competitors.\r\n\r\nI\'m very proficient in WordPress and other web platforms and shopping carts. If you\'re not familiar with them, I\'d like an opportunity to show you how easy it is to develop your site on that platform giving you an incredible number of features. In addition to features that make doing business easier on your website, I can also include some elements that your site needs to make it more user-friendly and profitable.\r\n\r\nI\'m offering you a free consultation so that I can explain what design solutions best fit your needs, the rates, and what you can expect to get in return. If you\'re interested, kindly write back with your contact details and a time that be convenient for a call. I hope to hear back from you.\n\nThanks,\r\nEd Frez - Web Designer / Programmer', '2020-08-23 20:31:56', '2020-08-23 20:31:56'),
(79, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey, my name’s Eric and for just a second, imagine this…\r\n\r\n- Someone does a search and winds up at davyslanguages.com.\r\n\r\n- They hang out for a minute to check it out.  “I’m interested… but… maybe…”\r\n\r\n- And then they hit the back button and check out the other search results instead. \r\n\r\n- Bottom line – you got an eyeball, but nothing else to show for it.\r\n\r\n- There they go.\r\n\r\nThis isn’t really your fault – it happens a LOT – studies show 7 out of 10 visitors to any site disappear without leaving a trace.\r\n\r\nBut you CAN fix that.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know right then and there – enabling you to call that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nPlus, now that you have their phone number, with our new SMS Text With Lead feature you can automatically start a text (SMS) conversation… so even if you don’t close a deal then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nStrong stuff.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-08-24 02:01:23', '2020-08-24 02:01:23'),
(80, 'Bart', 'guy.bart@yahoo.com', '0676 823 44 86', 'Hello, I was just visiting your website and filled out your \"contact us\" form. The contact page on your site sends you messages like this to your email account which is why you\'re reading through my message at this moment right? This is the holy grail with any kind of advertising, getting people to actually READ your message and that\'s exactly what I just accomplished with you! If you have an ad message you would like to promote to tons of websites via their contact forms in the U.S. or anywhere in the world let me know, I can even target your required niches and my charges are very low. Shoot me an email here: juniordannyqprj@gmail.com', '2020-08-24 02:54:33', '2020-08-24 02:54:33'),
(81, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'My name’s Eric and I just found your site davyslanguages.com.\r\n\r\nIt’s got a lot going for it, but here’s an idea to make it even MORE effective.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitors.com for a live demo now.\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nAnd once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation… and if they don’t take you up on your offer then, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment. Don’t keep losing them. \r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-08-27 14:52:03', '2020-08-27 14:52:03'),
(82, 'Mollie', 'mollie.ruzicka16@gmail.com', '448 1498', 'Good afternoon, I was just checking out your website and submitted this message via your \"contact us\" form. The contact page on your site sends you these messages via email which is the reason you are reading through my message at this moment right? This is the most important achievement with any kind of online ad, making people actually READ your message and this is exactly what you\'re doing now! If you have something you would like to blast out to thousands of websites via their contact forms in the US or to any country worldwide let me know, I can even focus on specific niches and my prices are very reasonable. Reply here: danialuciano8439@gmail.com\r\n\r\nunsubscribe your website from our list https://bit.ly/3aELXYU', '2020-08-31 22:58:58', '2020-08-31 22:58:58'),
(83, 'Cameron', 'cameron.hamlet@gmail.com', '06-51750844', 'Have you had enough of expensive PPC advertising? Now you can post your ad on 1000s of ad websites and it\'ll cost you less than $40. These ads stay up forever, this is a continual supply of organic visitors! \r\n\r\nFor more information just visit: https://bit.ly/free-traffic-always', '2020-09-01 16:09:45', '2020-09-01 16:09:45'),
(84, 'Graig', 'anstey.graig53@yahoo.com', NULL, 'Want more visitors for your website? Receive hundreds of people who are ready to buy sent directly to your website. Boost revenues fast. Start seeing results in as little as 48 hours. To get info Have a look at: https://bit.ly/more-traffic-4-your-site', '2020-09-06 04:09:05', '2020-09-06 04:09:05'),
(85, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-09-07 22:50:22', '2020-09-07 22:50:22'),
(86, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-09-08 00:39:13', '2020-09-08 00:39:13'),
(87, NULL, 'BrandonWrightvb@gmail.com', '(809) 935-8912', 'Hello there! \r\n\r\nDifferent kinds of mobile apps can help your business, whether in terms of marketing, business efficiency, or both. Do you have a mobile app for your business? Potential clients nowadays are more comfortable doing business with companies whose mobile app does not only have an amazing look and feel, but also has some features that make doing most business processes easier. \r\n\r\nI\'m an app developer that can design and program on any platform (Android, iOs, etc). If you already have some ideas in mind, I\'d love to hear about them. I also have ideas of my own that I\'d really love to share with you. \r\n\r\nIf you\'d like to know more info, I\'ll send you my portfolio containing the apps that I\'ve made for my other clients, and I\'ll also show you data about how the app helps their business. Please reply to let me know what you think. Talk to you soon!\n\nBest Regards,\r\nBrandon Wright', '2020-09-08 20:06:49', '2020-09-08 20:06:49'),
(88, 'Cinda', 'cinda.mcgehee@outlook.com', '630-590-9150', 'Want completely free advertising for your website? Take a look at this: http://bit.ly/post-free-ads-here', '2020-09-15 15:42:24', '2020-09-15 15:42:24'),
(89, 'Kristan', 'cozart.kristan@googlemail.com', '070 4193 9638', 'Interested in an advertising service that costs less than $40 per month and delivers tons of people who are ready to buy directly to your website? For details visit: https://bit.ly/buy-more-visitors', '2020-09-18 01:35:28', '2020-09-18 01:35:28'),
(90, 'Uwe', 'uwe.krawczyk@hotmail.com', '0369 2979710', 'Want to post your advertisement on 1000\'s of Advertising sites monthly? One tiny investment every month will get you virtually unlimited traffic to your site forever!\r\n\r\nFor more information just visit: http://bit.ly/endless-traffic-forever', '2020-09-22 19:09:49', '2020-09-22 19:09:49'),
(91, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hi, my name is Eric and I’m betting you’d like your website davyslanguages.com to generate more leads.\r\n\r\nHere’s how:\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you as soon as they say they’re interested – so that you can talk to that lead while they’re still there at davyslanguages.com.\r\n\r\nTalk With Web Visitor – CLICK HERE http://www.talkwithwebvisitors.com for a live demo now.\r\n\r\nAnd now that you’ve got their phone number, our new SMS Text With Lead feature enables you to start a text (SMS) conversation – answer questions, provide more info, and close a deal that way.\r\n\r\nIf they don’t take you up on your offer then, just follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nThe difference between contacting someone within 5 minutes versus a half-hour means you could be converting up to 100X more leads today!\r\n\r\nTry Talk With Web Visitor and get more leads now.\r\n\r\nEric\r\nPS: The studies show 7 out of 10 visitors don’t hang around – you can’t afford to lose them!\r\nTalk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-09-28 01:24:30', '2020-09-28 01:24:30'),
(92, 'Lacy', 'elizondo.lacy@yahoo.com', '0372 6938258', 'Do you want more people to visit your website? Receive hundreds of people who are ready to buy sent directly to your website. Boost your profits super fast. Start seeing results in as little as 48 hours. To get details Visit: http://www.easy-web-traffic.xyz', '2020-10-03 17:48:47', '2020-10-03 17:48:47'),
(93, 'Tracie', 'contact@davyslanguages.com', '040 23 17 92', 'Good Morning\r\n\r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: thawking.online\r\n\r\nBest,\r\n\r\nCentre de Formation en Anglais au Togo | Davys\'Languages', '2020-10-03 21:21:11', '2020-10-03 21:21:11'),
(94, 'Jackson', 'cruz.jackson@gmail.com', '0693-9437478', 'No more paying tons of cash for overpriced online ads! I have a system that requires only a small bit of cash and provides an almost endless volume of visitors to your website\r\n\r\nFor all the details, check out: http://www.permanent-web-links.xyz', '2020-10-08 17:29:08', '2020-10-08 17:29:08'),
(95, NULL, 'masterdesign2create@gmail.com', '(478) 285-7709', 'Hello,\r\n\r\nI am reaching out to see if you are interested in redesigning or building a new website.  I am a web designer by trade and I\'m currently looking for new clients.  Let me know if you have any projects you need completed and I\'d love to help.  \n\nDamon Wolf\r\n\r\n\r\n\r\nUnsubscribe: If you\'d like me to remove you from any of these emails, kindly send me an email and let me know and I will remove your site from my list. Best Regards.', '2020-10-09 14:56:41', '2020-10-09 14:56:41'),
(96, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - davyslanguages.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across davyslanguages.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-10-10 02:07:47', '2020-10-10 02:07:47'),
(97, 'Zara', 'etter.zara@gmail.com', '091 882 39 33', 'No more paying thousands of dollars for expensive online ads! We have a system that charges only a tiny bit of money and creates an almost indefinite volume of visitors to your website\r\n\r\nFor more information just visit: http://bit.ly/no-cost-web-traffic', '2020-10-11 09:07:57', '2020-10-11 09:07:57'),
(98, NULL, 'sites2impress96@gmail.com', '(678) 661-1593', 'Hello there...  :)\r\n\r\nI just have a question.  I am a web designer looking for new clients and I wanted to see if you are interested in redesigning your website or making some upgrades.  I don\'t want to sound like I\'m \"tooting my own horn\" too much, but I can do some pretty amazing things, not only design-wise, but with adding features to your site that automate your business processes, or make your marketing phenomenally easier.  \r\n\r\nI\'d love to talk with you about some options if you\'re interested, so please let me know if you would like to know more about what I can do.  I\'ll be happy to send some info and setup a call.  \r\n\r\nThank you so much for reading this!\n\nCarmen Webb - Web Designer / Programmer\r\n\r\n\r\nI am not trying to spam you. If you\'d like me to remove you from any of my emails, please email me with the word \"remove\" in the subject and I\'ll exclude you from any further messages.', '2020-10-12 01:17:11', '2020-10-12 01:17:11'),
(99, NULL, 'sites2impress96@gmail.com', '(678) 661-1593', 'Hello there...  :)\r\n\r\nI just have a question.  I am a web designer looking for new clients and I wanted to see if you are interested in redesigning your website or making some upgrades.  I don\'t want to sound like I\'m \"tooting my own horn\" too much, but I can do some pretty amazing things, not only design-wise, but with adding features to your site that automate your business processes, or make your marketing phenomenally easier.  \r\n\r\nI\'d love to talk with you about some options if you\'re interested, so please let me know if you would like to know more about what I can do.  I\'ll be happy to send some info and setup a call.  \r\n\r\nThank you so much for reading this!\n\nCarmen Webb - Web Designer / Programmer\r\n\r\n\r\nI am not trying to spam you. If you\'d like me to remove you from any of my emails, please email me with the word \"remove\" in the subject and I\'ll exclude you from any further messages.', '2020-10-12 22:02:56', '2020-10-12 22:02:56'),
(100, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hello, my name’s Eric and I just ran across your website at davyslanguages.com...\r\n\r\nI found it after a quick search, so your SEO’s working out…\r\n\r\nContent looks pretty good…\r\n\r\nOne thing’s missing though…\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds – 7 out of 10 disappear almost instantly, Surf Surf Surf… then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to TALK with them - literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a try… it could be huge for your business.\r\n\r\nPlus, now that you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation pronto… which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-10-14 10:27:33', '2020-10-14 10:27:33'),
(101, NULL, 'sites2impress96@gmail.com', '(678) 661-1593', 'Hello there...  :)\r\n\r\nI just have a question.  I am a web designer looking for new clients and I wanted to see if you are interested in redesigning your website or making some upgrades.  I don\'t want to sound like I\'m \"tooting my own horn\" too much, but I can do some pretty amazing things, not only design-wise, but with adding features to your site that automate your business processes, or make your marketing phenomenally easier.  \r\n\r\nI\'d love to talk with you about some options if you\'re interested, so please let me know if you would like to know more about what I can do.  I\'ll be happy to send some info and setup a call.  \r\n\r\nThank you so much for reading this!\n\nCarmen Webb - Web Designer / Programmer\r\n\r\n\r\nI am not trying to spam you. If you\'d like me to remove you from any of my emails, please email me with the word \"remove\" in the subject and I\'ll exclude you from any further messages.', '2020-10-16 19:15:44', '2020-10-16 19:15:44'),
(102, 'Maira', 'prentice.maira@gmail.com', '079 8120 2159', 'Learn how to promote your site paying absolutely NADA!\r\n\r\nTake a look at this comprehensive list made up of the hottest new directory websites at this page >http://bit.ly/list-of-free-ad-sites', '2020-10-16 21:24:59', '2020-10-16 21:24:59'),
(103, NULL, 'masterdesign2create@gmail.com', '(478) 285-7709', 'Hello,\r\n\r\nI am reaching out to see if you are interested in redesigning or building a new website.  I am a web designer by trade and I\'m currently looking for new clients.  Let me know if you have any projects you need completed and I\'d love to help.  \n\nDamon Wolf\r\n\r\n\r\n\r\nUnsubscribe: If you\'d like me to remove you from any of these emails, kindly send me an email and let me know and I will remove your site from my list. Best Regards.', '2020-10-17 04:13:34', '2020-10-17 04:13:34'),
(104, NULL, 'sites2impress96@gmail.com', '(678) 661-1593', 'Hello there...  :)\r\n\r\nI just have a question.  I am a web designer looking for new clients and I wanted to see if you are interested in redesigning your website or making some upgrades.  I don\'t want to sound like I\'m \"tooting my own horn\" too much, but I can do some pretty amazing things, not only design-wise, but with adding features to your site that automate your business processes, or make your marketing phenomenally easier.  \r\n\r\nI\'d love to talk with you about some options if you\'re interested, so please let me know if you would like to know more about what I can do.  I\'ll be happy to send some info and setup a call.  \r\n\r\nThank you so much for reading this!\n\nCarmen Webb - Web Designer / Programmer\r\n\r\n\r\nI am not trying to spam you. If you\'d like me to remove you from any of my emails, please email me with the word \"remove\" in the subject and I\'ll exclude you from any further messages.', '2020-10-22 05:14:03', '2020-10-22 05:14:03'),
(105, 'Attiogbe Donald', 'attiogbedonald908@gmail.com', '90156086', 'Je veux avoir un niveau requis en anglais afin de poursuivre mes etudes aux USA', '2020-10-22 10:52:05', '2020-10-22 10:52:05'),
(106, 'Attiogbe Donald', 'attiogbedonald908@gmail.com', '90156086', 'Je veux avoir un niveau requis en anglais afin de poursuivre mes etudes aux USA\r\nUne idée sur le coùt de la formation et les horaires.', '2020-10-22 10:53:50', '2020-10-22 10:53:50'),
(107, NULL, 'circle357marketing@gmail.com', '(307) 228-0751', 'Hi there!\r\n\r\nI\'m a freelance creative web developer who helps small businesses like yours grow with the use of their site. I sent you this email because I\'d like to know if you\'re interested in affordable but high-quality web design services. I\'m an expert with the WordPress website platform, and I\'m also skilled with many other platforms and shopping carts as well. If you\'d like, I can show you some of my previous work to give you a better idea of what I am capable of accomplishing for the benefit of your business. \r\n\r\nIf you already have some design ideas in mind, I\'d like to know them and help you implement all of it to the site. I\'ve also got some ideas (of which I\'d love for you to hear) that will make use of what existing elements you have on your site and make it even better. I could also build you a completely new site with all the modern features that your business will need if that\'s what you prefer.\r\n\r\nI\'ll provide you with a free consultation over the phone in the next few days if you are interested. I\'ll share you some ideas, get your feedback and give you a proposal. I\'d really like to be of assistance and make the site better, so please reply about the best time to contact you. Talk to you soon! \n\nJeremy Russell\r\n\r\np.s. I don\'t want to annoy anyone, so if you\'d like to be removed from any of my emails, please just email me back with the word \"stop\" in the subject line and I\'ll exclude you from any further messages. Best Regards.', '2020-10-26 10:08:04', '2020-10-26 10:08:04'),
(108, 'Adeline', 'adeline.calloway27@gmail.com', '01.58.53.42.41', 'Good evening, I was just visiting your website and filled out your \"contact us\" form. The feedback page on your site sends you these messages to your email account which is the reason you\'re reading my message at this moment correct? That\'s the most important achievement with any kind of advertising, getting people to actually READ your message and that\'s exactly what I just accomplished with you! If you have an ad message you would like to blast out to tons of websites via their contact forms in the U.S. or to any country worldwide let me know, I can even target particular niches and my charges are very reasonable. Send a reply to: mateoroche9137@gmail.com\r\n\r\nstop spam https://bit.ly/2VBnm2R', '2020-10-27 20:05:47', '2020-10-27 20:05:47'),
(109, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with davyslanguages.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out davyslanguages.com.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-10-31 03:06:20', '2020-10-31 03:06:20'),
(110, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - davyslanguages.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across davyslanguages.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=davyslanguages.com', '2020-11-04 01:22:26', '2020-11-04 01:22:26'),
(111, 'Eric', 'eric@talkwithwebvisitor.com', '416-385-3200', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=davyslanguages.com', '2020-11-05 20:07:29', '2020-11-05 20:07:29'),
(112, 'Moshe', 'moshe.mcmahan@gmail.com', '06-89466188', 'Do you want to promote your website for free? Have a look at this: http://bit.ly/free-ad-posting', '2020-11-06 05:13:34', '2020-11-06 05:13:34'),
(113, 'Eric', 'ericjonesonline@outlook.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with davyslanguages.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out davyslanguages.com.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=davyslanguages.com', '2020-11-09 14:43:46', '2020-11-09 14:43:46'),
(114, 'Eric', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-11-12 14:25:57', '2020-11-12 14:25:57'),
(115, 'Blythe', 'babbidge.blythe@gmail.com', '79 657 66 52', 'Are You interested in advertising that costs less than $50 per month and delivers tons of people who are ready to buy directly to your website? Check out: http://bit.ly/buy-visitors-4-your-site', '2020-11-12 21:44:01', '2020-11-12 21:44:01'),
(116, 'Carmon', 'birmingham.carmon@yahoo.com', '01.68.54.48.27', 'Do you want to promote your website for absolutely no charge? Check this out: http://www.zerocost-ad-posting.xyz', '2020-11-16 21:25:50', '2020-11-16 21:25:50'),
(117, 'DOSSEH Kokoè Oriane Ginessa Mawulé', 'korginess15@gmail.com', '92672966', 'Bonjour, j\'aimerais suivre des cours d\'anglais en vue de préparer et passer l\'examen du TOEFL. Je voudrais donc savoir quelles sont les frais de formation et d\'examen au TOEFL. Merci\r\n\r\nCordialement', '2020-11-20 18:54:06', '2020-11-20 18:54:06'),
(118, 'DOSSEH Kokoè Oriane Ginessa Mawulé', 'korginess15@gmail.com', '92672966', 'Bonjour, j\'aimerais suivre des cours d\'anglais en vue de préparer et passer l\'examen du TOEFL. Je voudrais donc savoir quelles sont les frais de formation et d\'examen au TOEFL. Merci\r\n\r\nCordialement', '2020-11-20 18:54:09', '2020-11-20 18:54:09');
INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(119, 'ADZOH AFi Léontine', 'afileontinea@gmail.com', '92779145', 'J\'aimerais suivre la formation en anglais  pouriez- vous me donner le prix?', '2020-12-03 15:40:28', '2020-12-03 15:40:28'),
(120, 'Norbert ADJOGNON', 'norbertmawule@gmail.com', '91952355', 'Bonjour ,\r\nJ\'aimerais prendre des renseignements sur IELTS test en francais et anglais pour un voyage', '2020-12-11 22:43:26', '2020-12-11 22:43:26'),
(121, 'Eric', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2020-12-25 17:26:20', '2020-12-25 17:26:20'),
(122, 'David Egato', 'davidegato1@gmail.com', '+22892', 'Un message', '2020-12-30 10:50:24', '2020-12-30 10:50:24'),
(123, 'David Egato', 'davidegato1@gmail.com', '+22892', 'Un message', '2020-12-30 12:46:45', '2020-12-30 12:46:45'),
(124, 'David Egato', 'davidegato1@gmail.com', '+22892', 'V', '2020-12-30 12:52:32', '2020-12-30 12:52:32'),
(125, 'Dylan', 'dylan.bolling@gmail.com', '02654 70 36 06', 'Are you looking to promote your website for absolutely no charge? Check this out: https://bit.ly/totally-free-ads', '2021-01-02 01:25:00', '2021-01-02 01:25:00'),
(126, 'Eric', 'ericjonesonline@outlook.com', '555-555-1212', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found davyslanguages.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2021-01-17 20:24:34', '2021-01-17 20:24:34'),
(127, 'TSOGBE DAGBA KOSSI VENUNYE', 'agbemenya1984@gmail.com', '56115677', 'BONJOUR COMMENT ALLEZ VOUS', '2021-01-25 10:47:30', '2021-01-25 10:47:30'),
(128, 'Reina', 'reina.lemberg4@outlook.com', '(07) 4925 0414', 'Hi there\r\n\r\nI have just took a look on your SEO for domain: davyslanguages.com for its SEO Trend and saw that your website could use a push.\r\n\r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support.\r\n\r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://speed-seo.net/product/monthly-seo-package/\r\n\r\nStart enhancing your sales and leads with us, today!\r\n\r\nregards\r\nMike Lemberg\r\nSpeed SEO Digital Team\r\nsupport@speed-seo.net', '2021-01-28 07:54:55', '2021-01-28 07:54:55'),
(129, 'FOLLY Foli Eyram Daniel', 'danygroover@live.fr', '91323178', 'Bonjour, j\'aimerais avoir des informations pour des cours d\'anglais en soirée pour mes besoins professionnels.\r\nMerci', '2021-01-28 13:35:08', '2021-01-28 13:35:08'),
(130, 'FOLLY Foli Eyram Daniel', 'danygroover@live.fr', '91323178', 'Bonjour, j\'aimerais avoir des informations pour des cours d\'anglais en soirée pour mes besoins professionnels.\r\nMerci', '2021-01-28 13:35:15', '2021-01-28 13:35:15'),
(131, 'FOLLY Foli Eyram Daniel', 'danygroover@live.fr', '91323178', 'Bonjour, j\'aimerais avoir des informations pour des cours d\'anglais en soirée pour mes besoins professionnels.\r\nMerci', '2021-01-28 13:35:18', '2021-01-28 13:35:18'),
(132, 'FOLLY Foli Eyram Daniel', 'danygroover@live.fr', '91323178', 'Bonjour, j\'aimerais avoir des informations pour des cours d\'anglais en soirée pour mes besoins professionnels.\r\nMerci', '2021-01-28 13:35:20', '2021-01-28 13:35:20'),
(133, 'Ofelia', 'ofelia@sendbulkmails.com', 'NA', 'Use SendBulkMails.com to run email campaigns from your own private dashboard.\r\n\r\nCold emails are allowed and won\'t get you blocked :)\r\n\r\nStarter Package 50% off sale\r\n- 1Mil emails / mo @ $99 USD\r\n- Dedicated IP and Domain Included\r\n- Detailed statistical reports (delivery, bounce, clicks etc.)\r\n- Quick and easy setup with extended support at no extra cost.\r\n- Cancel anytime!\r\n\r\nRegards,\r\nwww.SendBulkMails.com', '2021-02-01 14:35:14', '2021-02-01 14:35:14'),
(134, 'D dddd', 'dddddd@gmail.com', '+228111111', 'Bonjour', '2021-02-03 13:58:17', '2021-02-03 13:58:17'),
(135, 'kodjo kami', 'kodjokami@yahoo.fr', '90027819', 'cc', '2021-02-10 15:17:37', '2021-02-10 15:17:37'),
(136, 'Julius', 'w.o.rdp.r.e.s.s2.0.02.1.9.88+gevreesden@gmail.com', NULL, 'Bonjour,\r\n\r\nSavez-vous que votre site Wordpress davyslanguages.com est très lent à charger et que vous perdez des visiteurs, des leads et des clients chaque jour ?\r\n\r\nProfitez de notre audit gratuit et sans engagement: https://shortcd.buzz/6XnD4\r\n\r\nCordialement,\r\n\r\nJulius', '2021-02-17 21:46:58', '2021-02-17 21:46:58'),
(137, 'Anthony', 'prewitt.anthony@gmail.com', '02680 11 09 66', 'Get traffic for your website, e-commerce site, local business, or blog without ever paying for ads. This post will show you several interesting ways to get tons of free ads for your business: https://bit.ly/5waystoadvertisefree', '2021-03-03 19:47:06', '2021-03-03 19:47:06'),
(138, 'Eric', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Cool website!\r\n\r\nMy name’s Eric, and I just found your site - davyslanguages.com - while surfing the net. You showed up at the top of the search results, so I checked you out. Looks like what you’re doing is pretty cool.\r\n \r\nBut if you don’t mind me asking – after someone like me stumbles across davyslanguages.com, what usually happens?\r\n\r\nIs your site generating leads for your business? \r\n \r\nI’m guessing some, but I also bet you’d like more… studies show that 7 out 10 who land on a site wind up leaving without a trace.\r\n\r\nNot good.\r\n\r\nHere’s a thought – what if there was an easy way for every visitor to “raise their hand” to get a phone call from you INSTANTLY… the second they hit your site and said, “call me now.”\r\n\r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nTime is money when it comes to connecting with leads – the difference between contacting someone within 5 minutes versus 30 minutes later can be huge – like 100 times better!\r\n\r\nThat’s why we built out our new SMS Text With Lead feature… because once you’ve captured the visitor’s phone number, you can automatically start a text message (SMS) conversation.\r\n  \r\nThink about the possibilities – even if you don’t close a deal then and there, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nWouldn’t that be cool?\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\nEric\r\n\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2021-03-15 07:03:15', '2021-03-15 07:03:15'),
(139, 'Rodger Glokpor', 'rodgerglokpor@yahoo.fr', '+22899445812', 'Je cherche une formation de communication anglaise. Je suis conferencier international et donne des conferences en français  en Afrique de l\'ouest et du centre. J\'aimerai pouvoir commencer a donner sans papier les memes conferences en anglais. Avez-vous un programme en ce sens?', '2021-03-16 20:28:43', '2021-03-16 20:28:43'),
(140, 'Ayih-Agbovey adakou akofa odile', 'degbeodile190@gmail.com', '93672482', 'Je voulais prendre des renseignements sur la formation en anglais', '2021-03-30 08:31:32', '2021-03-30 08:31:32'),
(141, 'Ayih-Agbovey adakou akofa odile', 'degbeodile190@gmail.com', '93672482', 'Je voulais prendre des renseignements sur la formation en anglais', '2021-03-30 08:31:34', '2021-03-30 08:31:34'),
(142, 'Ayih-Agbovey adakou akofa odile', 'degbeodile190@gmail.com', '93672482', 'Je voulais prendre des renseignements sur la formation en anglais', '2021-03-30 08:31:35', '2021-03-30 08:31:35'),
(143, 'MATHE Messanvi Cali Sitou', 'messanvicalisitou@gmail.com', '93330287', 'Bonjour Mr/Mme\r\n\r\nJe suis interessé par les cours en Anglais ,quels sont vos horaires ,il ya t il des cours du soir car je suis un professionnel \r\nmerci', '2021-04-14 09:11:30', '2021-04-14 09:11:30'),
(144, 'Eric', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement – Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work you’ve done with davyslanguages.com definitely stands out. \r\n\r\nIt’s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catch… more accurately, a question…\r\n\r\nSo when someone like me happens to find your site – maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors don’t stick around – they’re there one second and then gone with the wind.\r\n\r\nHere’s a way to create INSTANT engagement that you may not have known about… \r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It lets you know INSTANTLY that they’re interested – so that you can talk to that lead while they’re literally checking out davyslanguages.com.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business – and it gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately (and there’s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you don’t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything I’ve just described is simple, easy, and effective. \r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2021-04-20 11:28:02', '2021-04-20 11:28:02'),
(145, 'Eric', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just came across your website - davyslanguages.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like davyslanguages.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=davyslanguages.com', '2021-04-23 02:21:48', '2021-04-23 02:21:48'),
(146, 'Hamdane Baba-wattara', 'babawattarahamdane@gmail.com', '70484375', 'Bonsoir davy\'s language. S\'il vous plaît, j\'aimerais savoir s\'il est possible de passer un test de niveau chez vous pour avoir une preuve de notre niveau de maîtrise ? Par exemple savoir si on est au niveau A1 ou B1 par exemple ?', '2021-05-08 19:16:43', '2021-05-08 19:16:43'),
(147, 'Violet', 'violet@bestlocaldata.com', '705-656-6940', 'Hello from BestLocalData.com\r\n\r\nDue to the pandemic BestLocalData.com is shutting down on the 14th of May.\r\n\r\nWe have more than a 100 million records of Key Executives all over the world.\r\n\r\nWe hope that this Data will serve other companies to succeed in their marketing efforts.\r\n\r\nWe have reduced all the prices to next to nothing on our website BestLocalData.com\r\n\r\nWe wish you the best in your future endeavours.', '2021-05-11 12:58:37', '2021-05-11 12:58:37'),
(148, 'Thelma', 'thelma@sendbulkmails.com', '0488 30 60 87', 'Hello from SendBulkMails.com,\r\n\r\nWe have a special limited offer for you to send unlimited emails.\r\n\r\nWe allow non-permission based emails and you won\'t ever get blocked.\r\n\r\nWe also buy your domain for you and give you a clean IP and setup your DNS records.\r\n\r\nCheck us out on SendBulkMails.com', '2021-05-11 22:39:02', '2021-05-11 22:39:02'),
(149, 'Sokpoh Hervé', 'herve3j@gmail.com', '99670509', 'J\'aimerais savoir parler anglais si possible cours en ligne merci', '2021-05-12 14:35:45', '2021-05-12 14:35:45'),
(150, 'Cassandra', 'carlos.cassandra@gmail.com', '06-37464040', 'Let me show you how you can leverage 5 high traffic sites for free to bring in more traffic to your site: http://www.freetrafficwebsites.click', '2021-05-16 05:28:55', '2021-05-16 05:28:55'),
(151, 'Nikpe Joséphine', 'josephinenikpe829@gmail.com', '91867510', 'Bonjour, je veux faire la langue anglaise', '2021-05-24 06:19:50', '2021-05-24 06:19:50'),
(152, 'Eric', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'My name’s Eric and I just came across your website - davyslanguages.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like davyslanguages.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE http://talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE http://talkwithcustomer.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE http://talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=davyslanguages.com', '2021-05-26 07:07:11', '2021-05-26 07:07:11'),
(153, 'Kueviakoe kuevi elesesi', 'seiibtogo@gmail.com', '90797431', 'C est combien la formation et quel est la durée de formation', '2021-05-30 16:08:31', '2021-05-30 16:08:31'),
(154, 'Kueviakoe kuevi elesesi', 'seiibtogo@gmail.com', '90797431', 'C est combien la formation et quel est la durée de formation', '2021-05-30 16:08:36', '2021-05-30 16:08:36'),
(155, NULL, 'PrestonFarmer0265@gmail.com', '9757798944', 'Hello there, I am just checking in to see if you need any help with your online reviews.  We specialize in burying negative reviews in the search engines by getting other sites to rank above your negative reviews.  We can also help you to get a lot more positive reviews to dilute negative reviews that are already out there.  We would love to work with your company, so please let me know if you are interested in learning more about what we do.  \r\n\r\nThank you,\n\nThank you.\r\nPreston Farmer', '2021-06-04 08:55:05', '2021-06-04 08:55:05'),
(156, 'Twyla', 'twyla.keeney@gmail.com', '0494 18 92 53', 'Good evening \r\nYour competitors employ this service, do you think you\'re?\r\nhttps://best-marketers.com/backlinks-generator\r\nWith best regards,\r\n\r\nP.S. We offer the very best marketing services you may check on our online shop for making big money in a small business, still not interested in getting clients? Here is a quick, 1-click unsubscribe link: https://best-marketers.com/?unsubscribe=davyslanguages.com', '2021-06-04 22:31:19', '2021-06-04 22:31:19'),
(157, 'LAKMON', 'lakmonpascall@gmail.com', '91419385', 'Je suis entrain de vouloir passer le test de Toefl dans 2 mois et j\'aimerais le coût de formation.', '2021-06-15 04:28:03', '2021-06-15 04:28:03'),
(158, 'Charli', 'charli@bestlocaldata.com', 'BestLocalData.com', 'It is with sad regret to inform you that because of the Covid pandemic BestLocalData.com is shutting down at the end of the month.\r\n\r\nWe have lost family members and colleagues and have decided to shut down BestLocalData.com\r\n\r\nIt was a pleasure serving you all these years. We have made all our databases available for $99 (All of it for $99) for those interested.\r\n\r\nKind Regards,\r\nBestLocalData.com\r\nCharli', '2021-06-28 19:47:36', '2021-06-28 19:47:36'),
(159, 'Darin Soliz', 'MalcomHigginbothan@yahoo.com', NULL, 'Here is a list of 18 free traffic sources that you should be using: http://bit.ly/18freetrafficsources', '2021-07-11 12:39:24', '2021-07-11 12:39:24'),
(160, 'Gloria KLOKPE', 'klokpegloria@gmail.com', '92725077', 'Bonjour\r\nJ\'aimerais améliorer mon anglais à travers votre programme \"niveau accélérer\"\r\nQuels sont s\'il vous plaît vos conditions d\'admission.\r\nMerci i', '2021-07-12 10:35:32', '2021-07-12 10:35:32'),
(161, 'GBADAMASSI', 'hykmatougbadamassi2@gmail.com', '002331987931', 'Bonjour Monsieur,Madame\r\nJ\'aimerai avoir le cout d\'une traduction de document professionnel(attestation de stage et travail) et diplomatique( attestation de Bac,relevé de Bac )', '2021-07-20 12:52:00', '2021-07-20 12:52:00'),
(162, 'Afedzi Kodjovi Cristophe', 'afedzichristophe@gmail.com', '+228 99 64 22 62', 'Bonsoir j\'aimerais suivre une formation d\'anglais chez vous  merci d\'avance', '2021-07-21 15:08:54', '2021-07-21 15:08:54'),
(163, 'KPODAR Akouété sika ghislain parfait', 'pkpodar94@gmail.com', '91561281', 'Bonjour, j’ai suivi des cours d’anglais pour 7 mois et je voudrais me présenter à l’examen de TOEFL. Ma question est de savoir si vous pourrez me présenter comme l’un de vos candidats et à combien s’élèvent le montant le montant d’inscription pour l’examen de TOEFL.. merci', '2021-08-04 04:46:43', '2021-08-04 04:46:43'),
(164, 'Madeline', 'madeline.nash@gmail.com', '032 967 29 27', 'Hi,\r\n\r\nWe\'d like to introduce to you our explainer video service which we feel can benefit your site davyslanguages.com.\r\n\r\nCheck out some of our existing videos here:\r\nhttps://www.youtube.com/watch?v=oYoUQjxvhA0\r\nhttps://www.youtube.com/watch?v=MOnhn77TgDE\r\nhttps://www.youtube.com/watch?v=NKY4a3hvmUc\r\n\r\nAll of our videos are in a similar animated format as the above examples and we have voice over artists with US/UK/Australian accents.\r\n\r\nThey can show a solution to a problem or simply promote one of your products or services. They are concise, can be uploaded to video such as Youtube, and can be embedded into your website or featured on landing pages.\r\n\r\nFind out more here and if you\'re interested, complete the form at the bottom of the page: https://explainervideos4u.info\r\n\r\nKind Regards,\r\nMadeline', '2021-08-09 09:19:40', '2021-08-09 09:19:40'),
(165, NULL, 'edfreeman231@gmail.com', '(302) 316-5112', 'Greetings!\r\n\r\nIf you\'re open to try new trends in productivity, let me tell you about this tool that most successful businesses use to reach out to their clients making their business more profitable and credible at the same time. It\'s an app! It can help you run the business, whether in terms of sales, marketing, management, or a combination of those. \r\n\r\nIf you already some ideas, I\'d like to hear about I\'ll send you my portfolio ready to be viewed, and I can also give you a free consultation via the phone. Don\'t worry about the cost of my services since they\'re relatively inexpensive even for the smallest businesses.\r\n\r\nIf you\'re interested in developing an app, or acquiring more info about it, please just reply and let me know when\'s the best time to contact you. Talk to you soon!\n\nSincerely,\r\nEdward', '2021-08-09 13:08:27', '2021-08-09 13:08:27'),
(166, 'Jan', 'alio.shivams@halumail.com', '(03) 5385 0923', 'Get free traffic to your website from these top sites: https://bit.ly/free-traffic-sites-for-2021', '2021-08-11 11:09:10', '2021-08-11 11:09:10'),
(167, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test Message', '2021-08-12 08:40:20', '2021-08-12 08:40:20'),
(168, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test Message', '2021-08-12 08:41:13', '2021-08-12 08:41:13'),
(169, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test Message', '2021-08-12 08:43:12', '2021-08-12 08:43:12'),
(170, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test Message', '2021-08-12 09:00:00', '2021-08-12 09:00:00'),
(171, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test Message', '2021-08-12 09:01:07', '2021-08-12 09:01:07'),
(172, 'David Comlan Ahiataku', 'ahiatak.dav@gmail.com', '+22892971128', 'Test', '2021-08-12 09:11:16', '2021-08-12 09:11:16'),
(173, 'Test', 'test@test', '95555', 'Test', '2021-08-12 09:15:55', '2021-08-12 09:15:55'),
(174, 'Test', 'Test@test', '5545', 'Test 2', '2021-08-12 09:21:58', '2021-08-12 09:21:58'),
(175, 'Test', 'test@test3', '45421', 'Test 3', '2021-08-12 09:23:43', '2021-08-12 09:23:43'),
(176, 'test', 'test@test4', '874645', 'Test 4', '2021-08-12 09:25:37', '2021-08-12 09:25:37'),
(177, 'DAGOU Mazama-Esso', 'dagoumazamaesso@gmail.com', '+288 90955406', 'Bonjour Madame/Monsieur\r\nBon réveil à vous\r\nSvp j\'aimerais avoir des informations sur le diplôme TOEFEL....\r\nLa formation est à combien ?\r\nOù faites vous la formation ?\r\nQuand faites vous la formation ?\r\nEt comment vous le faites ?\r\nMerci pour l\'attention que vous accorderez à mon message', '2021-08-17 09:25:44', '2021-08-17 09:25:44'),
(178, 'Janie', 'hesson.janie@gmail.com', '070 0194 8960', 'A maverick Japanese doctor recently leaked the secret ingredients of an ancient Japanese Tonic that targets the root cause of deep belly fat and activates a powerful little-known fat-burning hormone inside you…that MELTS away all your stubborn body fat.\r\n \r\n => Discover the “Done for You” Japanese Tonic to Melt 3 Pounds Every 3.5 Days \r\n==> https://cutt.ly/rQ3oMGZ', '2021-08-21 05:29:29', '2021-08-21 05:29:29'),
(179, 'Sheila', 'sheila.burnett11@gmail.com', '0929-9473739', 'Your website is awesome but…\r\n\r\ndavyslanguages.com is an asset. It\'s like buying real estate and investing in remodeling your kitchen and bath.  That work will increase the value of your home so that you can sell it in the future for a profit.\r\n\r\nTo effortlessly beat the competition on the internet it’s paramount to have   this remarkable plan:\r\n	\r\nhttps://your-seo-technicians.com/backlinks-generator\r\n\r\n\r\nWarm regards,\r\nWe offer the very best marketing services you can purchase on our website for making big money in a small business, still not thinking about getting new clients? Here is a straightforward, 1-click unsubscribe link: https://your-seo-technicians.com/?unsubscribe=davyslanguages.com', '2021-08-25 12:24:38', '2021-08-25 12:24:38'),
(180, 'Lakesha', 'latrobe.lakesha@hotmail.com', '05.14.07.74.23', 'Thoughts about davyslanguages.com\r\n\r\nThe time has come to ask yourselves does davyslanguages.com bring customers … and what are you doing to change it?\r\n\r\nHere is the phenomenal package you must have to win ultimate clients regularly:\r\n	\r\nhttps://geeks-marketing.com/socialsignals\r\n\r\n\r\nRegards,\r\nWe offer superb Online Marketing services you can purchase on our online shop for making big money in a small business, still not considering getting new business? Here is a straightforward, one-click unsubscribe link: https://geeks-marketing.com/?unsubscribe=davyslanguages.com', '2021-09-09 14:56:24', '2021-09-09 14:56:24'),
(181, 'MONDENOU PASCAL', 'pascalmondenou7@gmail.com', '97614275', 'bonjour DAVY\'S LANGUAGES, je veux suivre une formation d\'anglais et je veux parler l\'anglais comme une professionnel je veux m\'inscris dans votre école', '2021-09-10 08:14:46', '2021-09-10 08:14:46'),
(182, 'SISSUH KOKOU', 'jsissuh@yahoo.fr', '99 41 42 03', 'Bonjour Madame, Monsieur\r\n\r\nJe souhaiterais avoir le coût d\'un programme de TOEFL', '2021-09-14 08:29:59', '2021-09-14 08:29:59'),
(183, NULL, 'molly.blair049@gmail.com', '9561383162', 'Hi! \r\n\r\nI am an expert in an internet advertising model used to drive traffic to websites and on platforms like Google Ads, Facebook Ads, and etc. Please let me know if you are interested in starting and/or improving the performance of your existing campaign and I can give you guaranteed traffic that can make a huge impact on sales. \r\n\r\nI look forward to hearing from you.\n\nThank you.\r\nMolly Blair', '2021-09-24 17:46:45', '2021-09-24 17:46:45'),
(184, NULL, 'donna.lee2514@gmail.com', '9677146922', 'Hello there! \r\n\r\nWould you\'d be interested in building a mobile app for your business? I\'m a mobile app developer that can design and program on any platform (Android, iOs) for an affordable price. There are various types of apps that can help your business, whether in terms of marketing, business efficiency, or both. If you already have some ideas, I would love to hear about them to help you more on how we can make them all possible. \r\n\r\nI have many ideas of my own that I\'d really like to share with you of things that have worked really well for my other clients. If you\'re interested in building an app, or getting more information about it, then I\'d love to give you a free consultation. Kindly reply to let me know when you\'d like to be contacted. I hope to speak with you soon! \n\nThank you.\r\nDonna Lee', '2021-10-01 14:39:08', '2021-10-01 14:39:08'),
(185, 'MATHE Messanvi Cali Sitou', 'messanvicalisitou@gmail.com', '+22893330287', 'Bonsoir Mr/Mme je veux suivre  des cours en Anglais  pour renforcer mes capacités d\'interprétation et de traduction, soit 2 fois par semaine mais en cours du soir à partir de 18h30 si possible .Ceci sur 3 mois à partir de Janvier20222.Quelles sont les conditions?\r\nMerci de me revenir', '2021-10-02 15:32:15', '2021-10-02 15:32:15'),
(186, 'Moshe Korvin', 'LeeRefsell@gmail.com', NULL, 'I was wondering if you needed more website visitors, I can target them by niche and guarantee how many you\'ll get. Contact me via Skype here: live:.cid.e7ae096559e10740 and I\'ll be more than happy to talk to you more about this. Thanks, Bill R.', '2021-10-16 16:19:58', '2021-10-16 16:19:58'),
(187, 'AJAVON AYI M.', 'ayiemmanuel@yahoo.fr', '90293571', 'Je désire booster mon anglais\r\nQuelles sont les modalités\r\nMerci', '2021-10-20 19:13:35', '2021-10-20 19:13:35'),
(188, 'Phillipp', 'phillipp.lehmann@gmail.com', '044 657 38 33', 'An effective way to make big money running a small business.\r\n\r\nNeed to upgrade your company’s website and get rid of any errors? Finally, a comprehensive service where you can sit back and let the best in the world SEO Engineers to do everything for you.\r\n\r\n\r\nHere is the mad package you should have to captivate fresh customers online:\r\n	\r\nhttps://your-marketers.com/technicalseo\r\n\r\n\r\nRegards,\r\nWe offer the best IT services you can check on our shop to make big money in a small business. Still not thinking about getting new business? Here is a quick, 1-click unsubscribe link: https://your-marketers.com/?unsubscribe=davyslanguages.com', '2021-10-20 22:02:09', '2021-10-20 22:02:09'),
(189, 'Eric', 'eric.jones.z.mail@gmail.com', '555-555-1212', 'Hey, this is Eric and I ran across davyslanguages.com a few minutes ago.\r\n\r\nLooks great… but now what?\r\n\r\nBy that I mean, when someone like me finds your website – either through Search or just bouncing around – what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a site’s visitors disappear and are gone forever after just a moment.\r\n\r\nHere’s an idea…\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your site…\r\n \r\nYou can –\r\n  \r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  It signals you the moment they let you know they’re interested – so that you can talk to that lead while they’re literally looking over your site.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYou’ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even better… once you’ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if you don’t close a deal right away, you can follow up with text messages for new offers, content links, even just “how you doing?” notes to build a relationship.\r\n\r\nPretty sweet – AND effective.\r\n\r\nCLICK HERE https://talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=davyslanguages.com', '2021-10-29 04:20:08', '2021-10-29 04:20:08');

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name1', 'text', 'Name1', 0, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'name2', 'text', 'Name2', 0, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'name3', 'text', 'Name3', 0, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'logo1', 'image', 'Logo1', 0, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'logo2', 'image', 'Logo2', 0, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'logo3', 'image', 'Logo3', 0, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'photo1', 'image', 'Photo1', 0, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{}', 10),
(32, 4, 'titre', 'text', 'Titre', 0, 1, 1, 1, 1, 1, '{}', 11),
(33, 4, 'about1', 'text_area', 'About1', 0, 1, 1, 1, 1, 1, '{}', 12),
(34, 4, 'about2', 'text_area', 'About2', 0, 1, 1, 1, 1, 1, '{}', 13),
(35, 4, 'about3', 'text_area', 'About3', 0, 1, 1, 1, 1, 1, '{}', 14),
(36, 4, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 15),
(37, 4, 'youtube', 'text', 'Youtube', 0, 1, 1, 1, 1, 1, '{}', 16),
(38, 4, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 17),
(39, 4, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 18),
(40, 4, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 19),
(41, 4, 'skype', 'text', 'Skype', 0, 1, 1, 1, 1, 1, '{}', 20),
(42, 4, 'whatsapp', 'text', 'Whatsapp', 0, 1, 1, 1, 1, 1, '{}', 21),
(43, 4, 'mail1', 'text', 'Mail1', 0, 1, 1, 1, 1, 1, '{}', 22),
(44, 4, 'mail2', 'text', 'Mail2', 0, 1, 1, 1, 1, 1, '{}', 23),
(45, 4, 'mail3', 'text', 'Mail3', 0, 1, 1, 1, 1, 1, '{}', 24),
(46, 4, 'mail4', 'text', 'Mail4', 0, 1, 1, 1, 1, 1, '{}', 25),
(47, 4, 'mail5', 'text', 'Mail5', 0, 1, 1, 1, 1, 1, '{}', 26),
(48, 4, 'tel1', 'text', 'Tel1', 0, 1, 1, 1, 1, 1, '{}', 27),
(49, 4, 'tel2', 'text', 'Tel2', 0, 1, 1, 1, 1, 1, '{}', 28),
(50, 4, 'tel3', 'text', 'Tel3', 0, 1, 1, 1, 1, 1, '{}', 29),
(51, 4, 'tel4', 'text', 'Tel4', 0, 1, 1, 1, 1, 1, '{}', 30),
(52, 4, 'tel5', 'text', 'WhatsApp', 0, 1, 1, 1, 1, 1, '{}', 31),
(53, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 32),
(54, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 33),
(55, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 5, 'text', 'text_area', 'Text', 0, 1, 1, 1, 1, 1, '{}', 2),
(57, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(58, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(59, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 6, 'url', 'image', 'Url', 0, 1, 1, 1, 1, 1, '{}', 2),
(61, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(62, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(63, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"467\",\"height\":\"625\"}}]}', 2),
(65, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 7, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(68, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 8, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(71, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(72, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(73, 8, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(74, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 9, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 10, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(83, 10, 'price', 'text', 'Price', 0, 1, 1, 1, 1, 1, '{}', 3),
(84, 10, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(85, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(86, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(87, 11, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(88, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(89, 11, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(90, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 12, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"842\",\"height\":\"472\"}},{\"name\":\"cropped-2400\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"208\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"200\"}},{\"name\":\"cropped-270\",\"crop\":{\"width\":\"270\",\"height\":\"152\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"512\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"683\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"507\"}}]}', 2),
(94, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(95, 12, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(96, 12, 'vue', 'text', 'Vue', 0, 1, 1, 1, 1, 1, '{}', 5),
(97, 12, 'like', 'text', 'Like', 0, 1, 1, 1, 1, 1, '{}', 6),
(98, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(99, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(105, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 14, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"842\",\"height\":\"472\"}},{\"name\":\"cropped-2400\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"208\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"200\"}},{\"name\":\"cropped-270\",\"crop\":{\"width\":\"270\",\"height\":\"152\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"512\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"683\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"507\"}}]}', 2),
(107, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 14, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(110, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(111, 15, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 15, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(113, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(114, 15, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(115, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(116, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(117, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(118, 16, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(119, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(120, 16, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(121, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(122, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(123, 17, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(124, 17, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(125, 17, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(126, 17, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(127, 17, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 5),
(128, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(129, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(130, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(131, 18, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1920\",\"height\":\"803\"}},{\"name\":\"slide-1\",\"crop\":{\"width\":\"100\",\"height\":\"50\"}}]}', 2),
(132, 18, 'texte1', 'text_area', 'Texte1', 0, 1, 1, 1, 1, 1, '{}', 3),
(133, 18, 'texte2', 'text_area', 'Texte2', 0, 1, 1, 1, 1, 1, '{}', 4),
(134, 18, 'texte3', 'text_area', 'Texte3', 0, 1, 1, 1, 1, 1, '{}', 5),
(135, 18, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(136, 18, 'btn_text', 'text', 'Btn Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(137, 18, 'btn_link', 'text', 'Btn Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(138, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(139, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(150, 20, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(151, 20, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(152, 20, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(153, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(154, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(155, 21, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(156, 21, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"2400\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"2400\",\"height\":\"1600\"}}]}', 2),
(157, 21, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(158, 21, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 6),
(159, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(160, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(161, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(162, 22, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(163, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(164, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(165, 23, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(166, 23, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(167, 23, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(168, 23, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(169, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(170, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(171, 24, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(172, 24, 'post_id', 'select_dropdown', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(173, 24, 'comment', 'text_area', 'Comment', 0, 1, 1, 1, 1, 1, '{}', 3),
(174, 24, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(175, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(176, 25, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(177, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(178, 25, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(179, 25, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(180, 25, 'source_language', 'text', 'Source Language', 0, 1, 1, 1, 1, 1, '{}', 5),
(181, 25, 'target_language', 'text', 'Target Language', 0, 1, 1, 1, 1, 1, '{}', 6),
(182, 25, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 7),
(183, 25, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{}', 8),
(184, 25, 'domain', 'text', 'Domain', 0, 1, 1, 1, 1, 1, '{}', 9),
(185, 25, 'deadline', 'text', 'Deadline', 0, 1, 1, 1, 1, 1, '{}', 10),
(186, 25, 'document_type', 'text', 'Document Type', 0, 1, 1, 1, 1, 1, '{}', 11),
(187, 25, 'message', 'text_area', 'Message', 0, 1, 1, 1, 1, 1, '{}', 12),
(188, 25, 'moyen_contact', 'text', 'Moyen Contact', 0, 1, 1, 1, 1, 1, '{}', 13),
(189, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(190, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(191, 21, 'gallery_category_id', 'select_dropdown', 'Gallery Category', 1, 1, 1, 1, 1, 1, '{}', 4),
(193, 10, 'price_belongstomany_p_item_relationship', 'relationship', 'p_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PItem\",\"table\":\"p_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"p_item_price\",\"pivot\":\"1\",\"taggable\":\"0\"}', 5),
(194, 11, 'p_item_belongstomany_price_relationship', 'relationship', 'prices', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Price\",\"table\":\"prices\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"p_item_price\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(195, 26, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(196, 26, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1920\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"513\",\"height\":\"549\"}},{\"name\":\"cropped-medium\",\"crop\":{\"width\":\"650\",\"height\":\"868\"}},{\"name\":\"cropped-small\",\"crop\":{\"width\":\"370\",\"height\":\"396\"}},{\"name\":\"cropped-big\",\"crop\":{\"width\":\"1920\",\"height\":\"828\"}}]}', 2),
(197, 26, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(198, 26, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(199, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(200, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(201, 8, 'service_belongstomany_s_item_relationship', 'relationship', 's_items', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SItem\",\"table\":\"s_items\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"s_item_service\",\"pivot\":\"1\",\"taggable\":\"0\"}', 6),
(202, 9, 's_item_belongstomany_service_relationship', 'relationship', 'services', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"s_item_service\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(203, 27, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 27, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1200\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"1200\",\"height\":\"1200\"}},{\"name\":\"cropped-150\",\"crop\":{\"width\":\"150\",\"height\":\"150\"}},{\"name\":\"cropped-300\",\"crop\":{\"width\":\"300\",\"height\":\"300\"}},{\"name\":\"cropped-768\",\"crop\":{\"width\":\"768\",\"height\":\"768\"}},{\"name\":\"cropped-1024\",\"crop\":{\"width\":\"1024\",\"height\":\"1024\"}},{\"name\":\"cropped-370\",\"crop\":{\"width\":\"370\",\"height\":\"370\"}},{\"name\":\"cropped-90\",\"crop\":{\"width\":\"90\",\"height\":\"90\"}},{\"name\":\"cropped-760\",\"crop\":{\"width\":\"760\",\"height\":\"760\"}}]}', 2),
(205, 27, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(206, 27, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(207, 27, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 5),
(208, 27, 'facebook', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 6),
(209, 27, 'twitter', 'text', 'Twitter', 0, 1, 1, 1, 1, 1, '{}', 7),
(210, 27, 'instagram', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 8),
(211, 27, 'linkedin', 'text', 'Linkedin', 0, 1, 1, 1, 1, 1, '{}', 9),
(212, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 10),
(213, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(214, 21, 'gallery_belongsto_gallery_category_relationship', 'relationship', 'gallery_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\GalleryCategory\",\"table\":\"gallery_categories\",\"type\":\"belongsTo\",\"column\":\"gallery_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"abouts\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-10-10 15:19:21', '2019-10-10 15:19:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-10-10 15:19:22', '2019-10-10 15:19:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-10-10 15:19:22', '2019-10-10 15:19:22'),
(4, 'entreprises', 'entreprises', 'Entreprise', 'Entreprises', 'voyager-home', 'App\\Entreprise', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 08:53:40', '2019-10-25 20:24:32'),
(5, 'texts', 'texts', 'Text', 'Textes', 'voyager-hammer', 'App\\Text', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(6, 'images', 'images', 'Image', 'Images', 'voyager-images', 'App\\Image', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(7, 'abouts', 'abouts', 'About', 'Abouts', 'voyager-font', 'App\\About', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:01:52', '2019-10-17 18:05:15'),
(8, 'services', 'services', 'Service', 'Services', 'voyager-lightbulb', 'App\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:05:38', '2019-10-18 17:19:13'),
(9, 's_items', 's-items', 'Service Item', 'Services Items', 'voyager-list', 'App\\SItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:08:28', '2019-10-18 17:29:32'),
(10, 'prices', 'prices', 'Price', 'Prices', 'voyager-gift', 'App\\Price', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:12:27', '2019-10-11 11:31:34'),
(11, 'p_items', 'p-items', 'Price Item', 'Prices Items', 'voyager-book-download', 'App\\PItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:17:43', '2019-10-11 11:33:02'),
(12, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'App\\Post', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:24:28', '2019-10-25 11:43:26'),
(14, 'learns', 'learns', 'Learn', 'Learns', 'voyager-logbook', 'App\\Learn', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 09:28:17', '2019-10-25 12:40:56'),
(15, 'how_it_works', 'how-it-works', 'How It Work', 'How It Works', 'voyager-question', 'App\\HowItWork', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 09:40:31', '2019-10-11 09:40:31'),
(16, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-medal-rank-star', 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 09:42:16', '2019-10-11 09:42:16'),
(17, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-telephone', 'App\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 10:33:43', '2021-08-02 15:45:59'),
(18, 'slides', 'slides', 'Slide', 'Slides', 'voyager-puzzle', 'App\\Slide', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 10:43:54', '2019-10-17 17:24:55'),
(20, 'news_letters', 'news-letters', 'News Letter', 'News Letters', 'voyager-mail', 'App\\NewsLetter', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(21, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-photos', 'App\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 10:48:13', '2019-10-24 07:46:40'),
(22, 'gallery_categories', 'gallery-categories', 'Gallery Category', 'Gallery Categories', 'voyager-hotdog', 'App\\GalleryCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(23, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-heart', 'App\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(24, 'comments', 'comments', 'Comment', 'Comments', 'voyager-chat', 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 11:18:11', '2019-10-11 11:18:11'),
(25, 'order_translations', 'order-translations', 'Order Translation', 'Order Translations', 'voyager-receipt', 'App\\OrderTranslation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-10-11 11:19:47', '2019-10-11 11:19:47'),
(26, 'sections', 'sections', 'Section', 'Sections', 'voyager-puzzle', 'App\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-11 11:34:55', '2019-10-28 18:02:32'),
(27, 'teams', 'teams', 'Team', 'Teams', 'voyager-group', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-10-24 07:01:38', '2019-10-24 07:07:59');

-- --------------------------------------------------------

--
-- Structure de la table `entreprises`
--

CREATE TABLE `entreprises` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` text COLLATE utf8mb4_unicode_ci,
  `about1` longtext COLLATE utf8mb4_unicode_ci,
  `about2` longtext COLLATE utf8mb4_unicode_ci,
  `about3` longtext COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprises`
--

INSERT INTO `entreprises` (`id`, `name1`, `name2`, `name3`, `logo1`, `logo2`, `logo3`, `photo1`, `photo2`, `photo3`, `titre`, `about1`, `about2`, `about3`, `facebook`, `youtube`, `twitter`, `instagram`, `linkedin`, `skype`, `whatsapp`, `mail1`, `mail2`, `mail3`, `mail4`, `mail5`, `tel1`, `tel2`, `tel3`, `tel4`, `tel5`, `created_at`, `updated_at`) VALUES
(1, 'Davys\' Languages', NULL, NULL, 'entreprises\\October2019\\4dRqwifjnmVSLW9nv4Qu.png', 'entreprises\\October2019\\TIRPmFs6a7Fgrw1tL9U0.png', 'entreprises\\October2019\\sHgFpHqVImAmteVmbk20.png', 'entreprises\\October2019\\mYjx01ccYjAbkKN4QIHX.jpeg', NULL, NULL, NULL, 'Situé à Novissi dans  la von du Pressing du Golfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'davyslanguagestg@gmail.com', 'ahiatak.dav@gmail.com', NULL, NULL, NULL, '+228 91 90 61 12', '+228 99 40 86 71', NULL, NULL, '22891906112', '2019-10-17 16:19:00', '2021-08-12 09:26:21');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faqs`
--

INSERT INTO `faqs` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Qui peut suivre nos formations ?', 'Si vous souhaitez prendre des cours en Anglais et Français,<br>\nSi vous désirez suivre une formation d’anglais ou de Français dans le cadre de votre recherche d’emploi , de voyage etc...<br>\nSi vous souhaitez former vos collaborateurs en  Anglais et Français pour qu’ils représentent votre entreprise à l’étranger,<br>\nSi votre enfant a besoin d’un soutien scolaire en Anglais ou Français..', '2019-10-22 15:52:00', '2019-10-24 17:05:40'),
(2, NULL, 'Quelles sont nos méthodes d’apprentissage ?', 'La méthode qu\'utilise Davys\'languages est parfaitement dédiée à l’apprentissage des langues, qu’elles soient usuelles telles que l’anglais ou le français.\n\nNos cours de langue reposent sur les principes fondamentaux reconnus de méthode directe, progressive et communicative.\n\nL’apprenant est au cœur de son apprentissage, toujours en action et soutenu par le formateur. Ce dernier est un professionnel qui est là pour vous motiver, vous donner confiance et adapter sa pédagogie à vos besoins.', '2019-10-22 15:52:00', '2019-10-26 11:38:33'),
(4, NULL, 'Quelles sont nos formations en langue ?', 'L’objectif de nos cours de langue  est de vous apporter des solutions adaptées à vos attentes.\n\nQuel que soit votre niveau en langue et vos besoins, apprenez l’anglais et  le français avec un expert de la formation.\n\nNous vous préparons également aux certifications internationales et professionnelles tels que le TOEFL, IELTS etc.\n\nDavys \' languages met à votre disposition des programmes pédagogiques spécifiques en relation avec votre métier (anglais des affaires, la rédaction de mails, comment voyager à l’étranger...).', '2019-10-22 15:53:00', '2019-10-24 16:08:46');

-- --------------------------------------------------------

--
-- Structure de la table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_category_id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(4, NULL, 'galleries/October2019/hoWnA6mDCizZJRrr345A.jpeg', '', '', '2019-10-29 10:41:59', '2019-10-29 10:41:59'),
(5, NULL, 'galleries/October2019/cnTOHPnYwWvjoDQWuUB5.jpeg', '', '', '2019-10-29 10:42:18', '2019-10-29 10:42:18'),
(6, NULL, 'galleries/October2019/HCcLvlko7xkp3572oXRs.jpeg', '', '', '2019-10-29 10:42:36', '2019-10-29 10:42:36'),
(7, NULL, 'galleries/October2019/IOTpJacqPk2d0tasAeuX.jpeg', '', '', '2019-10-29 10:42:57', '2019-10-29 10:42:57'),
(8, NULL, 'galleries/October2019/Lucfk101B4Xt8byFdmll.jpeg', '', '', '2019-10-29 10:43:21', '2019-10-29 10:43:21');

-- --------------------------------------------------------

--
-- Structure de la table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gallery_categories`
--

INSERT INTO `gallery_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2017', '2019-10-24 07:31:58', '2019-10-24 07:31:58'),
(2, '2018', '2019-10-24 07:32:10', '2019-10-24 07:32:10'),
(3, '2019', '2019-10-24 07:32:22', '2019-10-24 07:32:22');

-- --------------------------------------------------------

--
-- Structure de la table `how_it_works`
--

CREATE TABLE `how_it_works` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `how_it_works`
--

INSERT INTO `how_it_works` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Etape 1', 'Accédez au formulaire de commande, remplissez puis envoyez ! ', '2019-10-22 15:43:00', '2019-10-24 17:51:06'),
(2, NULL, 'Etape 2', 'Vous recevrez par mail ou téléphone le prix de la commande.', '2019-10-22 15:44:00', '2019-10-24 17:51:24'),
(3, NULL, 'Etape 3', 'Approuver le devis et payer', '2019-10-24 17:42:57', '2019-10-24 17:42:57'),
(4, NULL, 'Etape 4', 'Votre traduction sera prêt dans votre boîte de réception ou par le moyen que vous avez spécifié.', '2019-10-24 17:46:32', '2019-10-24 17:46:32');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'images\\October2019\\u53JaSX8ZU0S7Coi35jW.jpg', '2019-10-22 15:03:51', '2019-10-22 15:03:51'),
(2, 'images\\October2019\\GtPSMXESwOlm1G3Q6qpb.jpg', '2019-10-23 13:39:20', '2019-10-23 13:39:20'),
(3, 'images/October2019/fknBQ0I83rr1uj65WMST.jpg', '2019-10-24 08:13:00', '2019-10-28 16:48:40'),
(4, 'images/October2019/XnFqTsNtvSLfqEFOBfmz.jpg', '2019-10-28 16:15:17', '2019-10-28 16:15:17'),
(5, 'images/October2019/yabluEQRHbR9N1tgVgOl.jpg', '2019-10-28 16:16:28', '2019-10-28 16:16:28'),
(6, 'images/October2019/s420qnNozs0YPJRqNTnU.jpg', '2019-10-28 16:17:34', '2019-10-28 16:17:34'),
(7, 'images/October2019/T7XYqBcJiNkizwWEFdHd.jpg', '2019-10-28 16:18:29', '2019-10-28 16:18:29'),
(8, 'images/October2019/dwEBEltLTaRgGehFIjiT.jpeg', '2019-10-28 16:51:46', '2019-10-28 16:51:46'),
(9, 'images/October2019/QZMX1EqujTICIVKTMxS8.jpg', '2019-10-28 16:58:36', '2019-10-28 16:58:36'),
(10, 'images/October2019/PY7CIKf6VlATlYHDeNxR.jpg', '2019-10-28 18:14:58', '2019-10-28 18:14:58'),
(11, 'images/October2019/xXkuDl03bXmj27iPNkWL.jpg', '2019-10-28 18:18:13', '2019-10-28 18:18:13'),
(12, 'images/October2019/LYTWCC6nnRIsPZjA46ap.jpg', '2019-10-28 18:32:38', '2019-10-28 18:32:38'),
(13, 'images/October2019/Dp5tkCVOFclvBlCqkssc.jpeg', '2019-10-28 19:31:10', '2019-10-28 19:31:10'),
(14, 'images/October2019/qSRdDi4d0ck8HRZgedIx.jpeg', '2019-10-29 10:17:26', '2019-10-29 10:17:26');

-- --------------------------------------------------------

--
-- Structure de la table `learns`
--

CREATE TABLE `learns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `learns`
--

INSERT INTO `learns` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(3, 'learns\\October2019\\EyuwoF4RPFFMct9Pzxt9.jpg', 'Comment vaincre la peur de l\'écriture dans une langue étrangère', '<p>Pour certains, se lancer dans une conversation dans une langue &eacute;trang&egrave;re se fait le plus simplement du monde. Quelques connaissances de vocabulaire, une bonne dose de confiance en soi, et le tour est jou&eacute;. Pour d&rsquo;autres, en revanche, l&rsquo;exercice est nettement plus compliqu&eacute;. Entre doutes sur son niveau de langue et sur ses capacit&eacute;s &agrave; tenir un &eacute;change sans perdre ses moyens, parler dans une autre langue peut repr&eacute;senter un blocage. Si c&rsquo;est votre cas, pas de panique, cette r&eacute;action est naturelle. D&eacute;couvrez quelques conseils pour savoir comment vaincre sa peur de parler une langue &eacute;trang&egrave;re, avec Assimil.</p>\n<h2>POURQUOI A-T-ON PEUR DE PARLER UNE LANGUE &Eacute;TRANG&Egrave;RE ?</h2>\n<p>Pour pouvoir vaincre sa peur de parler une langue &eacute;trang&egrave;re, il faut d&rsquo;abord pouvoir la comprendre et en analyser les causes. Les raisons peuvent &ecirc;tre multiples. Plus qu&rsquo;un d&eacute;faut de connaissances, ce probl&egrave;me prend souvent racine dans la timidit&eacute; ou dans un manque de confiance en soi. Il est fr&eacute;quent que cette peur soit li&eacute;e &agrave; l&rsquo;&eacute;cole ou &agrave; une mauvaise exp&eacute;rience (un entretien d&rsquo;embauche rat&eacute;, par exemple).La peur d&rsquo;&ecirc;tre ridicule, d&rsquo;&ecirc;tre jug&eacute; par les autres, ou d&rsquo;&ecirc;tre incompris est un facteur qui peut cr&eacute;er un blocage et emp&ecirc;cher de se lancer dans une conversation dans une langue &eacute;trang&egrave;re. Si vous avez cibl&eacute; votre crainte principale, tentez de travailler dessus.</p>\n<h2>N&rsquo;AYEZ PAS PEUR DE FAIRE DES ERREURS</h2>\n<p>Relativisez : il est normal de ne pas &ecirc;tre imm&eacute;diatement bilingue. Prenez plut&ocirc;t le probl&egrave;me &agrave; l&rsquo;envers : comment r&eacute;agissez-vous lorsqu&rsquo;un Anglais, par exemple, tente de parler fran&ccedil;ais ? L&rsquo;indulgence que vous avez pour quelqu&rsquo;un qui fait l&rsquo;effort de parler votre langue est &eacute;galement valable dans l&rsquo;autre sens.Vaincre sa peur de parler une langue &eacute;trang&egrave;re passe par accepter de faire des erreurs. Faites confiance aux natifs de la langue ou vos amis bilingues pour vous corriger. Ne vous formalisez pas et continuez de parler, de pratiquer, et vous progresserez naturellement.</p>\n<h2>AVANCEZ &Agrave; VOTRE RYTHME</h2>\n<p>Rien ne sert de courir, il faut partir &agrave; point. L&rsquo;une des clefs pour ne pas &ecirc;tre bloqu&eacute; par ses craintes reste d&rsquo;avancer &agrave; son rythme et de ne pas br&ucirc;ler les &eacute;tapes. Vous ne vous sentez pas de prendre la parole au milieu d&rsquo;un groupe de personnes ? Ne le faites pas tout de suite, rien ne presse. L&rsquo;important &eacute;tant que vous progressiez &agrave; votre rythme.Avant les discussions collectives, il est conseill&eacute; de commencer par parler tout seul, &agrave; voix haute. Un bon moyen pour travailler votre prononciation et cr&eacute;er certains automatismes de langage. Vous pouvez m&ecirc;me &laquo; faire l&rsquo;acteur &raquo; et simuler des petits sc&eacute;narios, des conversations. Il est &eacute;galement possible de vous enregistrer, voire de vous filmer, pour analyser votre expression et votre prononciation avec du recul.&Agrave; lire aussi : Trucs et astuces pour pratiquer une langue &eacute;trang&egrave;re chaque jour sans y penser</p>\n<h2>ENTOUREZ-VOUS D&rsquo;INTERLOCUTEURS BIENVEILLANTS</h2>\n<p>Votre pratique en solitaire pass&eacute;e, franchissez une &eacute;tape suppl&eacute;mentaire et lancez-vous dans un dialogue avec un interlocuteur capable de vous corriger. Id&eacute;alement, un natif de la langue parl&eacute;e ou quelqu&rsquo;un de bilingue. De cette mani&egrave;re, vous apprendrez diff&eacute;remment qu&rsquo;avec un simple manuel : argot, subtilit&eacute;s grammaticales, r&eacute;f&eacute;rences culturelles&hellip; Votre exp&eacute;rience s&rsquo;en trouvera enrichie par des notions moins litt&eacute;raires ou scolaires, plus proches de la r&eacute;alit&eacute; du quotidien. Essayez de rendre ces moments d&rsquo;&eacute;changes les plus fr&eacute;quents possible, surtout s&rsquo;ils ont lieu via des appels t&eacute;l&eacute;phoniques ou vid&eacute;os.Autre point important pour vaincre votre peur de parler une langue &eacute;trang&egrave;re : parlez et pratiquez avec des personnes positives, qui vous encouragent &agrave; progresser. La critique est toujours bonne &agrave; prendre &agrave; condition qu&rsquo;elle soit constructive. &Eacute;vitez de converser avec des interlocuteurs impatients, ou qui jugent n&eacute;gativement votre volont&eacute; d&rsquo;apprendre une langue en particulier. Ce serait le meilleur moyen de vous conforter dans des craintes qui n&rsquo;ont pas lieu d&rsquo;&ecirc;tre.</p>\n<h2>PR&Eacute;PAREZ DES PHRASES &laquo; TYPES &raquo; &Agrave; GLISSER DANS VOS CONVERSATIONS</h2>\n<p>Afin d&rsquo;&ecirc;tre plus serein au moment de discuter dans une langue &eacute;trang&egrave;re, d&rsquo;autant plus si vous &ecirc;tes d&eacute;butant, apprenez des phrases toutes faites &agrave; glisser dans la discussion. Par exemple : &laquo; Je ne comprends pas &raquo;, &laquo; pouvez-vous r&eacute;p&eacute;ter &raquo;, etc. Le but &eacute;tant de pouvoir rebondir rapidement et d&rsquo;utiliser vos expressions sans avoir &agrave; vous creuser la t&ecirc;te pendant de longues minutes.De la m&ecirc;me mani&egrave;re, si vous &ecirc;tes dans un pays &eacute;tranger, pr&eacute;parez &eacute;galement des phrases &laquo; types &raquo;, utiles au quotidien, dans des situations que vous serez amen&eacute; &agrave; rencontrer fr&eacute;quemment. Cela peut &ecirc;tre quelques formules et mots de vocabulaire &agrave; utiliser au supermarch&eacute;, au restaurant, dans un magasin ou pour demander votre direction. L&agrave; encore, l&rsquo;objectif &eacute;tant de simplifier la prise de contact, de lancer un dialogue &agrave; l&rsquo;aide de phrases que vous ma&icirc;trisez et ainsi vaincre votre peur de parler une langue &eacute;trang&egrave;re.</p>\n<h2>VOYAGEZ SEUL &Agrave; L&rsquo;&Eacute;TRANGER</h2>\n<p>Il s&rsquo;agit sans doute du moyen le plus radical mais aussi du plus efficace. Seul dans un pays &eacute;tranger, vous n&rsquo;aurez pas d&rsquo;autres choix que de mettre tous vos doutes de c&ocirc;t&eacute; et de vous jeter &agrave; l&rsquo;eau. Une immersion totale dans une autre culture est la meilleure mani&egrave;re de progresser rapidement en langue &eacute;trang&egrave;re.Pour rendre l&rsquo;exp&eacute;rience la plus ludique possible, n&rsquo;h&eacute;sitez pas &agrave; multiplier les contacts avec les gens sur place. Sortez souvent vous balader dans des lieux publics et entamer la conversation avec des locaux (pour une direction, un renseignement sur un monument, etc.), des vendeurs, des serveurs, ou des personnes de votre tranche d&rsquo;&acirc;ge. Autre moyen de s&rsquo;immerger plus en douceur : loger chez l&rsquo;habitant. Une fa&ccedil;on &ndash; &eacute;conomique &ndash; de pratiquer la langue avec un petit groupe d&rsquo;interlocuteurs que vous finirez par conna&icirc;tre. Id&eacute;al avant de vous lancer dans le grand bain et de vaincre d&eacute;finitivement votre peur de parler une langue &eacute;trang&egrave;re.</p>', '2019-10-23 17:37:00', '2019-10-31 16:34:36'),
(4, NULL, '', '', '2020-05-08 08:38:23', '2020-05-08 08:38:23');

-- --------------------------------------------------------

--
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-10-10 15:19:24', '2019-10-10 15:19:24');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-10-10 15:19:24', '2019-10-10 15:19:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-10-10 15:19:25', '2019-10-10 15:19:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-10-10 15:19:25', '2019-10-10 15:19:25', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-10-10 15:19:31', '2019-10-10 15:19:31', 'voyager.hooks', NULL),
(12, 1, 'Entreprises', '', '_self', 'voyager-home', NULL, NULL, 15, '2019-10-11 08:53:40', '2019-10-11 08:53:40', 'voyager.entreprises.index', NULL),
(13, 1, 'Textes', '', '_self', 'voyager-hammer', NULL, NULL, 16, '2019-10-11 08:54:53', '2019-10-11 08:54:53', 'voyager.texts.index', NULL),
(14, 1, 'Images', '', '_self', 'voyager-images', NULL, NULL, 17, '2019-10-11 08:56:43', '2019-10-11 08:56:43', 'voyager.images.index', NULL),
(15, 1, 'Abouts', '', '_self', 'voyager-font', NULL, NULL, 18, '2019-10-11 09:01:52', '2019-10-11 09:01:52', 'voyager.abouts.index', NULL),
(16, 1, 'Services', '', '_self', 'voyager-lightbulb', NULL, NULL, 19, '2019-10-11 09:05:39', '2019-10-11 09:05:39', 'voyager.services.index', NULL),
(17, 1, 'Services Items', '', '_self', 'voyager-list', NULL, NULL, 20, '2019-10-11 09:08:29', '2019-10-11 09:08:29', 'voyager.s-items.index', NULL),
(18, 1, 'Prices', '', '_self', 'voyager-gift', NULL, NULL, 21, '2019-10-11 09:12:28', '2019-10-11 09:12:28', 'voyager.prices.index', NULL),
(19, 1, 'Prices Items', '', '_self', 'voyager-book-download', NULL, NULL, 22, '2019-10-11 09:17:43', '2019-10-11 09:17:43', 'voyager.p-items.index', NULL),
(20, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 23, '2019-10-11 09:24:28', '2019-10-11 09:24:28', 'voyager.posts.index', NULL),
(22, 1, 'Learns', '', '_self', 'voyager-logbook', NULL, NULL, 25, '2019-10-11 09:28:17', '2019-10-11 09:28:17', 'voyager.learns.index', NULL),
(23, 1, 'How It Works', '', '_self', 'voyager-question', NULL, NULL, 26, '2019-10-11 09:40:32', '2019-10-11 09:40:32', 'voyager.how-it-works.index', NULL),
(24, 1, 'Faqs', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 27, '2019-10-11 09:42:17', '2019-10-11 09:42:17', 'voyager.faqs.index', NULL),
(25, 1, 'Contacts', '', '_self', 'voyager-telephone', NULL, NULL, 28, '2019-10-11 10:33:43', '2019-10-11 10:33:43', 'voyager.contacts.index', NULL),
(26, 1, 'Slides', '', '_self', 'voyager-puzzle', NULL, NULL, 29, '2019-10-11 10:43:54', '2019-10-11 10:43:54', 'voyager.slides.index', NULL),
(28, 1, 'News Letters', '', '_self', 'voyager-mail', NULL, NULL, 31, '2019-10-11 10:46:36', '2019-10-11 10:46:36', 'voyager.news-letters.index', NULL),
(29, 1, 'Galleries', '', '_self', 'voyager-photos', NULL, NULL, 32, '2019-10-11 10:48:13', '2019-10-11 10:48:13', 'voyager.galleries.index', NULL),
(30, 1, 'Gallery Categories', '', '_self', 'voyager-hotdog', NULL, NULL, 33, '2019-10-11 10:49:24', '2019-10-11 10:49:24', 'voyager.gallery-categories.index', NULL),
(31, 1, 'Testimonials', '', '_self', 'voyager-heart', NULL, NULL, 34, '2019-10-11 10:56:15', '2019-10-11 10:56:15', 'voyager.testimonials.index', NULL),
(32, 1, 'Comments', '', '_self', 'voyager-chat', NULL, NULL, 35, '2019-10-11 11:18:12', '2019-10-11 11:18:12', 'voyager.comments.index', NULL),
(33, 1, 'Order Translations', '', '_self', 'voyager-receipt', NULL, NULL, 36, '2019-10-11 11:19:48', '2019-10-11 11:19:48', 'voyager.order-translations.index', NULL),
(34, 1, 'Sections', '', '_self', 'voyager-puzzle', NULL, NULL, 37, '2019-10-11 11:34:55', '2019-10-11 11:34:55', 'voyager.sections.index', NULL),
(35, 1, 'Teams', '', '_self', 'voyager-group', NULL, NULL, 38, '2019-10-24 07:01:39', '2019-10-24 07:01:39', 'voyager.teams.index', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_10_02_093858_create_entreprises_table', 1),
(25, '2019_10_02_095220_create_slides_table', 1),
(26, '2019_10_02_102248_create_images_table', 1),
(27, '2019_10_02_103006_create_texts_table', 1),
(28, '2019_10_02_103731_create_services_table', 1),
(29, '2019_10_02_103805_create_contacts_table', 1),
(30, '2019_10_02_103821_create_translates_table', 1),
(31, '2019_10_02_103900_create_how_it_works_table', 1),
(32, '2019_10_02_103916_create_faqs_table', 1),
(33, '2019_10_02_103939_create_teams_table', 1),
(34, '2019_10_02_103957_create_testimonials_table', 1),
(35, '2019_10_02_104649_create_posts_table', 1),
(36, '2019_10_02_110507_create_learns_table', 1),
(37, '2019_10_02_110605_create_prices_table', 1),
(40, '2019_10_02_113027_create_gallery_categories_table', 1),
(41, '2019_10_02_130404_create_p_items_table', 1),
(42, '2019_10_02_130404_create_s_items_table', 1),
(43, '2019_10_02_132905_create_s_item_service_table', 1),
(44, '2019_10_02_132945_create_p_item_price_table', 1),
(45, '2019_10_11_105846_create_abouts_table', 2),
(46, '2018_08_08_100000_create_telescope_entries_table', 3),
(47, '2019_10_11_114514_create_news_letters_table', 3),
(48, '2019_10_02_110741_create_comments_table', 4),
(49, '2019_10_11_130545_create_sections_table', 4),
(50, '2019_10_11_130635_create_order_translations_table', 4),
(51, '2019_10_02_113030_create_galleries_table', 5),
(52, '2018_10_30_000000_create_tables', 6),
(53, '2018_11_16_000000_add_meta_fields', 6);

-- --------------------------------------------------------

--
-- Structure de la table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `order_translations`
--

CREATE TABLE `order_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `moyen_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_translations`
--

INSERT INTO `order_translations` (`id`, `name`, `firstname`, `email`, `phone`, `source_language`, `target_language`, `type`, `file`, `domain`, `deadline`, `document_type`, `message`, `moyen_contact`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, 'Source Language', 'Target Language', 'Company', NULL, 'Industry', NULL, NULL, NULL, NULL, '2019-10-25 17:01:58', '2019-10-25 17:01:58'),
(2, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', NULL, 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:02:45', '2019-10-25 17:02:45'),
(3, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', NULL, 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:02:46', '2019-10-25 17:02:46'),
(4, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'file/_1572024087', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:21:27', '2019-10-25 17:21:27'),
(5, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572024733pdf', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:32:13', '2019-10-25 17:32:13'),
(6, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572024797.pdf', 'Scientifique', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:33:17', '2019-10-25 17:33:17'),
(7, 'Admin', NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572025193.jpg', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:39:53', '2019-10-25 17:39:53'),
(8, NULL, NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/_1572025323.jpg', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:42:03', '2019-10-25 17:42:03'),
(9, 'Admin', NULL, NULL, NULL, 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572025628.pdf', 'Marketing', 'Please Select *', 'Please Select *', NULL, 'Appelez-moi', '2019-10-25 17:47:08', '2019-10-25 17:47:08'),
(10, 'Admin', 'Sadia Joli', NULL, '667878', 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/Admin_1572026497.jpg', 'Marketing', 'Veuillez choisir *', 'Veuillez choisir *', NULL, 'Appelez-moi', '2019-10-25 18:01:37', '2019-10-25 18:01:37'),
(11, 'elom', 'Sadia Joli', NULL, '667878', 'Source Language *', 'Target Language *', 'Entreprise ou Particulier', 'public/order-translations/elom_1572027262.jpg', 'Marketing', 'Veuillez choisir *', 'Veuillez choisir *', NULL, 'Appelez-moi', '2019-10-25 18:14:22', '2019-10-25 18:14:22'),
(12, 'Frank', NULL, 'elomopi10@yahoo.fr', '98', 'Anglais', 'Français', 'Private', 'public/order-translations/Frank_1572093179.jpg', 'Marketing', NULL, NULL, 'Demande de dévis', NULL, '2019-10-26 10:32:59', '2019-10-26 10:32:59'),
(13, 'Frank', NULL, 'elomopi10@yahoo.fr', '98', 'Anglais', 'Français', 'Private', 'public/order-translations/Frank_1572093227.jpg', 'Marketing', NULL, NULL, 'Demande de dévis', NULL, '2019-10-26 10:33:47', '2019-10-26 10:33:47'),
(14, 'grand', 'do', 'admin@test.com', '3265', 'français', 'Anglais', 'Entreprise', 'public/order-translations/grand_1572093332.pdf', 'Scientifique', 'Date limite expresse: (24 heures)', 'Documents financiers', NULL, 'Non, contactez-moi par e-mail', '2019-10-26 10:35:32', '2019-10-26 10:35:32'),
(15, 'grand', 'do', 'admin@test.com', '3265', 'français', 'Anglais', 'Entreprise', 'public/order-translations/grand_1572093399.pdf', 'Scientifique', 'Date limite expresse: (24 heures)', 'Documents financiers', NULL, 'Non, contactez-moi par e-mail', '2019-10-26 10:36:39', '2019-10-26 10:36:39'),
(16, 'Frank', 'dodo', 'admin@test.com', '90000000', 'Anglais', 'français', 'Particulier', 'public/order-translations/Frank_1572093643.jpg', 'Scientifique', 'Date limite expresse: (24 heures)', 'Documents juridiques', 'Demande de traduction de document', 'Non, contactez-moi par e-mail', '2019-10-26 10:40:43', '2019-10-26 10:40:43'),
(17, 'Avou yaovi jacques', NULL, 'avouyaovijacques@gmail.com', '93445155', 'Français', 'Anglais', 'Private', 'public/order-translations/Avou yaovi jacques_1573397750.jpg', NULL, NULL, NULL, NULL, NULL, '2019-11-10 13:55:50', '2019-11-10 13:55:50'),
(18, 'SCHWINGER Adjo Modestine', NULL, 'schwingermodestine@gmail.com', '70469448', 'Français', 'Anglais', 'Private', 'public/order-translations/SCHWINGER Adjo Modestine_1596393337.jpg', 'Autres', NULL, NULL, 'J\'aimerais avoir les infos sur les conditions d\'inscription pour  la formation en anglais pour avoir  le diplôme TOEFL mais je ne suis disponible que les samedis', NULL, '2020-08-02 16:35:38', '2020-08-02 16:35:38'),
(19, 'Bessi Hinanti Apélété', NULL, 'sadagrivert@gmail.com', '90966700', 'Français', 'Anglais', 'Company', 'public/order-translations/Bessi Hinanti Apélété_1598734847.jpg', 'Healthcare', NULL, NULL, 'Je veux faire des cours d\'anglais pour faire un ietls à la fin', NULL, '2020-08-29 19:00:47', '2020-08-29 19:00:47'),
(20, 'DOUTI Pouguinepo Sabirou', NULL, 'doutisabirou@gmail.com', '+22893282285', 'Français', 'Anglais', 'Private', 'public/order-translations/DOUTI Pouguinepo Sabirou_1602815109.jpg', 'Autres', NULL, NULL, 'Bonjour. J\'aimerais passer un test en anglais et obtenir un certificat de reconnaissance internationale. Mes recherches m\'ont conduit vers vous. De plus amples explications et des informations supplémentaires sur vos activités ainsi que sur le processus me seront d\'une utilité certaine. Merci de bien vouloir me revenir après lecture de ce message.', NULL, '2020-10-16 00:25:09', '2020-10-16 00:25:09'),
(21, 'Floriand', NULL, 'floriandgameda@gmail.com', '91875544', 'Français', 'Anglais', 'Private', 'public/order-translations/Floriand_1603819497.pdf', 'Engineering', NULL, NULL, NULL, NULL, '2020-10-27 16:24:58', '2020-10-27 16:24:58'),
(22, 'GAMEDA', 'Mawulom Martin-Floriand', 'floriandgameda@gmail.com', '91875544', 'français', 'Anglais', 'Particulier', 'public/order-translations/GAMEDA_1603819661.pdf', 'Scientifique', 'Délai standard (2-5 jours ouvrables)', 'Technical Documents', 'Demande de traduction de document', 'Appelez-moi', '2020-10-27 16:27:41', '2020-10-27 16:27:41'),
(23, 'ASSAKARA Sadjidatou', NULL, 'sajiassakara@gmail.com', '91519590', 'Français', 'Anglais', 'Private', 'public/order-translations/ASSAKARA Sadjidatou_1605006471.jpg', 'Autres', NULL, NULL, 'J\'aimerai avoir des informations sur votre institut.', NULL, '2020-11-10 10:07:51', '2020-11-10 10:07:51'),
(24, 'ASSAKARA Sadjidatou', NULL, 'sajiassakara@gmail.com', '91519590', 'Français', 'Anglais', 'Private', 'public/order-translations/ASSAKARA Sadjidatou_1605006475.jpg', 'Autres', NULL, NULL, 'J\'aimerai avoir des informations sur votre institut.', NULL, '2020-11-10 10:07:55', '2020-11-10 10:07:55'),
(25, 'Davenport Ablewa Sylvie', NULL, 'orlane.davenport@gmail.com', '90902290', 'Français', 'Anglais', 'Private', 'public/order-translations/Davenport Ablewa Sylvie_1605601288.pdf', 'Autres', NULL, NULL, 'J\'aimerais perfectionner mon anglais pour passer les examens du TOEFL et de l\'IELTS.', NULL, '2020-11-17 07:21:29', '2020-11-17 07:21:29'),
(26, 'Yekini Abiodoun', NULL, 'abdelkodiri@gmail.com', '+22962964050', 'Français', 'Anglais', 'Private', 'public/order-translations/Yekini Abiodoun_1606659435.jpg', 'Autres', NULL, NULL, 'Informations pour étudier en chypre', NULL, '2020-11-29 13:17:15', '2020-11-29 13:17:15'),
(27, 'Egato', 'David', 'davidegato1@gmail.com', '+2289', 'Anglais', 'français', 'Entreprise', 'public/order-translations/Egato_1609327689.docx', 'Marketing', 'Date limite expresse: (24 heures)', 'Technical Documents', 'Demande de traduction de document', 'Appelez-moi', '2020-12-30 10:28:09', '2020-12-30 10:28:09'),
(28, 'Egato', 'David', 'davidegato1@gmail.com', '+22892', 'Anglais', 'Anglais', 'Entreprise', 'public/order-translations/Egato_1609328085.docx', 'Marketing', 'Délai standard (2-5 jours ouvrables)', 'Documents financiers', 'Demande de traduction de document', 'Appelez-moi', '2020-12-30 10:34:45', '2020-12-30 10:34:45'),
(29, 'Egato', 'David', 'davidegato1@gmail.com', '+22892', 'français', 'français', 'Entreprise', 'order-translations/Egato_1609328791.docx', 'Santé', 'Délai standard (2-5 jours ouvrables)', 'Documents financiers', 'Demande de traduction de document', 'Appelez-moi', '2020-12-30 10:46:32', '2020-12-30 10:46:32'),
(30, 'Egato', 'David', 'davidegato1@gmail.com', '+22892', 'français', 'français', 'Entreprise', 'order-translations/Egato_1609329226.docx', 'Santé', 'Date limite expresse: (24 heures)', 'Documents financiers', 'Demande de traduction de document', 'Appelez-moi', '2020-12-30 10:53:46', '2020-12-30 10:53:46'),
(31, 'Egato', 'David', 'davidegato1@gmail.com', '+22892', 'français', 'français', 'Entreprise', 'order-translations/Egato_1609332392.docx', 'Marketing', 'Date limite expresse: (24 heures)', 'Documents financiers', 'Demande de traduction de document', 'Appelez-moi', '2020-12-30 11:46:32', '2020-12-30 11:46:32'),
(32, 'Amegnizin jerome', NULL, 'tygerjerome@gmail.com', '93530466', 'Anglais', 'Anglais', 'Company', 'order-translations/Amegnizin jerome_1610975030.jpg', 'Engineering', NULL, NULL, NULL, NULL, '2021-01-18 12:03:50', '2021-01-18 12:03:50'),
(33, 'Awiya essohanam kemealo', NULL, 'kemealoesso@gmail.com', '90844475', 'Français', 'Anglais', 'Private', 'order-translations/Awiya essohanam kemealo_1612527348.pptx', 'Healthcare', NULL, NULL, 'Merci de m\'aider à améliorer mon anglais', NULL, '2021-02-05 11:15:48', '2021-02-05 11:15:48'),
(34, 'Sidiki Bolanga', 'Krystel', 'krystelo.ss@gmail.com', '98816464', 'Anglais', 'français', 'Particulier', 'order-translations/Sidiki Bolanga_1613423960.pdf', 'Scientifique', 'Délai standard (2-5 jours ouvrables)', 'Autres', 'Demande de traduction de document', 'Non, contactez-moi par e-mail', '2021-02-15 20:19:20', '2021-02-15 20:19:20'),
(35, 'ABDOU KIMBA ZAKOU', NULL, 'Kkimbazakou@gmail.com', '90250764', 'Français', 'Anglais', 'Private', 'order-translations/ABDOU KIMBA ZAKOU_1613509495.pdf', 'Marketing', NULL, NULL, 'Vous pouvez m’aider à traduire mes diplômes en anglais?', NULL, '2021-02-16 20:04:55', '2021-02-16 20:04:55'),
(36, 'ABDOU KIMBA', 'Zakou', 'kkimbazakou@gmail.com', '90250764', 'français', 'Anglais', 'Particulier', 'order-translations/ABDOU KIMBA_1613509724.pdf', 'Diplômatique', 'Délai standard (2-5 jours ouvrables)', 'Autres', 'Demande de traduction de document', 'Non, contactez-moi par e-mail', '2021-02-16 20:08:44', '2021-02-16 20:08:44'),
(37, 'milatdepay', NULL, 'cadassi1960@mix-mail.online', '82732789823', 'Francais', 'Francais', 'Company', 'order-translations/milatdepay_1618233188.gif', 'Autres', NULL, NULL, '[url=https://www.lukland.ru/catalog/hatches/floorhatches/hago/bvs250/variant/1160]сантехнические люки под плитку невидимка[/url] или [url=https://www.lukland.ru/catalog/hatches/hatchesfortile/euroformat/at/variant/189]люки сантехнические металлические под заказ[/url] \r\n \r\nhttps://www.lukland.ru/lyuki-pod-pokrasku/nevidimye-lyuki', NULL, '2021-04-12 11:13:08', '2021-04-12 11:13:08'),
(38, 'nimildepay', NULL, 'corybantes2605@mix-mail.online', '89993647838', 'Francais', 'Francais', 'Company', 'order-translations/nimildepay_1618429205.gif', 'Engineering', NULL, NULL, '[url=https://www.parkerrussia.ru/pens/im/PR60R-RED32/]PR80B-BLU1C[/url] или [url=https://www.parkerrussia.ru/pens/im/PR60R-MLT5/]PR20R-MLT59[/url] \r\n \r\nhttps://www.parkerrussia.ru/pens/urban/PR80F-MLT16/', NULL, '2021-04-14 17:40:05', '2021-04-14 17:40:05'),
(39, 'mohsdepay', NULL, 'propbadcstep1606@maillux.online', '85996949495', 'Francais', 'Francais', 'Company', 'order-translations/mohsdepay_1623883278.gif', 'Engineering', NULL, NULL, '[url=https://www.alkraft.ru/metallicheskie-luki]металлический люк от производителя[/url] или [url=https://www.alkraft.ru/production/comfort]купить напольный люк[/url] \r\n \r\nhttps://www.alkraft.ru/lyuki-pod-pokrasku', NULL, '2021-06-16 20:41:18', '2021-06-16 20:41:18'),
(40, 'siolisdepay', NULL, 'rocule1479@maillux.online', '81894792854', 'Francais', 'Francais', 'Company', 'order-translations/siolisdepay_1624231172.gif', 'Engineering', NULL, NULL, '[url=https://www.lukland.ru/revizionnye-lyuki/varianty-dekorirovaniya-santehnicheskih-lyukov]люки под плитку от производителя[/url] или [url=https://www.lukland.ru/catalog/hatches/hatchesfortile/euroformat/etr/variant/223]купить ревизионный люк[/url] \r\n \r\nhttps://www.lukland.ru/catalog/hatches/hatchesfortile/calculator', NULL, '2021-06-20 21:19:32', '2021-06-20 21:19:32'),
(41, 'siobindepay', NULL, 'mesdeathstuward1293@maillux.online', '84645278483', 'Francais', 'Francais', 'Company', 'order-translations/siobindepay_1624622666.gif', 'Healthcare', NULL, NULL, '[url=https://www.penna.ru/catalog/Parker/Jotter-XL/PRPRBLKG2122755]Паркер купить ручку[/url] или [url=https://www.penna.ru/catalog/Parker/Jotter/PR4B-LAZ1C]Паркер купить ручку в Москве[/url] \r\n \r\nhttps://www.penna.ru/catalog/Parker/Jotter/PRPRBLKG2030948', NULL, '2021-06-25 10:04:27', '2021-06-25 10:04:27'),
(42, 'KPOGLO kouassi koko', NULL, 'kokokpoglo@gmail.com', '0022893175971', 'Français', 'Anglais', 'Private', 'order-translations/KPOGLO kouassi koko_1624710491.pdf', 'Autres', NULL, NULL, 'Je veut voyager et je souhaite apprendre l\'anglais je voudrais savoir le prix', NULL, '2021-06-26 10:28:11', '2021-06-26 10:28:11'),
(43, 'rimisdepay', NULL, 'pogoogque330@maillux.online', '83851992562', 'Francais', 'Francais', 'Company', 'order-translations/rimisdepay_1627410338.gif', 'Healthcare', NULL, NULL, '[url=https://www.alkraft.ru/production/master-s]люк под плитку[/url] или [url=https://www.alkraft.ru/production/brigadir]сантехнический люк оптом[/url] \r\n \r\nhttps://www.alkraft.ru/production/inzhener', NULL, '2021-07-27 16:25:38', '2021-07-27 16:25:38'),
(44, 'kittsdepay', NULL, 'phecapnomb1723@maillux.online', '85115482597', 'Francais', 'Francais', 'Company', 'order-translations/kittsdepay_1627410338.gif', 'Healthcare', NULL, NULL, '[url=https://www.lukland.ru/lyuki-pod-plitku/konstrukciya-santehnicheskih-lyukov-pod-plitku]люки под покраску оптом[/url] или [url=https://www.lukland.ru/catalog/hatches/hatchesfortile/format/m/variant/351]металлический люк[/url] \r\n \r\nhttps://www.lukland.ru/revizionnye-lyuki/santehnicheskie-lyuki-ot-kompanii-lyuklend', NULL, '2021-07-27 16:25:38', '2021-07-27 16:25:38'),
(45, 'Hyacinthe', NULL, 'cocomate2017@gmail.com', '98644658', 'Anglais', 'Anglais', 'Private', 'order-translations/Hyacinthe_1627579258.m4a', 'Autres', NULL, NULL, 'Les frais pour vos préparation au toefel et gre', NULL, '2021-07-29 15:20:58', '2021-07-29 15:20:58'),
(46, 'Robertcew', NULL, 'gikefk@gmail.com', '89514371535', 'Francais', 'Francais', 'Company', 'order-translations/Robertcew_1629301852.gif', 'Engineering', NULL, NULL, '<a href=\"https://seo-akademiya.com/baza-znanij/prodvizhenie-internet-magazina/internet-magazin-vs-obyichnyij-magazin/\">Scam</a>', NULL, '2021-08-18 13:50:52', '2021-08-18 13:50:52'),
(47, 'AGBAKPEM Gabriel', NULL, 'gabrielagbakpem2000@gmail.com', '79986238', 'Français', 'Anglais', 'Private', 'order-translations/AGBAKPEM Gabriel_1630260211.pdf', 'Autres', NULL, NULL, NULL, NULL, '2021-08-29 16:03:31', '2021-08-29 16:03:31'),
(48, 'Irene', NULL, 'irenehodewa@gmail.com', '91044140', 'Français', 'Anglais', 'Private', 'order-translations/Irene_1632055588.jpg', 'Engineering', NULL, NULL, 'Bonjour, je souhaiterais prendre des cours d’Anglais pour améliorer mon niveau, pourriez vous me fournir plus d’informations sur votre méthode d’apprentissage et les coûts ? Merci', NULL, '2021-09-19 10:46:28', '2021-09-19 10:46:28'),
(49, 'MOUBARAKE GHANI', NULL, 'gmouba@gmail.com', '92705573', 'Français', 'Anglais', 'Private', 'order-translations/MOUBARAKE GHANI_1632123961.jpg', 'Autres', NULL, NULL, 'J\'aimerais passé un TOEFL', NULL, '2021-09-20 05:46:01', '2021-09-20 05:46:01'),
(50, 'Amen GBONVI', NULL, 'gbonviamen@gmail.com', '99311588', 'Français', 'Anglais', 'Private', 'order-translations/Amen GBONVI_1633204654.rtf', 'Engineering', NULL, NULL, NULL, NULL, '2021-10-02 17:57:34', '2021-10-02 17:57:34'),
(51, 'Moussa', 'Abdalah', 'mssbdhl@icloud.com', '+22891006082', 'Anglais', 'français', 'Particulier', 'order-translations/Moussa_1633515739.pdf', 'Scientifique', 'Délai extra express (2 à 12 heures)', 'Autres', 'Demande de traduction de document', 'Appelez-moi', '2021-10-06 08:22:19', '2021-10-06 08:22:19'),
(52, 'MichaelMycle', NULL, 'zinabizova@gmail.com', '81978178558', 'Francais', 'Francais', 'Company', 'order-translations/MichaelMycle_1635956268.gif', 'Autres', NULL, NULL, 'секс истории с фото   https://sexs-photo.com/ \r\n \r\n \r\nсекс фото пизда женщина   https://sexs-photo.com/tags/chastnoe-foto/                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 секс фото 12 лет  \r\n \r\n \r\n[url=https://forum.campinglanka.com/viewtopic.php?f=2&t=13691]секс в большом сериал онлайн[/url]\r\n[url=http://velochel.ru/php/viewtopic.php?f=28&t=14225]порно зрелую по кругу[/url]\r\n[url=https://cbdprovide.com/boards/topic/21/skachat-porno-pristal]скачать порно пристал[/url]\r\n[url=https://www.checkdomain.de/domains/suchen/?domain_check%5Bdomains%5D=%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8%20%D0%B3%D0%BE%D0%BB%D1%8B%D1%85%20%D0%B4%D0%B5%D0%B2%D1%83%D1%88%D0%B5%D0%BA%20%D0%B1%D0%B5%D0%B7%20%20%20https%3A/sexs-photo.com/%20%0D%0A%20%0D%0A%20%0D%0A%D0%B2%D0%B8%D0%B4%D0%B5%D0%BE%20%D0%B3%D0%BE%D0%BB%D1%8B%D1%85%20%D0%B4%D0%B5%D0%B2%D1%83%D1%88%D0%B5%D0%BA%20%D1%81%D0%BD%D1%8F%D1%82%D1%8B%D0%B5%20%20%20https%3A//sexs-photo.com/tags/bolshie-siski/%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D1%84%D0%BE%D1%82%D0%BE%20%D0%B1%D1%80%D0%B8%D1%82%D1%8B%D0%B5%20%20%0D%0A%20%0D%0A%20%0D%0A%5Burl%3Dhttp%3A//cashcooks.com/2019/08/15/menu-choices-for-vegan-vegetarian/%23comment-36518%5D%D0%B4%D0%B5%D0%B2%D1%83%D1%88%D0%BA%D0%B0%20%D0%BC%D1%83%D0%B6%D0%B8%D0%BA%D0%BE%D0%BC%20%D0%B1%D0%B5%D1%81%D0%BF%D0%BB%D0%B0%D1%82%D0%BD%D0%BE%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//christineescudero.com/free-slots/online-slots-real-money-top-casinos-in-canada-to-play-real-slots/%23comment-982%5D%D1%81%D0%BC%D0%BE%D1%82%D1%80%D0%B5%D1%82%D1%8C%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D1%80%D0%BE%D0%BB%D0%B8%D0%BA%20%D0%B1%D0%B5%D0%B7%5B/url%5D%0D%0A%5Burl%3Dhttp%3A//www.cyberturista.com/topic-t129382%5D%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D0%BE%D0%BD%D0%BB%D0%B0%D0%B9%D0%BD%20%D0%B3%D0%BB%D1%83%D0%B1%D0%BE%D0%BA%D0%B8%D0%B9%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//forum.femina.mk/threads/%25D1%2581%25D0%25BA%25D0%25B0%25D1%2587%25D0%25B0%25D1%2582%25D1%258C-%25D0%25BF%25D0%25BE%25D1%2580%25D0%25BD%25D0%25BE-%25D1%2584%25D0%25B8%25D0%25BB%25D1%258C%25D0%25BC%25D1%258B-%25D0%25B2-hd.33294/%5D%D1%81%D0%BA%D0%B0%D1%87%D0%B0%D1%82%D1%8C%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D1%84%D0%B8%D0%BB%D1%8C%D0%BC%D1%8B%20%D0%B2%20hd%5B/url%5D%0D%0A%5Burl%3Dhttp%3A//berizza.xyz/showthread.php%3Ftid%3D1248%26pid%3D23894%23pid23894%5D%D0%B3%D0%BE%D0%BB%D1%8B%D0%B5%20%D0%BF%D0%BE%D0%B6%D0%B8%D0%BB%D1%8B%D0%B5%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD%D1%8B%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//chatviper.com/viewtopic.php%3Ff%3D2%26t%3D2%26p%3D79%23p79%5D%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD%20%D0%B7%D0%B0%2050%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D0%B1%D0%BE%D0%BB%D1%8C%D1%88%D0%B8%D0%B5%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//artflairshop.com/2021/11/02/hello-world/%23comment-6%5D%D0%B3%D0%BE%D0%BB%D1%8B%D0%B5%20%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD%D1%8B%20%D0%B2%20%D0%BA%D0%BE%D0%BD%D1%82%D0%B0%D0%BA%D1%82%D0%B5%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//bertandjolly.com/video-update-number-2/%23comment-25%5D%D1%81%D0%B5%D0%BA%D1%81%202018%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//bestmarbleegypt.com/2021/05/07/the-premium-selection-of-marble/%23comment-3943%5D%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B5%20%D0%B4%D0%B5%D0%B2%D1%83%D1%88%D0%BA%D0%B8%20%D1%80%D0%B0%D0%BA%D0%BE%D0%BC%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%5B/url%5D%0D%0A%5Burl%3Dhttps%3A//alkayanco.com/blogs/blog/4%5D%D1%80%D1%83%D1%81%D1%81%D0%BA%D0%BE%D0%B5%20%D0%BF%D0%BE%D1%80%D0%BD%D0%BE%20%D1%81%20%D0%BC%D0%BE%D0%BB%D0%BE%D0%B4%D0%BE%D0%B9%20%D1%81%D0%B5%D1%81%D1%82%D1%80%D0%BE%D0%B9%5B/url%5D%0D%0A%20fe02038%20&domain_check%5Bcategory%5D=top20&domain_check%5Bgenre%5D=live&domain_check%5Bsearch%5D=&domain_check%5Btld%5D=]русское порно зрелых пьяных женщин[/url]\r\n[url=https://bamboolelo.com/showthread.php?tid=220&pid=965#pid965]порно фильмы большие[/url]\r\n[url=https://www.alexsilvamarketing.com/titulo-de-la-publicacion-en-el-blog/#comment-18]порно фото голых пожилых женщин[/url]\r\n[url=http://cashcooks.com/2019/08/15/menu-choices-for-vegan-vegetarian/#comment-36518]девушка мужиком бесплатно порно[/url]\r\n[url=http://www.cyberturista.com/topic-t129382]порно онлайн глубокий[/url]\r\n[url=https://forum.digiplanet.biz/showthread.php?tid=18051&pid=31135#pid31135]бесплатное порно домашнее муж[/url]\r\n[url=https://cbdaledo.com/american-shamans-cbd-routine-for-dogs/#comment-1000050]секс с проституткой[/url]\r\n 74644ff', NULL, '2021-11-03 15:17:48', '2021-11-03 15:17:48');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(2, 'browse_bread', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(3, 'browse_database', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(4, 'browse_media', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(5, 'browse_compass', NULL, '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(6, 'browse_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(7, 'read_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(8, 'edit_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(9, 'add_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(10, 'delete_menus', 'menus', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(11, 'browse_roles', 'roles', '2019-10-10 15:19:26', '2019-10-10 15:19:26'),
(12, 'read_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(13, 'edit_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(14, 'add_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(15, 'delete_roles', 'roles', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(16, 'browse_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(17, 'read_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(18, 'edit_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(19, 'add_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(20, 'delete_users', 'users', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(21, 'browse_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(22, 'read_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(23, 'edit_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(24, 'add_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(25, 'delete_settings', 'settings', '2019-10-10 15:19:27', '2019-10-10 15:19:27'),
(26, 'browse_hooks', NULL, '2019-10-10 15:19:31', '2019-10-10 15:19:31'),
(27, 'browse_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(28, 'read_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(29, 'edit_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(30, 'add_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(31, 'delete_entreprises', 'entreprises', '2019-10-11 08:53:40', '2019-10-11 08:53:40'),
(32, 'browse_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(33, 'read_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(34, 'edit_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(35, 'add_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(36, 'delete_texts', 'texts', '2019-10-11 08:54:53', '2019-10-11 08:54:53'),
(37, 'browse_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(38, 'read_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(39, 'edit_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(40, 'add_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(41, 'delete_images', 'images', '2019-10-11 08:56:43', '2019-10-11 08:56:43'),
(42, 'browse_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(43, 'read_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(44, 'edit_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(45, 'add_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(46, 'delete_abouts', 'abouts', '2019-10-11 09:01:52', '2019-10-11 09:01:52'),
(47, 'browse_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(48, 'read_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(49, 'edit_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(50, 'add_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(51, 'delete_services', 'services', '2019-10-11 09:05:39', '2019-10-11 09:05:39'),
(52, 'browse_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(53, 'read_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(54, 'edit_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(55, 'add_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(56, 'delete_s_items', 's_items', '2019-10-11 09:08:28', '2019-10-11 09:08:28'),
(57, 'browse_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(58, 'read_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(59, 'edit_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(60, 'add_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(61, 'delete_prices', 'prices', '2019-10-11 09:12:27', '2019-10-11 09:12:27'),
(62, 'browse_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(63, 'read_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(64, 'edit_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(65, 'add_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(66, 'delete_p_items', 'p_items', '2019-10-11 09:17:43', '2019-10-11 09:17:43'),
(67, 'browse_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(68, 'read_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(69, 'edit_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(70, 'add_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(71, 'delete_posts', 'posts', '2019-10-11 09:24:28', '2019-10-11 09:24:28'),
(77, 'browse_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(78, 'read_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(79, 'edit_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(80, 'add_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(81, 'delete_learns', 'learns', '2019-10-11 09:28:17', '2019-10-11 09:28:17'),
(82, 'browse_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(83, 'read_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(84, 'edit_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(85, 'add_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(86, 'delete_how_it_works', 'how_it_works', '2019-10-11 09:40:32', '2019-10-11 09:40:32'),
(87, 'browse_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(88, 'read_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(89, 'edit_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(90, 'add_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(91, 'delete_faqs', 'faqs', '2019-10-11 09:42:17', '2019-10-11 09:42:17'),
(92, 'browse_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(93, 'read_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(94, 'edit_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(95, 'add_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(96, 'delete_contacts', 'contacts', '2019-10-11 10:33:43', '2019-10-11 10:33:43'),
(97, 'browse_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(98, 'read_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(99, 'edit_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(100, 'add_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(101, 'delete_slides', 'slides', '2019-10-11 10:43:54', '2019-10-11 10:43:54'),
(107, 'browse_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(108, 'read_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(109, 'edit_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(110, 'add_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(111, 'delete_news_letters', 'news_letters', '2019-10-11 10:46:36', '2019-10-11 10:46:36'),
(112, 'browse_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(113, 'read_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(114, 'edit_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(115, 'add_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(116, 'delete_galleries', 'galleries', '2019-10-11 10:48:13', '2019-10-11 10:48:13'),
(117, 'browse_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(118, 'read_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(119, 'edit_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(120, 'add_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(121, 'delete_gallery_categories', 'gallery_categories', '2019-10-11 10:49:24', '2019-10-11 10:49:24'),
(122, 'browse_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(123, 'read_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(124, 'edit_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(125, 'add_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(126, 'delete_testimonials', 'testimonials', '2019-10-11 10:56:15', '2019-10-11 10:56:15'),
(127, 'browse_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(128, 'read_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(129, 'edit_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(130, 'add_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(131, 'delete_comments', 'comments', '2019-10-11 11:18:12', '2019-10-11 11:18:12'),
(132, 'browse_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(133, 'read_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(134, 'edit_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(135, 'add_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(136, 'delete_order_translations', 'order_translations', '2019-10-11 11:19:48', '2019-10-11 11:19:48'),
(137, 'browse_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(138, 'read_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(139, 'edit_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(140, 'add_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(141, 'delete_sections', 'sections', '2019-10-11 11:34:55', '2019-10-11 11:34:55'),
(142, 'browse_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(143, 'read_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(144, 'edit_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(145, 'add_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39'),
(146, 'delete_teams', 'teams', '2019-10-24 07:01:39', '2019-10-24 07:01:39');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(46, 1),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(107, 1),
(107, 3),
(108, 1),
(108, 3),
(109, 1),
(109, 3),
(110, 1),
(110, 3),
(111, 1),
(111, 3),
(112, 1),
(112, 3),
(113, 1),
(113, 3),
(114, 1),
(114, 3),
(115, 1),
(115, 3),
(116, 1),
(116, 3),
(117, 1),
(117, 3),
(118, 1),
(118, 3),
(119, 1),
(119, 3),
(120, 1),
(120, 3),
(121, 1),
(121, 3),
(122, 1),
(122, 3),
(123, 1),
(123, 3),
(124, 1),
(124, 3),
(125, 1),
(125, 3),
(126, 1),
(126, 3),
(127, 1),
(127, 3),
(128, 1),
(128, 3),
(129, 1),
(129, 3),
(130, 1),
(130, 3),
(131, 1),
(131, 3),
(132, 1),
(132, 3),
(133, 1),
(133, 3),
(134, 1),
(134, 3),
(135, 1),
(135, 3),
(136, 1),
(136, 3),
(137, 1),
(137, 3),
(138, 1),
(138, 3),
(139, 1),
(139, 3),
(140, 1),
(140, 3),
(141, 1),
(141, 3),
(142, 1),
(142, 3),
(143, 1),
(143, 3),
(144, 1),
(144, 3),
(145, 1),
(145, 3),
(146, 1),
(146, 3);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `vue` bigint(20) DEFAULT NULL,
  `like` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `description`, `vue`, `like`, `created_at`, `updated_at`) VALUES
(2, 'posts\\October2019\\dbtRrNYalzw3S4McIMjN.jpg', 'Les différences entre locuteurs natifs et philologues', '<p>D&egrave;s que l&rsquo;on travaille dans le domaine des langues, il y a des questions qui reviennent souvent. Parmi celles qu&rsquo;on me pose le plus souvent : quelle est la diff&eacute;rence entre un locuteur natif et une personne totalement bilingue ?</p>\n<p>D&eacute;j&agrave;, permettez-moi de poser un fait important : personne ne semble d&rsquo;accord sur la question, m&ecirc;me les scientifiques. Mon conseil, &eacute;vitez donc de lancer le sujet dans un repas de famille, encore moins avec des universitaires sp&eacute;cialistes des langues. Je me fie donc &agrave; l&rsquo;exp&eacute;rience. Et toutes les observations que j&rsquo;ai pu faire dans ma vie sur le sujet vont exactement &agrave; la m&ecirc;me conclusion. La voici.</p>\n<p>Il subsiste une diff&eacute;rence irr&eacute;ductible qu&rsquo;aucun cours de langue, aucun s&eacute;jour d&rsquo;immersion, ni aucune petite amie &eacute;trang&egrave;re ne pourront jamais effacer. Le natif est dot&eacute; d&rsquo;un bonus, un superpouvoir tr&egrave;s discret : celui de percevoir des subtilit&eacute;s &agrave; c&ocirc;t&eacute; desquelles un non natif peut facilement passer, m&ecirc;me s&rsquo;il est bilingue.</p>\n<p>En voici 5, qui reviennent souvent.</p>\n<h2><strong>1. Le mot qui pourrait coincer</strong></h2>\n<p>Il faut une connaissance redoutable d&rsquo;une langue pour &ecirc;tre capable de distinguer les doubles-sens que pourrait avoir un mot donn&eacute; dans un contexte pr&eacute;cis. Ou &agrave; l&rsquo;inverse pour &eacute;tablir qu&rsquo;aucun double-sens n&rsquo;est possible.</p>\n<p>Je parle ici des associations de mots qui cr&eacute;ent des connotations non ma&icirc;tris&eacute;es et bien souvent non souhaitables : sexuelles, racistes, blessantes, saugrenues, etc..</p>\n<p>Prenons le fameux &ldquo;Ich bin ein Berliner&rdquo; de Kennedy. Il y a d&rsquo;abord eu un grand d&eacute;bat dans les m&eacute;dias anglophones (non natifs donc), certains sugg&eacute;rant que Kennedy avait dit &ldquo;Je suis un beignet&rsquo; plut&ocirc;t que &ldquo;Je suis un Berlinois&rdquo;.</p>\n<p>En fait la forme qu&rsquo;il a utilis&eacute;e est correcte, tout autant que celle qu&rsquo;on lui a reproch&eacute; de ne pas employer &ldquo;Ich bin Berliner&rdquo;.</p>\n<p>Elle est m&ecirc;me plus adapt&eacute;e, car il y a une subtilit&eacute; que les natifs connaissent, &agrave; la diff&eacute;rence des m&eacute;dias anglais (m&ecirc;me bien vers&eacute;s dans les langues &eacute;trang&egrave;res, comme le New York Times) : &laquo; Ich bin Berliner &raquo; est une phrase plus fr&eacute;quente, mais fonctionne moins bien au sens figur&eacute;, elle aurait donn&eacute; l&rsquo;impression que Kennedy se pr&eacute;sentait comme &eacute;tant v&eacute;ritablement originaire de Berlin. Seul un natif peut donc d&eacute;clarer rapidement qu&rsquo;il a eu raison d&rsquo;employer la phrase qu&rsquo;il a choisie :)</p>\n<h2><strong>2. Le parler &ldquo;non musical&rdquo;</strong></h2>\n<p>Les locuteurs natifs sont les mieux plac&eacute;s pour conna&icirc;tre la fameuse &laquo; musique d&rsquo;une langue &raquo; : ses respirations, les interjections de type &ldquo;hum&rdquo; plac&eacute;es au bon moment&hellip; Bref, autant de petites choses qui donnent &agrave; la langue sa texture r&eacute;elle. C&rsquo;est l&rsquo;un des &eacute;l&eacute;ments les plus difficiles &agrave; acqu&eacute;rir quand on apprend une langue, et des &ldquo;erreurs&rdquo; &agrave; ce niveau sont particuli&egrave;rement dures &agrave; d&eacute;tecter.</p>\n<h2><strong>3. Les &eacute;l&eacute;ments trop h&eacute;t&eacute;rog&egrave;nes</strong></h2>\n<p>C&rsquo;est aussi l&rsquo;homog&eacute;n&eacute;it&eacute; de la langue qui va faire sa musicalit&eacute;. Si m&ecirc;me deux natifs n&rsquo;auront jamais exactement le m&ecirc;me parler (il y a forc&eacute;ment une dimension idiosyncrasique), si chacun parle une langue qu&rsquo;il s&rsquo;est appropri&eacute;e, avec ses individualit&eacute;s qui rassemblent des &eacute;l&eacute;ments venant de lieux divers, reste que des incoh&eacute;rences trop grandes peuvent &ecirc;tre per&ccedil;ues par un natif chez un non natif.</p>\n<p>Un m&eacute;lange d&rsquo;expressions londoniennes avec des choses entendues dans les s&eacute;ries US, par exemple, peut venir cr&eacute;er une &ldquo;friction&rdquo;, quasi indistinguable pour les autres.</p>\n<h2><strong>4. Des trous dans la raquette culturelle</strong></h2>\n<p>&Ccedil;a n&rsquo;a l&rsquo;air de rien, le contexte culturel. On se dit souvent bien h&acirc;tivement que seule la qualit&eacute; de la langue compte.</p>\n<p>Or pour &eacute;changer et se faire comprendre, il n&rsquo;y a pas que la base grammaticale et s&eacute;mantique d&rsquo;un message. Il y a tout un contexte culturel corr&eacute;l&eacute; &agrave; ce que l&rsquo;on dit et qui peut en modifier le sens ou l&rsquo;interpr&eacute;tation.</p>\n<h2><strong>5. Les r&eacute;gionalismes ou cet accent improbable</strong></h2>\n<p>Quand on apprend une langue, on le fait toujours dans un contexte pr&eacute;cis. Au passage, on va embarquer avec soi des bribes de ce contexte : des usages locaux, un accent r&eacute;gional sp&eacute;cifique, une prononciation. A grande &eacute;chelle, cela va donner par exemple les diff&eacute;rences entre un anglais am&eacute;ricain et un anglais britannique ou encore australien ou indien. A petite &eacute;chelle, entre Oxford et Birmingham, entre un British English classe moyenne et un British English d&rsquo;aristocrate. Naturellement, on v&eacute;hicule des informations diff&eacute;rentes selon la langue qu&rsquo;on parle : telle ou telle origine, telle ou telle classe sociale, telle ou telle &eacute;ducation, culture, etc.</p>\n<p>Or un natif est souvent bien mieux &eacute;quip&eacute; pour percevoir ces informations dans une communication orale du simple fait qu&rsquo;il distingue mieux ce qui les constitue (l&rsquo;accent, l&rsquo;usage, la prononciation, etc.).</p>', 124, 2556, '2019-10-23 18:25:00', '2019-10-31 16:29:32'),
(4, 'posts\\October2019\\ck9faTcOG9v4wSvclM1o.jpg', '5 Façons qui vont t\'aider à vite parler Anglais', '<p>Tous les moyens sont bons pour apprendre l&rsquo;anglais, mais cela d&eacute;pend de plusieurs facteurs. L&rsquo;anglais est une langue internationale, c&rsquo;est pour cela qu&rsquo;il est important de la ma&icirc;triser. En plus de cela, il n&rsquo;existe pas de miracle pour ma&icirc;triser cette langue ; il suffit juste de suivre les m&eacute;thodes ci-apr&egrave;s et vous verrez que vous allez progresser petit &agrave; petit. En outre, vous avez &eacute;galement le choix d&rsquo;apprendre l\'anglais &agrave; travers des cours d\'immersion qui permettent une progression rapide. Pour que vous puissiez ma&icirc;triser parfaitement et avec plaisir la langue anglaise, orale et &eacute;crite, suivez les points essentiels ci-apr&egrave;s.</p>\n<h2><strong>S\'habituer aux sons</strong></h2>\n<p>En vous impr&eacute;gnant de la langue anglaise, vous aurez toutes les chances devant vous. Pour s&rsquo;y faire, entourez vous de cette langue. Votre mission consiste &agrave; faire de petits choix au quotidien, tel que d&rsquo;&eacute;couter de la musique anglophone, privil&eacute;gier les &eacute;missions de de t&eacute;l&eacute;vision en version anglaise o&ugrave; &eacute;couter une station de radio anglophone. Ensuite, lisez des livres en anglais &agrave; haute voix pour vous permettre d&rsquo;avoir une habitude &agrave; entendre des vocabulaires et pour avoir une bonne &eacute;locution.</p>\n<h2><strong>Faire des pratiques pour apprendre les r&egrave;gles grammaticales et les vocabulaires</strong></h2>\n<p>L&rsquo;autre alternative pour apprendre l&rsquo;anglais est d&rsquo;avoir des conversations quotidiennes avec des personnes qui parle couramment cette langue. Avec la pratique, vous aurez la chance d&rsquo;apprendre beaucoup plus de vocabulaires et de discuter ais&eacute;ment avec des anglophones. En outre, vous devriez aussi utiliser un cahier pour prendre des notes sur les nouveaux mots. Il est aussi pr&eacute;f&eacute;rable que vous ayez un livre de grammaire et un dictionnaire pour vous aider &agrave; chercher les mots que vous ne comprenez pas.</p>\n<h2><strong>Regarder des cha&icirc;nes youtube</strong></h2>\n<p>Aujourd&rsquo;hui, nombreuses sont les cha&icirc;nes sur YouTube qui proposent des cours en mati&egrave;re de grammaire, phon&eacute;tique et de vocabulaire. Ce sera plus facile pour vous de choisir des th&egrave;mes correspondant &agrave; vos domaines. Non seulement cela va vous aider &agrave; bien parler, mais aussi &agrave; vous aider &agrave; ma&icirc;triser l&rsquo;&eacute;crit.</p>\n<h2><strong>Trouver des amis polyglottes</strong></h2>\n<p>Une des solutions les plus rapides pour apprendre &agrave; parler couramment l&rsquo;anglais est de fr&eacute;quenter des amis polyglottes, c&rsquo;est-&agrave;-dire, des personnes qui parlent en m&ecirc;me temps plusieurs langues. Avec eux, vous ne serez pas g&ecirc;n&eacute; de poser des questions. Parce que tout comme vous, ce sont aussi des personnes passionn&eacute;es du monde de la langue. Ainsi, ces derni&egrave;res peuvent facilement vous corriger et vous donner des conseils et peut-&ecirc;tre m&ecirc;me des cours d&rsquo;appui. De plus, vous pourrez aussi fr&eacute;quenter des amis anglophones, comme &ccedil;a, vous n&rsquo;aurez pas besoin d&rsquo;effectuer un voyage linguistique pour mieux ma&icirc;triser l&rsquo;anglais.</p>\n<h2><strong>Suivre des formations</strong></h2>\n<p>Suivre une ou diff&eacute;rentes formations va vous encadrera dans votre apprentissage, vous &eacute;veillera et vous donnera l&rsquo;envie de se focaliser un peu plus sur la langue anglaise et peut &ecirc;tre aussi sur d&rsquo;autres langues &eacute;trang&egrave;res. Par ailleurs, si vous optez pour des cours de groupe, cela va vous donnera beaucoup d&rsquo;enthousiasme et permettra d&rsquo;acc&eacute;l&eacute;rer votre apprentissage en plus de faire de vous faire un r&eacute;seau de personne avec qui pratiquer.</p>\n<p>&nbsp;</p>\n<p>Il existe plusieurs moyens d&rsquo;apprendre l&rsquo;anglais sans avoir &agrave; voyager et les astuces ci-dessus ne sont que des id&eacute;es. En effet ; il y on a encore des centaines alternatives pour vous aider &agrave; apprendre l&rsquo;anglais. Si vous &ecirc;tes &eacute;tudiant, vous pourrez par exemple fr&eacute;quenter des caf&eacute;s de langue pour rencontrer des personnes ayant le m&ecirc;me but que vous ou rencontrer des gens qui partagent leur savoir-faire et leur connaissance. Le combat est dur, alors ne vous d&eacute;moralisez pas si facilement. En &eacute;tant d&eacute;butant, ne pensez pas que vous allez tout de suite parler comme des natifs. Ce ne serait pas possible qu&rsquo;apr&egrave;s avoir effectu&eacute; plusieurs ann&eacute;es de pratique.&nbsp;</p>', NULL, NULL, '2019-10-25 23:04:00', '2019-10-31 16:33:07');

-- --------------------------------------------------------

--
-- Structure de la table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `prices`
--

INSERT INTO `prices` (`id`, `title`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Programme relax  <br> 2 jrs / semaine', '10000', '', '2019-10-23 16:11:00', '2019-10-24 12:36:06'),
(2, 'Programme normal <br> 4 jrs / semaine', '15000', '', '2019-10-23 16:12:00', '2019-10-24 12:36:50'),
(3, 'Programme accéléré <br> 6 jrs / semaine', '25000', '', '2019-10-23 16:12:00', '2019-10-24 12:37:46');

-- --------------------------------------------------------

--
-- Structure de la table `p_items`
--

CREATE TABLE `p_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `p_items`
--

INSERT INTO `p_items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(8, 'Niveau 1', '', '2019-10-24 12:42:58', '2019-10-24 12:42:58'),
(9, 'Niveau 2', '', '2019-10-24 12:43:14', '2019-10-24 12:43:14'),
(10, 'Niveau 3', '', '2019-10-24 12:43:32', '2019-10-24 12:43:32'),
(11, 'Business English', '', '2019-10-24 12:44:17', '2019-10-24 12:44:17'),
(12, 'Intermediate', '', '2019-10-24 12:44:42', '2019-10-24 12:44:42'),
(13, 'TOEFL / IELTS (Prix variable)', '', '2019-10-24 12:46:00', '2019-10-24 12:47:20');

-- --------------------------------------------------------

--
-- Structure de la table `p_item_price`
--

CREATE TABLE `p_item_price` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_item_id` bigint(20) UNSIGNED NOT NULL,
  `price_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `p_item_price`
--

INSERT INTO `p_item_price` (`id`, `p_item_id`, `price_id`, `created_at`, `updated_at`) VALUES
(18, 8, 1, NULL, NULL),
(19, 9, 1, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 11, 1, NULL, NULL),
(22, 12, 1, NULL, NULL),
(23, 13, 1, NULL, NULL),
(24, 8, 2, NULL, NULL),
(25, 9, 2, NULL, NULL),
(26, 10, 2, NULL, NULL),
(27, 11, 2, NULL, NULL),
(28, 12, 2, NULL, NULL),
(29, 13, 2, NULL, NULL),
(30, 8, 3, NULL, NULL),
(31, 9, 3, NULL, NULL),
(32, 10, 3, NULL, NULL),
(33, 11, 3, NULL, NULL),
(34, 12, 3, NULL, NULL),
(35, 13, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-10-10 15:19:25', '2019-10-10 15:19:25'),
(2, 'user', 'Normal User', '2019-10-10 15:19:25', '2019-10-10 15:19:25'),
(3, 'modo', 'Moderateur', '2019-10-24 09:57:47', '2019-10-24 09:57:47');

-- --------------------------------------------------------

--
-- Structure de la table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sections`
--

INSERT INTO `sections` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'sections/October2019/NWpoSFtu8lWxkuYE5MbD.jpeg', 'Voulez-vous étudier ou travailler à l\'étranger ?', '<p>Notre partenaire ODZUNA CONSULTING vous aide dans l\'obtention de bourse pour les &eacute;tudes en Chypres.</p>', '2019-10-18 18:17:00', '2019-10-28 15:22:58'),
(2, 'sections/October2019/tNvUz7i2IgaptvbtHpiD.jpg', 'Commencer par parler l\'Anglais comme des professionnels', '<p>Inscrivez-vous &agrave; notre cours et booster votre connaissance en Anglais ou Fran&ccedil;ais</p>', '2019-10-22 14:46:00', '2019-10-28 16:10:56'),
(3, 'sections/October2019/7EUHhrIdx8Q0KgX6P1gQ.jpg', 'Ce que vous devez savoir sur nous', '<p>Pour que nous puissions tenir notre promesse d\'un service exceptionnel, chaque poste est attribu&eacute; &agrave; des linguistes sp&eacute;cialis&eacute;s dans diff&eacute;rentes langues et travaillant pour notre entreprise &agrave; plein temps.</p>', '2019-10-23 15:51:00', '2019-10-28 18:12:15'),
(4, 'sections\\October2019\\lyy7tE7rmkt8vurPIiar.jpg', 'Transforming the World of Professional Translation', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis nostrud exercitatio.</p>', '2019-10-23 16:45:37', '2019-10-23 16:45:37');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `icon`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'icon-analytics_doc', NULL, 'Traduction de documents', '', '2019-10-18 17:16:00', '2019-10-24 11:21:26'),
(2, 'icon-clipboard-1', NULL, 'Interprétation', '', '2019-10-18 17:17:00', '2019-10-29 13:15:13'),
(3, 'icon-global', NULL, 'Cours Anglais / Français', '', '2019-10-18 17:20:00', '2019-10-24 11:25:35'),
(4, 'icon-analytics_mob', NULL, 'Préparation au TOEFL / IELTS', '', '2019-10-18 17:20:00', '2019-10-24 11:26:42');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/October2019/p90qOMBfnbuzRDTKaNOK.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Davys\' Languages', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Bienvenue dans la page d\'administration de Davys\' Languages', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `texte1` text COLLATE utf8mb4_unicode_ci,
  `texte2` text COLLATE utf8mb4_unicode_ci,
  `texte3` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `btn_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `slides`
--

INSERT INTO `slides` (`id`, `image`, `texte1`, `texte2`, `texte3`, `description`, `btn_text`, `btn_link`, `created_at`, `updated_at`) VALUES
(1, 'slides/October2019/WjOftJaNelJaMuuDpRFX.jpg', 'Centre de formation', 'Anglais / Français', 'Cours du jour / soir\n', '', 'Contactez-nous', NULL, '2019-10-17 17:31:00', '2019-10-28 15:49:57'),
(2, 'slides/October2019/jQI2EZVDo0L4zolENkMX.jpg', 'Agence de traduction', 'Et d\'interprétation ', '', '', 'Traduisez maintenant', NULL, '2019-10-17 17:42:00', '2019-10-28 15:45:08'),
(3, 'slides/October2019/tbYFTceU3lV3ohtRqqap.jpg', 'Améliorer votre Anglais ou Français ?', 'Pas de soucis, ne trainez plus', 'Venez à nous...', '', 'Contactez-nous', NULL, '2019-10-24 10:31:00', '2019-10-28 16:08:08');

-- --------------------------------------------------------

--
-- Structure de la table `s_items`
--

CREATE TABLE `s_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `s_items`
--

INSERT INTO `s_items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(8, 'certification de documents', '', '2019-10-24 11:31:00', '2019-10-24 11:52:26'),
(9, 'traduction de documents commerciaux', '', '2019-10-24 11:31:00', '2019-10-24 11:35:28'),
(10, 'Traduction de diplômes', '', '2019-10-24 11:32:00', '2019-10-24 11:35:08'),
(12, 'traductions de documents juridiques', '', '2019-10-24 11:33:00', '2019-10-24 11:34:26'),
(13, 'Interprétation consécutive', '', '2019-10-24 11:54:00', '2019-10-24 11:54:00'),
(14, 'Interprétation de liaison', '', '2019-10-24 11:54:35', '2019-10-24 11:54:35'),
(15, 'Interprétation de conférence', '', '2019-10-24 11:55:24', '2019-10-24 11:55:24'),
(16, 'Lire', '', '2019-10-24 11:57:00', '2019-10-24 12:02:59'),
(17, 'Ecrire', '', '2019-10-24 11:58:00', '2019-10-24 12:03:20'),
(18, 'Parler', '', '2019-10-24 12:03:00', '2019-10-24 12:04:27'),
(19, 'Comprendre', '', '2019-10-24 12:04:08', '2019-10-24 12:04:08'),
(20, 'Cours préparatoires', '', '2019-10-24 12:05:00', '2019-10-24 12:05:52');

-- --------------------------------------------------------

--
-- Structure de la table `s_item_service`
--

CREATE TABLE `s_item_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_item_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `s_item_service`
--

INSERT INTO `s_item_service` (`id`, `s_item_id`, `service_id`, `created_at`, `updated_at`) VALUES
(18, 12, 1, NULL, NULL),
(20, 10, 1, NULL, NULL),
(21, 9, 1, NULL, NULL),
(22, 8, 1, NULL, NULL),
(23, 13, 2, NULL, NULL),
(24, 14, 2, NULL, NULL),
(25, 15, 2, NULL, NULL),
(26, 16, 3, NULL, NULL),
(27, 17, 3, NULL, NULL),
(28, 19, 3, NULL, NULL),
(29, 18, 3, NULL, NULL),
(30, 20, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `teams`
--

INSERT INTO `teams` (`id`, `image`, `name`, `title`, `description`, `facebook`, `twitter`, `instagram`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'teams/May2020/XLZhAo4G0GsTeNzyCSy8.jpg', 'moise LAKO', 'CEO & FOUNDER', 'Basé au Togo, notre mission est de fournir des cours de Langues l\' Interprètation et traductions de haute qualité à nos clients. Nous vous préparons au TOEFL et au IELTS.', NULL, NULL, NULL, NULL, '2019-10-24 07:07:00', '2020-05-07 10:53:04'),
(2, 'teams/May2020/YjpKjYk4gZJfeGjvDkte.jpg', 'reine Atchaan', 'OPERATIONS MANAGER', 'Nos clients sont notre priorité principale et c\'est pourquoi notre équipe comprend leurs différents besoins.', NULL, NULL, NULL, NULL, '2019-10-24 07:09:00', '2020-05-07 10:50:43'),
(3, 'teams/May2020/SQj2QGBKI7OZkZzBvPbG.jpg', 'kami KODJO', 'MANAGER', 'Vous voulez améliorer votre Anglais dans un centre de formation? vous voulez traduire vos documents ou encore recherchez vous des Interprètes de conférences?\n   Vous pouvez compter sur nous.', 'davyslanguages', NULL, NULL, 'kodjokami', '2019-10-24 07:10:00', '2020-05-07 10:02:49');

-- --------------------------------------------------------

--
-- Structure de la table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '8efb0eac-02d6-4ed0-902b-2d17ae34437e', '8efb0eac-05fb-4400-b6a1-b22135af9ad5', '1769992bfe366e3ff43685f6f77851bb', 0, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Debug\\\\Exception\\\\FatalThrowableError\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":44,\"message\":\"Class \'App\\\\Http\\\\Controllers\\\\Mail\' not found\",\"trace\":[{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"35\":\"     * @param  \\\\Illuminate\\\\Http\\\\Request  $request\",\"36\":\"     * @return \\\\Illuminate\\\\Http\\\\Response\",\"37\":\"     *\\/\",\"38\":\"    public function store(Request $request)\",\"39\":\"    {\",\"40\":\"        $contact = $request->all();\",\"41\":\"        Contact::create($request->all());\",\"42\":\"        if (Entreprise::all()->isNotEmpty()) {\",\"43\":\"            if(Entreprise::all()->last()->mail1){\",\"44\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));\",\"45\":\"            }        \",\"46\":\"\",\"47\":\"            if(Entreprise::all()->last()->mail2){\",\"48\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));\",\"49\":\"            }\",\"50\":\"        }\",\"51\":\"               \",\"52\":\"        Alert::success(\'Succes\', \'Demande envoy\\u00e9 avec succ\\u00e8s !\');\",\"53\":\"        \",\"54\":\"        return redirect()->route(\'contacts.index\');\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 11:29:00'),
(2, '8efb0eac-05b1-4d94-b44c-56ec2da1db90', '8efb0eac-05fb-4400-b6a1-b22135af9ad5', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"cache-control\":\"max-age=0\",\"content-length\":\"107\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"fhdgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":275,\"memory\":22,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:29:00'),
(3, '8efb0ed9-bc81-42ad-b30b-b597a1056ff1', '8efb0edb-d540-4e6f-a0be-4600f756caac', '1769992bfe366e3ff43685f6f77851bb', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Debug\\\\Exception\\\\FatalThrowableError\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":44,\"message\":\"Class \'App\\\\Http\\\\Controllers\\\\Mail\' not found\",\"trace\":[{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"35\":\"     * @param  \\\\Illuminate\\\\Http\\\\Request  $request\",\"36\":\"     * @return \\\\Illuminate\\\\Http\\\\Response\",\"37\":\"     *\\/\",\"38\":\"    public function store(Request $request)\",\"39\":\"    {\",\"40\":\"        $contact = $request->all();\",\"41\":\"        Contact::create($request->all());\",\"42\":\"        if (Entreprise::all()->isNotEmpty()) {\",\"43\":\"            if(Entreprise::all()->last()->mail1){\",\"44\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));\",\"45\":\"            }        \",\"46\":\"\",\"47\":\"            if(Entreprise::all()->last()->mail2){\",\"48\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));\",\"49\":\"            }\",\"50\":\"        }\",\"51\":\"               \",\"52\":\"        Alert::success(\'Succes\', \'Demande envoy\\u00e9 avec succ\\u00e8s !\');\",\"53\":\"        \",\"54\":\"        return redirect()->route(\'contacts.index\');\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":2}', '2019-10-26 11:29:30'),
(4, '8efb0eda-a51d-4f92-b390-7bff9628e7be', '8efb0edb-d540-4e6f-a0be-4600f756caac', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"cache-control\":\"max-age=0\",\"content-length\":\"106\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":858,\"memory\":22,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:29:31');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(5, '8efb0f59-6f0f-4e8f-9b61-9607895834de', '8efb0f5b-6f80-4d55-ad22-400cb9e458b5', 'fa146714b9f4e34ec312be96289bcc11', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Debug\\\\Exception\\\\FatalThrowableError\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":45,\"message\":\"Class \'App\\\\Http\\\\Controllers\\\\ContactDavys\' not found\",\"trace\":[{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"36\":\"     * @param  \\\\Illuminate\\\\Http\\\\Request  $request\",\"37\":\"     * @return \\\\Illuminate\\\\Http\\\\Response\",\"38\":\"     *\\/\",\"39\":\"    public function store(Request $request)\",\"40\":\"    {\",\"41\":\"        $contact = $request->all();\",\"42\":\"        Contact::create($request->all());\",\"43\":\"        if (Entreprise::all()->isNotEmpty()) {\",\"44\":\"            if(Entreprise::all()->last()->mail1){\",\"45\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));\",\"46\":\"            }        \",\"47\":\"\",\"48\":\"            if(Entreprise::all()->last()->mail2){\",\"49\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));\",\"50\":\"            }\",\"51\":\"        }\",\"52\":\"               \",\"53\":\"        Alert::success(\'Succes\', \'Demande envoy\\u00e9 avec succ\\u00e8s !\');\",\"54\":\"        \",\"55\":\"        return redirect()->route(\'contacts.index\');\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 11:30:54'),
(6, '8efb0f5a-62f1-4d58-9eb2-03b960d774e6', '8efb0f5b-6f80-4d55-ad22-400cb9e458b5', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\",\"content-length\":\"106\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":901,\"memory\":24,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:30:55'),
(7, '8efb0fca-fcf0-42c0-9575-93ec59197d61', '8efb0fcc-1ca9-4c2e-84b4-772468642685', '16bcafbedb2d9872afa0e5ab0d8ac41f', 1, 'exception', '{\"class\":\"ErrorException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":25,\"message\":\"Undefined variable: client\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":25,\"function\":\"handleError\",\"class\":\"Illuminate\\\\Foundation\\\\Bootstrap\\\\HandleExceptions\",\"type\":\"->\",\"args\":[8,\"Undefined variable: client\",\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",25,[]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":46,\"function\":\"__construct\",\"class\":\"App\\\\Mail\\\\ContactDavys\",\"type\":\"->\",\"args\":[{\"_token\":\"6kb1e7HO2WtfCziO2DxF2Rn4uQ3icIdfTLa8wn01\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"16\":\"     *\",\"17\":\"     * @return void\",\"18\":\"     *\\/\",\"19\":\"\",\"20\":\"    protected $client;\",\"21\":\"\",\"22\":\"    public function __construct()\",\"23\":\"    {\",\"24\":\"        $this->client = [\",\"25\":\"            \'name\' => $client[\'name\'],\",\"26\":\"            \'email\' => $client[\'email\'], \",\"27\":\"            \'phone\' => $client[\'phone\'], \",\"28\":\"            \'message\' => $client[\'message\']\",\"29\":\"        ];\",\"30\":\"    }\",\"31\":\"\",\"32\":\"    \\/**\",\"33\":\"     * Build the message.\",\"34\":\"     *\",\"35\":\"     * @return $this\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 11:32:08'),
(8, '8efb0fcb-12b6-4047-b161-ac877df8f6b8', '8efb0fcc-1ca9-4c2e-84b4-772468642685', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\",\"content-length\":\"106\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":419,\"memory\":24,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:32:09');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(9, '8efb10f3-dbb5-488f-8955-2663542696fc', '8efb10f5-2ec8-4fd5-9ae3-fbfef1ecd7f3', '81df4ca1cf9b4f5db18e4b7b19df5268', 1, 'exception', '{\"class\":\"Swift_TransportException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/StreamBuffer.php\",\"line\":269,\"message\":\"Connection could not be established with host mail.davyslanguages.com [Connection refused #111]\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/StreamBuffer.php\",\"line\":58,\"function\":\"establishSocketConnection\",\"class\":\"Swift_Transport_StreamBuffer\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":143,\"function\":\"initialize\",\"class\":\"Swift_Transport_StreamBuffer\",\"type\":\"->\",\"args\":[{\"protocol\":\"tcp\",\"host\":\"mail.davyslanguages.com\",\"port\":2525,\"timeout\":30,\"blocking\":1,\"tls\":true,\"type\":1,\"stream_context_options\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Mailer.php\",\"line\":65,\"function\":\"start\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":484,\"function\":\"send\",\"class\":\"Swift_Mailer\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":259,\"function\":\"sendSwiftMessage\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":159,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{},{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":{},\"__telescope\":[],\"__telescope_mailable\":\"App\\\\Mail\\\\ContactDavys\",\"__telescope_queued\":false,\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Support\\/Traits\\/Localizable.php\",\"line\":19,\"function\":\"Illuminate\\\\Mail\\\\{closure}\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":160,\"function\":\"withLocale\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[null,{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":275,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":229,\"function\":\"sendMailable\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/PendingMail.php\",\"line\":127,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":46,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\PendingMail\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"260\":\"            $options[\'socket\'][\'bindto\'] = $this->params[\'sourceIp\'].\':0\';\",\"261\":\"        }\",\"262\":\"\",\"263\":\"        if (isset($this->params[\'stream_context_options\'])) {\",\"264\":\"            $options = array_merge($options, $this->params[\'stream_context_options\']);\",\"265\":\"        }\",\"266\":\"        $streamContext = stream_context_create($options);\",\"267\":\"        $this->stream = @stream_socket_client($host.\':\'.$this->params[\'port\'], $errno, $errstr, $timeout, STREAM_CLIENT_CONNECT, $streamContext);\",\"268\":\"        if (false === $this->stream) {\",\"269\":\"            throw new Swift_TransportException(\",\"270\":\"                \'Connection could not be established with host \'.$this->params[\'host\'].\",\"271\":\"                \' [\'.$errstr.\' #\'.$errno.\']\'\",\"272\":\"                );\",\"273\":\"        }\",\"274\":\"        if (!empty($this->params[\'blocking\'])) {\",\"275\":\"            stream_set_blocking($this->stream, 1);\",\"276\":\"        } else {\",\"277\":\"            stream_set_blocking($this->stream, 0);\",\"278\":\"        }\",\"279\":\"        stream_set_timeout($this->stream, $timeout);\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 11:35:23'),
(10, '8efb10f3-f305-40ca-b25e-a416b44f552d', '8efb10f5-2ec8-4fd5-9ae3-fbfef1ecd7f3', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\",\"content-length\":\"106\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":482,\"memory\":26,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:35:23'),
(11, '8efb11e3-2114-4317-953d-6426f849e750', '8efb11e4-0598-4650-8224-37ab2eb3eef4', '6f5380cfed6c0897676ac4259e253c30', 0, 'exception', '{\"class\":\"Swift_TransportException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":473,\"message\":\"Connection to tcp:\\/\\/mail.davyslanguages.com:465 Timed Out\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":358,\"function\":\"getFullResponse\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[0]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":147,\"function\":\"readGreeting\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Mailer.php\",\"line\":65,\"function\":\"start\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":484,\"function\":\"send\",\"class\":\"Swift_Mailer\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":259,\"function\":\"sendSwiftMessage\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":159,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{},{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":{},\"__telescope\":[],\"__telescope_mailable\":\"App\\\\Mail\\\\ContactDavys\",\"__telescope_queued\":false,\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Support\\/Traits\\/Localizable.php\",\"line\":19,\"function\":\"Illuminate\\\\Mail\\\\{closure}\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":160,\"function\":\"withLocale\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[null,{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":275,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":229,\"function\":\"sendMailable\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/PendingMail.php\",\"line\":127,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":46,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\PendingMail\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"464\":\"        $response = \'\';\",\"465\":\"        try {\",\"466\":\"            do {\",\"467\":\"                $line = $this->buffer->readLine($seq);\",\"468\":\"                $response .= $line;\",\"469\":\"            } while (null !== $line && false !== $line && \' \' != $line[3]);\",\"470\":\"        } catch (Swift_TransportException $e) {\",\"471\":\"            $this->throwException($e);\",\"472\":\"        } catch (Swift_IoException $e) {\",\"473\":\"            $this->throwException(new Swift_TransportException($e->getMessage(), 0, $e));\",\"474\":\"        }\",\"475\":\"\",\"476\":\"        return $response;\",\"477\":\"    }\",\"478\":\"\",\"479\":\"    \\/** Send an email to the given recipients from the given reverse path *\\/\",\"480\":\"    private function doMailTransaction($message, $reversePath, array $recipients, array &$failedRecipients)\",\"481\":\"    {\",\"482\":\"        $sent = 0;\",\"483\":\"        $this->doMailFromCommand($reversePath);\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 11:38:00'),
(12, '8efb11e3-3709-4014-a646-5625c4a0297a', '8efb11e4-0598-4650-8224-37ab2eb3eef4', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\",\"content-length\":\"106\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"admin@test.com\",\"phone\":\"667878\",\"message\":\"ghgj\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":30391,\"memory\":26,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:38:00');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(13, '8efb122c-e220-493c-ad87-98d122938003', '8efb122d-c5f9-4393-bbb3-ff4f9bebc6d5', '6f5380cfed6c0897676ac4259e253c30', 1, 'exception', '{\"class\":\"Swift_TransportException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":473,\"message\":\"Connection to tcp:\\/\\/mail.davyslanguages.com:465 Timed Out\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":358,\"function\":\"getFullResponse\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[0]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Transport\\/AbstractSmtpTransport.php\",\"line\":147,\"function\":\"readGreeting\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/swiftmailer\\/swiftmailer\\/lib\\/classes\\/Swift\\/Mailer.php\",\"line\":65,\"function\":\"start\",\"class\":\"Swift_Transport_AbstractSmtpTransport\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":484,\"function\":\"send\",\"class\":\"Swift_Mailer\",\"type\":\"->\",\"args\":[{},[]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":259,\"function\":\"sendSwiftMessage\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":159,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{},{\"name\":\"elom\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"667878\",\"message\":{},\"__telescope\":[],\"__telescope_mailable\":\"App\\\\Mail\\\\ContactDavys\",\"__telescope_queued\":false,\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Support\\/Traits\\/Localizable.php\",\"line\":19,\"function\":\"Illuminate\\\\Mail\\\\{closure}\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailable.php\",\"line\":160,\"function\":\"withLocale\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[null,{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":275,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailable\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/Mailer.php\",\"line\":229,\"function\":\"sendMailable\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"667878\",\"message\":\"fghjkl\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Mail\\/PendingMail.php\",\"line\":127,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\Mailer\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"667878\",\"message\":\"fghjkl\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/ContactController.php\",\"line\":46,\"function\":\"send\",\"class\":\"Illuminate\\\\Mail\\\\PendingMail\",\"type\":\"->\",\"args\":[{\"locale\":null,\"from\":[],\"to\":[{\"name\":null,\"address\":\"info@example.com\"}],\"cc\":[],\"bcc\":[],\"replyTo\":[],\"subject\":null,\"view\":null,\"textView\":null,\"viewData\":{\"name\":\"elom\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"667878\",\"message\":\"fghjkl\"},\"attachments\":[],\"rawAttachments\":[],\"diskAttachments\":[],\"callbacks\":[],\"connection\":null,\"queue\":null,\"chainConnection\":null,\"chainQueue\":null,\"delay\":null,\"middleware\":[],\"chained\":[]}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\ContactController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/contacts\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"contacts.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"464\":\"        $response = \'\';\",\"465\":\"        try {\",\"466\":\"            do {\",\"467\":\"                $line = $this->buffer->readLine($seq);\",\"468\":\"                $response .= $line;\",\"469\":\"            } while (null !== $line && false !== $line && \' \' != $line[3]);\",\"470\":\"        } catch (Swift_TransportException $e) {\",\"471\":\"            $this->throwException($e);\",\"472\":\"        } catch (Swift_IoException $e) {\",\"473\":\"            $this->throwException(new Swift_TransportException($e->getMessage(), 0, $e));\",\"474\":\"        }\",\"475\":\"\",\"476\":\"        return $response;\",\"477\":\"    }\",\"478\":\"\",\"479\":\"    \\/** Send an email to the given recipients from the given reverse path *\\/\",\"480\":\"    private function doMailTransaction($message, $reversePath, array $recipients, array &$failedRecipients)\",\"481\":\"    {\",\"482\":\"        $sent = 0;\",\"483\":\"        $this->doMailFromCommand($reversePath);\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":2}', '2019-10-26 11:38:48'),
(14, '8efb122c-f5dd-47e6-9ae9-0b3225429144', '8efb122d-c5f9-4393-bbb3-ff4f9bebc6d5', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/contacts\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\ContactController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"content-type\":\"application\\/x-www-form-urlencoded\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"cache-control\":\"max-age=0\",\"content-length\":\"112\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"elom\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"667878\",\"message\":\"fghjkl\"},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/contacts\"},\"_flash\":{\"old\":[],\"new\":[]}},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":30352,\"memory\":8,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 11:38:48'),
(15, '8efb258d-8184-4d38-80fe-ae676767c2ec', '8efb258f-3541-4db9-be64-105d109ff522', 'a6111b340b31f59a5bfc36b8a8207332', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Debug\\\\Exception\\\\FatalThrowableError\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/OrderTranslationController.php\",\"line\":59,\"message\":\"Class \'App\\\\Http\\\\Controllers\\\\Entreprise\' not found\",\"trace\":[{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{}}]}],\"line_preview\":{\"50\":\"            \'document_type\' => $request->document_type,\",\"51\":\"            \'message\' => $request->message,\",\"52\":\"            \'moyen_contact\' => $request->moyen_contact,\",\"53\":\"        ]);\",\"54\":\"        \",\"55\":\"        if(!$request->message){\",\"56\":\"            $request->message = \\\"  Demande de Traduction de document\\\";\",\"57\":\"        }\",\"58\":\"\",\"59\":\"        if (Entreprise::all()->isNotEmpty()) {\",\"60\":\"            if(Entreprise::all()->last()->mail1){\",\"61\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail1])->send(new ContactDavys($request->all()));\",\"62\":\"            }        \",\"63\":\"\",\"64\":\"            if(Entreprise::all()->last()->mail2){\",\"65\":\"                Mail::to([\'email\' => Entreprise::all()->last()->mail2])->send(new ContactDavys($request->all()));\",\"66\":\"            }\",\"67\":\"        }\",\"68\":\"\",\"69\":\"         Alert::success(\'Succes\', \'Demande envoy\\u00e9 avec succ\\u00e8s !\');\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 12:32:59'),
(16, '8efb258e-6d88-427e-80b0-a30bae32ca2b', '8efb258f-3541-4db9-be64-105d109ff522', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/order-translations\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundary7oq5UuBHYODnJnUl\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"cache-control\":\"max-age=0\",\"content-length\":\"11118\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"name\":\"Frank\",\"email\":\"elomopi10@yahoo.fr\",\"phone\":\"98\",\"source_language\":\"Anglais\",\"target_language\":\"Fran\\u00e7ais\",\"type\":\"Private\",\"domain\":\"Marketing\",\"message\":\"Demande de d\\u00e9vis\",\"file\":{\"name\":\"avatar.jpg\",\"size\":\"9.97KB\"}},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\"},\"_flash\":{\"old\":[],\"new\":[]},\"alert\":[]},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":868,\"memory\":26,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 12:33:00');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(17, '8efb2677-5433-45d4-b7eb-e8b30c9332b9', '8efb2678-36f9-4359-a29a-841d9fa252f7', '134b29ef62d5e5156052ed334cec8810', 0, 'exception', '{\"class\":\"ErrorException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":28,\"message\":\"Undefined index: message\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":28,\"function\":\"handleError\",\"class\":\"Illuminate\\\\Foundation\\\\Bootstrap\\\\HandleExceptions\",\"type\":\"->\",\"args\":[8,\"Undefined index: message\",\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",28,{\"client\":{\"_token\":\"6kb1e7HO2WtfCziO2DxF2Rn4uQ3icIdfTLa8wn01\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{}}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/OrderTranslationController.php\",\"line\":64,\"function\":\"__construct\",\"class\":\"App\\\\Mail\\\\ContactDavys\",\"type\":\"->\",\"args\":[{\"_token\":\"6kb1e7HO2WtfCziO2DxF2Rn4uQ3icIdfTLa8wn01\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{}}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]}],\"line_preview\":{\"19\":\"\",\"20\":\"    protected $client;\",\"21\":\"\",\"22\":\"    public function __construct($client)\",\"23\":\"    {\",\"24\":\"        $this->client = [\",\"25\":\"            \'name\' => $client[\'name\'],\",\"26\":\"            \'email\' => $client[\'email\'], \",\"27\":\"            \'phone\' => $client[\'phone\'], \",\"28\":\"            \'message\' => $client[\'message\']\",\"29\":\"        ];\",\"30\":\"    }\",\"31\":\"\",\"32\":\"    \\/**\",\"33\":\"     * Build the message.\",\"34\":\"     *\",\"35\":\"     * @return $this\",\"36\":\"     *\\/\",\"37\":\"    public function build()\",\"38\":\"    {\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":1}', '2019-10-26 12:35:32'),
(18, '8efb2677-6a66-447a-9333-5b05d60b68e7', '8efb2678-36f9-4359-a29a-841d9fa252f7', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/order-translations\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/order-translations\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryheU223IZ8MjWc2F7\",\"upgrade-insecure-requests\":\"1\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"cache-control\":\"max-age=0\",\"content-length\":\"210031\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{\"name\":\"apk-mobile.pdf\",\"size\":\"208.506KB\"}},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/order-translations\"},\"_flash\":{\"old\":[],\"new\":[]},\"alert\":[]},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":342,\"memory\":26,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 12:35:32'),
(19, '8efb26dc-ea3f-4252-b4e7-c2e04f98dbb0', '8efb26dd-d65d-4a80-bedb-cf52a90c1b7b', '134b29ef62d5e5156052ed334cec8810', 1, 'exception', '{\"class\":\"ErrorException\",\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":28,\"message\":\"Undefined index: message\",\"trace\":[{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",\"line\":28,\"function\":\"handleError\",\"class\":\"Illuminate\\\\Foundation\\\\Bootstrap\\\\HandleExceptions\",\"type\":\"->\",\"args\":[8,\"Undefined index: message\",\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Mail\\/ContactDavys.php\",28,{\"client\":{\"_token\":\"6kb1e7HO2WtfCziO2DxF2Rn4uQ3icIdfTLa8wn01\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{}}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/app\\/Http\\/Controllers\\/OrderTranslationController.php\",\"line\":64,\"function\":\"__construct\",\"class\":\"App\\\\Mail\\\\ContactDavys\",\"type\":\"->\",\"args\":[{\"_token\":\"6kb1e7HO2WtfCziO2DxF2Rn4uQ3icIdfTLa8wn01\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{}}]},{\"function\":\"store\",\"class\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Controller.php\",\"line\":54,\"function\":\"call_user_func_array\",\"args\":[[{},\"store\"],[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/ControllerDispatcher.php\",\"line\":45,\"function\":\"callAction\",\"class\":\"Illuminate\\\\Routing\\\\Controller\",\"type\":\"->\",\"args\":[\"store\",[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":219,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\ControllerDispatcher\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{},\"store\"]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Route.php\",\"line\":176,\"function\":\"runController\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":680,\"function\":\"run\",\"class\":\"Illuminate\\\\Routing\\\\Route\",\"type\":\"->\",\"args\":[]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Routing\\\\{closure}\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Middleware\\/SubstituteBindings.php\",\"line\":41,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Routing\\\\Middleware\\\\SubstituteBindings\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/VerifyCsrfToken.php\",\"line\":75,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\VerifyCsrfToken\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/View\\/Middleware\\/ShareErrorsFromSession.php\",\"line\":49,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\View\\\\Middleware\\\\ShareErrorsFromSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Session\\/Middleware\\/StartSession.php\",\"line\":56,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Session\\\\Middleware\\\\StartSession\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/AddQueuedCookiesToResponse.php\",\"line\":37,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\AddQueuedCookiesToResponse\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Cookie\\/Middleware\\/EncryptCookies.php\",\"line\":66,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Cookie\\\\Middleware\\\\EncryptCookies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":682,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":657,\"function\":\"runRouteWithinStack\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}},{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":623,\"function\":\"runRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{\"uri\":\"fr\\/order-translations\",\"methods\":[\"POST\"],\"action\":{\"middleware\":[\"web\"],\"as\":\"order-translations.store\",\"uses\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"controller\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"namespace\":\"App\\\\Http\\\\Controllers\",\"prefix\":\"\\/fr\",\"where\":[]},\"isFallback\":false,\"controller\":{},\"defaults\":[],\"wheres\":[],\"parameters\":[],\"parameterNames\":[],\"computedMiddleware\":[\"web\"],\"compiled\":{}}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Routing\\/Router.php\",\"line\":612,\"function\":\"dispatchToRoute\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":176,\"function\":\"dispatch\",\"class\":\"Illuminate\\\\Routing\\\\Router\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":130,\"function\":\"Illuminate\\\\Foundation\\\\Http\\\\{closure}\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/TransformsRequest.php\",\"line\":21,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\TransformsRequest\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/ValidatePostSize.php\",\"line\":27,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\ValidatePostSize\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Middleware\\/CheckForMaintenanceMode.php\",\"line\":62,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Middleware\\\\CheckForMaintenanceMode\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/fideloper\\/proxy\\/src\\/TrustProxies.php\",\"line\":57,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":171,\"function\":\"handle\",\"class\":\"Fideloper\\\\Proxy\\\\TrustProxies\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"},{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Pipeline\\/Pipeline.php\",\"line\":105,\"function\":\"Illuminate\\\\Pipeline\\\\{closure}\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":151,\"function\":\"then\",\"class\":\"Illuminate\\\\Pipeline\\\\Pipeline\",\"type\":\"->\",\"args\":[{}]},{\"file\":\"\\/home\\/davyslan\\/davyslanguages\\/vendor\\/laravel\\/framework\\/src\\/Illuminate\\/Foundation\\/Http\\/Kernel.php\",\"line\":116,\"function\":\"sendRequestThroughRouter\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]},{\"file\":\"\\/home\\/davyslan\\/public_html\\/index.php\",\"line\":55,\"function\":\"handle\",\"class\":\"Illuminate\\\\Foundation\\\\Http\\\\Kernel\",\"type\":\"->\",\"args\":[{\"attributes\":{},\"request\":{},\"query\":{},\"server\":{},\"files\":{},\"cookies\":{},\"headers\":{},\"message\":\"  Demande de Traduction de document\"}]}],\"line_preview\":{\"19\":\"\",\"20\":\"    protected $client;\",\"21\":\"\",\"22\":\"    public function __construct($client)\",\"23\":\"    {\",\"24\":\"        $this->client = [\",\"25\":\"            \'name\' => $client[\'name\'],\",\"26\":\"            \'email\' => $client[\'email\'], \",\"27\":\"            \'phone\' => $client[\'phone\'], \",\"28\":\"            \'message\' => $client[\'message\']\",\"29\":\"        ];\",\"30\":\"    }\",\"31\":\"\",\"32\":\"    \\/**\",\"33\":\"     * Build the message.\",\"34\":\"     *\",\"35\":\"     * @return $this\",\"36\":\"     *\\/\",\"37\":\"    public function build()\",\"38\":\"    {\"},\"hostname\":\"lejack4.alls-heberg.fr\",\"occurrences\":2}', '2019-10-26 12:36:39'),
(20, '8efb26dd-00ac-4c59-9591-b87773a809d9', '8efb26dd-d65d-4a80-bedb-cf52a90c1b7b', NULL, 1, 'request', '{\"uri\":\"\\/fr\\/order-translations\",\"method\":\"POST\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\OrderTranslationController@store\",\"middleware\":[\"web\"],\"headers\":{\"cookie\":\"********\",\"accept-language\":\"fr-FR,fr;q=0.9,en-US;q=0.8,en;q=0.7\",\"accept-encoding\":\"gzip, deflate\",\"referer\":\"http:\\/\\/davyslanguages.com\\/fr\\/order-translations\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3\",\"content-type\":\"multipart\\/form-data; boundary=----WebKitFormBoundaryheU223IZ8MjWc2F7\",\"origin\":\"http:\\/\\/davyslanguages.com\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/77.0.3865.120 Safari\\/537.36\",\"upgrade-insecure-requests\":\"1\",\"cache-control\":\"max-age=0\",\"content-length\":\"210031\",\"connection\":\"keep-alive\",\"host\":\"davyslanguages.com\"},\"payload\":{\"_token\":\"********\",\"deadline\":\"Date limite expresse: (24 heures)\",\"document_type\":\"Documents financiers\",\"domain\":\"Scientifique\",\"source_language\":\"fran\\u00e7ais\",\"target_language\":\"Anglais\",\"name\":\"grand\",\"firstname\":\"do\",\"type\":\"Entreprise\",\"phone\":\"3265\",\"email\":\"admin@test.com\",\"moyen_contact\":\"Non, contactez-moi par e-mail\",\"file\":{\"name\":\"apk-mobile.pdf\",\"size\":\"208.506KB\"}},\"session\":{\"locale\":\"fr\",\"_token\":\"********\",\"_previous\":{\"url\":\"http:\\/\\/davyslanguages.com\\/fr\\/order-translations\"},\"_flash\":{\"old\":[],\"new\":[]},\"alert\":[]},\"response_status\":500,\"response\":\"HTML Response\",\"duration\":339,\"memory\":26,\"hostname\":\"lejack4.alls-heberg.fr\"}', '2019-10-26 12:36:39');

-- --------------------------------------------------------

--
-- Structure de la table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `texts`
--

INSERT INTO `texts` (`id`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Accueil', '2019-10-17 19:13:21', '2019-10-17 19:13:21'),
(2, 'A Propos', '2019-10-17 19:13:34', '2019-10-17 19:13:34'),
(3, 'A Propos de nous', '2019-10-17 19:14:01', '2019-10-17 19:14:01'),
(4, 'Notre Equipe', '2019-10-17 19:14:15', '2019-10-17 19:14:15'),
(5, 'Gallerie', '2019-10-17 19:14:00', '2019-10-17 19:14:58'),
(6, 'Services', '2019-10-17 19:15:18', '2019-10-17 19:15:18'),
(7, 'Cours', '2019-10-17 19:15:28', '2019-10-17 19:15:28'),
(8, 'Blog', '2019-10-17 19:15:43', '2019-10-17 19:15:43'),
(9, 'Contactez-nous', '2019-10-17 19:16:00', '2019-10-17 19:16:00'),
(10, 'Commander Traduction', '2019-10-17 19:16:00', '2019-10-26 11:37:46'),
(11, 'Travaillez avec des professionnels', '2019-10-18 07:10:00', '2019-10-24 10:46:29'),
(12, 'Lire Plus', '2019-10-18 07:11:00', '2019-10-24 11:07:27'),
(13, 'Nous offrons une large', '2019-10-18 07:41:00', '2019-10-24 11:09:45'),
(14, 'Range', '2019-10-18 07:42:00', '2019-10-18 07:42:00'),
(15, 'gamme de services', '2019-10-18 07:42:00', '2019-10-24 11:11:07'),
(16, 'ProLingua is a translation company that has been providing high quality, professional translation services for over 15 years. Check out our client list and read some client testimonials. Many customers feel that ProLingua is the best translation company for their requirements.', '2019-10-18 17:12:24', '2019-10-18 17:12:24'),
(17, 'ProLingua stands for Global Translation Services. We have earned our name by being an international translation agency with global reach. With translators in over 100 countries and support of over 60 languages, we have the language expertise you need in every part of the world.', '2019-10-18 17:12:44', '2019-10-18 17:12:44'),
(18, 'Expérience dans les voyages', '2019-10-18 17:50:00', '2019-10-24 16:51:49'),
(19, 'Our Professional Translators are Native Speakers', '2019-10-19 09:15:55', '2019-10-19 09:15:55'),
(20, 'In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company.', '2019-10-19 09:16:22', '2019-10-19 09:16:22'),
(21, 'Get Instant Quote', '2019-10-22 14:47:01', '2019-10-22 14:47:01'),
(22, 'Commander traduction?', '2019-10-22 15:05:00', '2019-10-26 11:37:00'),
(23, 'Foire aux questions', '2019-10-22 15:45:00', '2019-10-24 18:03:30'),
(24, 'Contact Us Now', '2019-10-22 15:50:45', '2019-10-22 15:50:45'),
(25, 'Demander un dévis', '2019-10-22 15:55:00', '2019-10-25 16:38:30'),
(26, 'Nom & Prénoms', '2019-10-23 09:45:00', '2019-10-24 18:57:24'),
(27, 'Email ', '2019-10-23 09:45:00', '2019-10-24 18:58:35'),
(28, 'Numéro de téléphone', '2019-10-23 09:46:00', '2019-10-24 18:58:12'),
(29, 'Langue source', '2019-10-23 09:48:00', '2019-10-24 19:03:25'),
(30, 'Langue cible', '2019-10-23 09:49:00', '2019-10-24 19:03:48'),
(31, 'Entreprise', '2019-10-23 09:50:00', '2019-10-24 19:00:56'),
(32, 'Personnel', '2019-10-23 09:50:00', '2019-10-24 19:03:07'),
(33, 'Select  File', '2019-10-23 09:51:38', '2019-10-23 09:51:38'),
(34, 'Choisir Fichier', '2019-10-23 09:52:00', '2019-10-24 19:03:36'),
(35, 'Domaine', '2019-10-23 09:52:00', '2019-10-24 19:05:41'),
(36, 'Votre Message', '2019-10-23 09:53:00', '2019-10-24 19:04:07'),
(37, 'Envoyer', '2019-10-23 09:58:00', '2019-10-24 19:08:19'),
(38, 'Rester à jour', '2019-10-23 10:11:00', '2019-10-24 19:17:05'),
(39, 'Soyez le premier à connaître nos dernières nouvelles', '2019-10-23 10:12:00', '2019-10-24 19:18:14'),
(40, 'et obtenez des invitations exclusives à nos événements', '2019-10-23 10:17:00', '2019-10-24 19:19:27'),
(41, 'Email', '2019-10-23 12:37:00', '2019-10-24 18:58:06'),
(42, 'Contactez-nous', '2019-10-23 12:37:00', '2019-10-24 19:20:21'),
(43, 'Nos Tarifs', '2019-10-23 16:00:00', '2019-10-24 20:17:24'),
(44, 'Nos Services', '2019-10-23 16:36:00', '2019-10-24 20:38:27'),
(45, 'Travaillez avec des professionnels', '2019-10-23 16:42:00', '2019-10-24 10:45:38'),
(46, 'Besoin de se former', '2019-10-23 16:59:09', '2019-10-23 16:59:09'),
(47, 'Nos Cours', '2019-10-23 16:59:43', '2019-10-23 16:59:43'),
(48, 'Lire Plus', '2019-10-23 17:48:27', '2019-10-23 17:48:27'),
(49, 'Notre Equipe', '2019-10-24 07:13:00', '2019-10-24 20:20:43'),
(50, 'Notre Equipe', '2019-10-24 07:15:39', '2019-10-24 07:15:39'),
(51, 'Send Message', '2019-10-24 08:24:12', '2019-10-24 08:24:12'),
(52, 'Envoyer Message', '2019-10-24 08:25:00', '2019-10-24 18:59:35'),
(53, 'Entrer en contact', '2019-10-24 08:28:00', '2019-10-24 21:01:29'),
(54, 'Pour toutes informations, vous pouvez nous contactez via les adresse ci-dessous ', '2019-10-24 08:30:00', '2019-10-25 18:47:53'),
(55, 'Adresse', '2019-10-24 21:03:49', '2019-10-24 21:03:49'),
(56, 'Je m\'inscris maintenant', '2019-10-25 12:03:57', '2019-10-25 12:03:57'),
(57, 'Nos Post', '2019-10-25 13:19:06', '2019-10-25 13:19:06'),
(58, 'Entrez les exigences du projet', '2019-10-25 14:26:37', '2019-10-25 14:26:37'),
(59, 'Veuillez choisir *', '2019-10-25 14:31:58', '2019-10-25 14:31:58'),
(60, 'Délai standard (2-5 jours ouvrables)', '2019-10-25 14:32:51', '2019-10-25 14:32:51'),
(61, 'Date limite expresse: (24 heures)', '2019-10-25 14:33:53', '2019-10-25 14:33:53'),
(62, 'Délai extra express (2 à 12 heures)', '2019-10-25 14:35:15', '2019-10-25 14:35:15'),
(63, 'Quel type de documents souhaitez-vous traduire?', '2019-10-25 14:36:19', '2019-10-25 14:36:19'),
(64, 'Sélectionner le domaine de spécialisation du document ', '2019-10-25 14:58:02', '2019-10-25 14:58:02'),
(65, 'Entrez vos informations pour procéder à la demande', '2019-10-25 15:15:22', '2019-10-25 15:15:22'),
(66, 'Nom', '2019-10-25 15:17:35', '2019-10-25 15:17:35'),
(67, 'Prénoms', '2019-10-25 15:17:53', '2019-10-25 15:17:53'),
(68, 'Comment vous contacter ?', '2019-10-25 15:20:54', '2019-10-25 15:20:54'),
(69, 'Appelez-moi', '2019-10-25 15:22:07', '2019-10-25 15:22:07'),
(70, 'Non, contactez-moi par e-mail', '2019-10-25 15:26:31', '2019-10-25 15:26:31'),
(71, 'ou écrirez-nous', '2019-10-25 18:46:00', '2019-10-25 18:49:55'),
(72, 'Contactez pour plus de détails', '2019-10-25 19:36:29', '2019-10-25 19:36:29'),
(73, 'Contacts', '2019-10-25 20:08:50', '2019-10-25 20:08:50'),
(74, 'Nos Photos', '2019-10-29 09:37:15', '2019-10-29 09:37:15'),
(75, 'Video', '2019-10-29 09:37:00', '2019-10-29 09:38:33'),
(76, 'https://www.youtube.com/embed/Vt3Q-xvmTq4', '2019-10-29 09:58:00', '2019-10-29 10:15:15');

-- --------------------------------------------------------

--
-- Structure de la table `translates`
--

CREATE TABLE `translates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_rows', 'display_name', 63, 'en', 'Id', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(2, 'data_rows', 'display_name', 64, 'en', 'Image', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(3, 'data_rows', 'display_name', 65, 'en', 'Title', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(4, 'data_rows', 'display_name', 66, 'en', 'Description', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(5, 'data_rows', 'display_name', 67, 'en', 'Created At', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(6, 'data_rows', 'display_name', 68, 'en', 'Updated At', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(7, 'data_types', 'display_name_singular', 7, 'en', 'About', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(8, 'data_types', 'display_name_plural', 7, 'en', 'Abouts', '2019-10-17 18:05:15', '2019-10-17 18:05:15'),
(9, 'texts', 'text', 5, 'en', 'Gallérie', '2019-10-17 19:14:58', '2019-10-17 19:14:58'),
(10, 'data_rows', 'display_name', 69, 'en', 'Id', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(11, 'data_rows', 'display_name', 70, 'en', 'Icon', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(12, 'data_rows', 'display_name', 71, 'en', 'Image', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(13, 'data_rows', 'display_name', 72, 'en', 'Title', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(14, 'data_rows', 'display_name', 73, 'en', 'Description', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(15, 'data_rows', 'display_name', 74, 'en', 'Created At', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(16, 'data_rows', 'display_name', 75, 'en', 'Updated At', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(17, 'data_rows', 'display_name', 201, 'en', 's_items', '2019-10-18 17:19:13', '2019-10-18 17:19:13'),
(18, 'data_types', 'display_name_singular', 8, 'en', 'Service', '2019-10-18 17:19:14', '2019-10-18 17:19:14'),
(19, 'data_types', 'display_name_plural', 8, 'en', 'Services', '2019-10-18 17:19:14', '2019-10-18 17:19:14'),
(20, 'data_rows', 'display_name', 76, 'en', 'Id', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(21, 'data_rows', 'display_name', 77, 'en', 'Title', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(22, 'data_rows', 'display_name', 78, 'en', 'Description', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(23, 'data_rows', 'display_name', 79, 'en', 'Created At', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(24, 'data_rows', 'display_name', 80, 'en', 'Updated At', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(25, 'data_rows', 'display_name', 202, 'en', 'services', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(26, 'data_types', 'display_name_singular', 9, 'en', 'Service Item', '2019-10-18 17:29:32', '2019-10-18 17:29:32'),
(27, 'data_types', 'display_name_plural', 9, 'en', 'Services Items', '2019-10-18 17:29:33', '2019-10-18 17:29:33'),
(34, 'data_rows', 'display_name', 195, 'en', 'Id', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(35, 'data_rows', 'display_name', 196, 'en', 'Image', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(36, 'data_rows', 'display_name', 197, 'en', 'Title', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(37, 'data_rows', 'display_name', 198, 'en', 'Description', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(38, 'data_rows', 'display_name', 199, 'en', 'Created At', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(39, 'data_rows', 'display_name', 200, 'en', 'Updated At', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(40, 'data_types', 'display_name_singular', 26, 'en', 'Section', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(41, 'data_types', 'display_name_plural', 26, 'en', 'Sections', '2019-10-18 18:14:35', '2019-10-18 18:14:35'),
(49, 'data_rows', 'display_name', 105, 'en', 'Id', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(50, 'data_rows', 'display_name', 106, 'en', 'Image', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(51, 'data_rows', 'display_name', 107, 'en', 'Title', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(52, 'data_rows', 'display_name', 108, 'en', 'Description', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(53, 'data_rows', 'display_name', 109, 'en', 'Created At', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(54, 'data_rows', 'display_name', 110, 'en', 'Updated At', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(55, 'data_types', 'display_name_singular', 14, 'en', 'Learn', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(56, 'data_types', 'display_name_plural', 14, 'en', 'Learns', '2019-10-23 17:31:33', '2019-10-23 17:31:33'),
(57, 'data_rows', 'display_name', 92, 'en', 'Id', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(58, 'data_rows', 'display_name', 93, 'en', 'Image', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(59, 'data_rows', 'display_name', 94, 'en', 'Title', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(60, 'data_rows', 'display_name', 95, 'en', 'Description', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(61, 'data_rows', 'display_name', 96, 'en', 'Vue', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(62, 'data_rows', 'display_name', 97, 'en', 'Like', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(63, 'data_rows', 'display_name', 98, 'en', 'Created At', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(64, 'data_rows', 'display_name', 99, 'en', 'Updated At', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(65, 'data_types', 'display_name_singular', 12, 'en', 'Post', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(66, 'data_types', 'display_name_plural', 12, 'en', 'Posts', '2019-10-23 18:34:03', '2019-10-23 18:34:03'),
(69, 'posts', 'title', 2, 'en', 'The Differences Between Native Speakers And Philologists', '2019-10-23 18:40:00', '2019-10-23 18:40:00'),
(70, 'posts', 'description', 2, 'en', '<p>dipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>\n<p>&nbsp;</p>\n<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in</p>', '2019-10-23 18:40:00', '2019-10-23 18:40:00'),
(85, 'data_rows', 'display_name', 203, 'en', 'Id', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(86, 'data_rows', 'display_name', 204, 'en', 'Image', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(87, 'data_rows', 'display_name', 205, 'en', 'Name', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(88, 'data_rows', 'display_name', 206, 'en', 'Title', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(89, 'data_rows', 'display_name', 207, 'en', 'Description', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(90, 'data_rows', 'display_name', 208, 'en', 'Facebook', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(91, 'data_rows', 'display_name', 209, 'en', 'Twitter', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(92, 'data_rows', 'display_name', 210, 'en', 'Instagram', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(93, 'data_rows', 'display_name', 211, 'en', 'Linkedin', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(94, 'data_rows', 'display_name', 212, 'en', 'Created At', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(95, 'data_rows', 'display_name', 213, 'en', 'Updated At', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(96, 'data_types', 'display_name_singular', 27, 'en', 'Team', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(97, 'data_types', 'display_name_plural', 27, 'en', 'Teams', '2019-10-24 07:05:34', '2019-10-24 07:05:34'),
(98, 'teams', 'title', 1, 'en', 'CEO & FOUNDER', '2019-10-24 07:09:46', '2019-10-24 07:09:46'),
(99, 'data_rows', 'display_name', 155, 'en', 'Id', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(100, 'data_rows', 'display_name', 191, 'en', 'Gallery Category', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(101, 'data_rows', 'display_name', 156, 'en', 'Image', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(102, 'data_rows', 'display_name', 157, 'en', 'Title', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(103, 'data_rows', 'display_name', 158, 'en', 'Description', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(104, 'data_rows', 'display_name', 159, 'en', 'Created At', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(105, 'data_rows', 'display_name', 160, 'en', 'Updated At', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(106, 'data_rows', 'display_name', 192, 'en', 'gallery_categories', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(107, 'data_types', 'display_name_singular', 21, 'en', 'Gallery', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(108, 'data_types', 'display_name_plural', 21, 'en', 'Galleries', '2019-10-24 07:38:02', '2019-10-24 07:38:02'),
(109, 'data_rows', 'display_name', 214, 'en', 'gallery_categories', '2019-10-24 07:46:40', '2019-10-24 07:46:40'),
(111, 'slides', 'texte1', 1, 'en', 'High Professional', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(112, 'slides', 'texte2', 1, 'en', 'Translation Services', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(113, 'slides', 'texte3', 1, 'en', 'You Can Trust', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(114, 'slides', 'btn_text', 1, 'en', 'Translate Now', '2019-10-24 10:09:49', '2019-10-24 10:09:49'),
(115, 'slides', 'texte1', 2, 'en', 'Work Easily', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(116, 'slides', 'texte2', 2, 'en', 'With Our Professional', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(117, 'slides', 'texte3', 2, 'en', 'Translation Agency', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(118, 'slides', 'btn_text', 2, 'en', 'Discover More', '2019-10-24 10:25:27', '2019-10-24 10:25:27'),
(119, 'slides', 'texte1', 3, 'en', 'Améliorer votre Anglais ou Français ?', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(120, 'slides', 'texte2', 3, 'en', 'Pas de soucis, ne trainez plus', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(121, 'slides', 'texte3', 3, 'en', 'Venez à nous...', '2019-10-24 10:35:37', '2019-10-24 10:35:37'),
(122, 'texts', 'text', 45, 'en', 'Proven Experience', '2019-10-24 10:45:38', '2019-10-24 10:45:38'),
(123, 'texts', 'text', 11, 'en', 'Proven Experience', '2019-10-24 10:46:29', '2019-10-24 10:46:29'),
(124, 'abouts', 'title', 1, 'en', 'Order Professional Translations in Just a Few Clicks', '2019-10-24 10:53:02', '2019-10-24 10:53:02'),
(125, 'abouts', 'description', 1, 'en', '<p>ProLingua is a professional translation company which offers exceptional language expertise services. We have experienced team, flexible prices, and international quality certification.</p>', '2019-10-24 10:53:02', '2019-10-24 10:53:02'),
(126, 'texts', 'text', 12, 'en', 'Learn More', '2019-10-24 11:07:27', '2019-10-24 11:07:27'),
(127, 'texts', 'text', 13, 'en', 'We Offer a Wide', '2019-10-24 11:09:45', '2019-10-24 11:09:45'),
(128, 'texts', 'text', 15, 'en', 'of Translation Services', '2019-10-24 11:11:07', '2019-10-24 11:11:07'),
(129, 'services', 'title', 1, 'en', 'Documents Translation', '2019-10-24 11:21:26', '2019-10-24 11:21:26'),
(130, 'services', 'title', 2, 'en', 'Apostile & Legalization', '2019-10-24 11:22:15', '2019-10-24 11:22:15'),
(131, 'services', 'title', 3, 'en', 'Localization Services', '2019-10-24 11:25:35', '2019-10-24 11:25:35'),
(132, 'services', 'title', 4, 'en', 'Website Translation', '2019-10-24 11:26:04', '2019-10-24 11:26:04'),
(133, 's_items', 'title', 12, 'en', 'traductions de documents juridiques', '2019-10-24 11:34:26', '2019-10-24 11:34:26'),
(135, 's_items', 'title', 10, 'en', 'Traduction de diplômes', '2019-10-24 11:35:08', '2019-10-24 11:35:08'),
(136, 's_items', 'title', 9, 'en', 'traduction de documents commerciaux', '2019-10-24 11:35:29', '2019-10-24 11:35:29'),
(137, 's_items', 'title', 8, 'en', 'traductions de lettres', '2019-10-24 11:35:47', '2019-10-24 11:35:47'),
(138, 's_items', 'title', 16, 'en', 'Parler / Ecrire', '2019-10-24 12:02:59', '2019-10-24 12:02:59'),
(139, 's_items', 'title', 17, 'en', 'Lire et comprendre', '2019-10-24 12:03:20', '2019-10-24 12:03:20'),
(140, 's_items', 'title', 18, 'en', 'Parler', '2019-10-24 12:04:27', '2019-10-24 12:04:27'),
(141, 's_items', 'title', 20, 'en', 'Cours préparatoire', '2019-10-24 12:05:52', '2019-10-24 12:05:52'),
(142, 'prices', 'title', 1, 'en', 'STANDART', '2019-10-24 12:33:35', '2019-10-24 12:33:35'),
(143, 'prices', 'title', 2, 'en', 'EXPRESS', '2019-10-24 12:36:50', '2019-10-24 12:36:50'),
(144, 'prices', 'title', 3, 'en', 'INSTANT', '2019-10-24 12:37:46', '2019-10-24 12:37:46'),
(145, 'p_items', 'title', 13, 'en', 'TOEFL / IELTS', '2019-10-24 12:47:20', '2019-10-24 12:47:20'),
(146, 'faqs', 'title', 4, 'en', 'Who sees the documents for translation?', '2019-10-24 16:08:46', '2019-10-24 16:08:46'),
(147, 'faqs', 'description', 4, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 16:08:47', '2019-10-24 16:08:47'),
(148, 'faqs', 'title', 2, 'en', 'How do I submit a translation project?', '2019-10-24 16:10:44', '2019-10-24 16:10:44'),
(149, 'faqs', 'description', 2, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 16:10:44', '2019-10-24 16:10:44'),
(150, 'sections', 'title', 1, 'en', 'Our Professional Translators are Native Speakers', '2019-10-24 16:24:03', '2019-10-24 16:24:03'),
(151, 'sections', 'description', 1, 'en', '<p>In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company.</p>', '2019-10-24 16:24:03', '2019-10-24 16:24:03'),
(152, 'texts', 'text', 18, 'en', 'Experience in the Industry', '2019-10-24 16:51:49', '2019-10-24 16:51:49'),
(153, 'faqs', 'title', 1, 'en', 'How can I receive a quote for my website?', '2019-10-24 17:01:30', '2019-10-24 17:01:30'),
(154, 'faqs', 'description', 1, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliquat enim ad minim veniam, quis', '2019-10-24 17:01:30', '2019-10-24 17:01:30'),
(155, 'sections', 'title', 2, 'en', 'Transforming the World of Professional Translation', '2019-10-24 17:01:53', '2019-10-24 17:01:53'),
(156, 'sections', 'description', 2, 'en', '<p>Interested, but in a hurry?</p>', '2019-10-24 17:01:53', '2019-10-24 17:01:53'),
(157, 'texts', 'text', 23, 'en', 'Faq’s', '2019-10-24 17:08:34', '2019-10-24 17:08:34'),
(158, 'texts', 'text', 22, 'en', 'How it Works', '2019-10-24 17:21:23', '2019-10-24 17:21:23'),
(159, 'how_it_works', 'title', 2, 'en', 'Approve the quote and pay', '2019-10-24 17:38:19', '2019-10-24 17:38:19'),
(160, 'how_it_works', 'description', 2, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore.', '2019-10-24 17:38:19', '2019-10-24 17:38:19'),
(161, 'how_it_works', 'title', 1, 'en', 'Your  translation is ready in your inbox', '2019-10-24 17:41:04', '2019-10-24 17:41:04'),
(162, 'how_it_works', 'description', 1, 'en', 'Magna aliquat enim ad minim veniam, quis nostrud exercitatio ullamco laboris nisi ut aliquip exea.', '2019-10-24 17:41:04', '2019-10-24 17:41:04'),
(163, 'texts', 'text', 25, 'en', 'Get a Quote', '2019-10-24 18:55:39', '2019-10-24 18:55:39'),
(164, 'texts', 'text', 26, 'en', 'Full Name', '2019-10-24 18:56:10', '2019-10-24 18:56:10'),
(165, 'texts', 'text', 41, 'en', 'Email Address', '2019-10-24 18:58:06', '2019-10-24 18:58:06'),
(166, 'texts', 'text', 28, 'en', 'Phone Number', '2019-10-24 18:58:12', '2019-10-24 18:58:12'),
(167, 'texts', 'text', 27, 'en', 'Email Address', '2019-10-24 18:58:35', '2019-10-24 18:58:35'),
(168, 'texts', 'text', 52, 'en', 'Send a Message', '2019-10-24 18:59:35', '2019-10-24 18:59:35'),
(169, 'texts', 'text', 31, 'en', 'Company', '2019-10-24 19:00:23', '2019-10-24 19:00:23'),
(170, 'texts', 'text', 32, 'en', 'Private', '2019-10-24 19:03:07', '2019-10-24 19:03:07'),
(171, 'texts', 'text', 29, 'en', 'Source Language', '2019-10-24 19:03:25', '2019-10-24 19:03:25'),
(172, 'texts', 'text', 34, 'en', 'Upload File', '2019-10-24 19:03:36', '2019-10-24 19:03:36'),
(173, 'texts', 'text', 30, 'en', 'Target Language', '2019-10-24 19:03:48', '2019-10-24 19:03:48'),
(174, 'texts', 'text', 36, 'en', 'Your Message', '2019-10-24 19:04:07', '2019-10-24 19:04:07'),
(175, 'texts', 'text', 35, 'en', 'Industry', '2019-10-24 19:05:41', '2019-10-24 19:05:41'),
(176, 'texts', 'text', 37, 'en', 'Get Me An Instant Quote', '2019-10-24 19:08:19', '2019-10-24 19:08:19'),
(177, 'texts', 'text', 38, 'en', 'Stay Update', '2019-10-24 19:17:05', '2019-10-24 19:17:05'),
(178, 'texts', 'text', 39, 'en', 'Be the first to know about our latest editions', '2019-10-24 19:18:14', '2019-10-24 19:18:14'),
(179, 'texts', 'text', 40, 'en', 'and get exlusive invites to our events.', '2019-10-24 19:19:27', '2019-10-24 19:19:27'),
(180, 'texts', 'text', 42, 'en', 'Contact Us', '2019-10-24 19:20:21', '2019-10-24 19:20:21'),
(181, 'sections', 'title', 3, 'en', 'What You Need to Know About Us', '2019-10-24 19:43:27', '2019-10-24 19:43:27'),
(182, 'sections', 'description', 3, 'en', '<p>In order for us to live up to our promise of an outstanding service, each job is assigned to linguists with specializations in various languages who work for our company on a full-time basis.</p>', '2019-10-24 19:43:27', '2019-10-24 19:43:27'),
(183, 'texts', 'text', 43, 'en', 'Competitive Prices', '2019-10-24 20:17:24', '2019-10-24 20:17:24'),
(184, 'texts', 'text', 49, 'en', 'Meet Our Team', '2019-10-24 20:20:43', '2019-10-24 20:20:43'),
(185, 'texts', 'text', 44, 'en', 'Our Services', '2019-10-24 20:38:27', '2019-10-24 20:38:27'),
(186, 'texts', 'text', 53, 'en', 'Get in Touch', '2019-10-24 21:01:29', '2019-10-24 21:01:29'),
(187, 'texts', 'text', 54, 'en', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore.', '2019-10-24 21:03:18', '2019-10-24 21:03:18'),
(188, 'learns', 'title', 3, 'en', 'How to Overcome the Fear of Writing in a Foreign Language', '2019-10-25 18:27:20', '2019-10-25 18:27:20'),
(189, 'learns', 'description', 3, 'en', '<p>Erat elementum fuga phasellus non turpis augue. Elit massa dolor id mollis magna. Orci nulla sagittis. Habitasse risus felis sollicitudin eleifend et, vehicula pharetra commodo quis, taciti ridiculus ipsum netus facilisis quisque, suspendisse diam. Nascetur turpis pulvinar sollicitudin conubia lorem neque, odio pellentesque quisque et, pellentesque augue eget tortor ut</p>\n<p>&nbsp;</p>\n<p>Placerat orci est vitae purus, morbi sit aenean sollicitudin volutpat morbi, amet lacus a convallis, sit tempus quis consectetuer lacus. Sollicitudin et, sed tortor sagittis sapien, morbi rutrum aliquam mus pellentesque felis quis. Fusce purus vel et wisi rhoncus in, metus aenean orci curabitur blandit, et lorem rutrum vestibulum turpis</p>\n<p>&nbsp;</p>\n<p>Adipiscing eu porttitor. Mauris ante blandit nesciunt fringilla montes. Sociis sapien viverra sit est ut, ullamcorper pulvinar itaque dignissim ac donec tempor, urna nam volutpat, wisi metus at a. Feugiat id eget senectus enim erat vel, varius lorem condimentum ad, magna neque, tellus quam dignissim cras, leo id atque urna</p>', '2019-10-25 18:27:20', '2019-10-25 18:27:20'),
(190, 'texts', 'text', 71, 'en', 'ou nous écrire', '2019-10-25 18:49:55', '2019-10-25 18:49:55'),
(191, 'data_rows', 'display_name', 22, 'en', 'Id', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(192, 'data_rows', 'display_name', 23, 'en', 'Name1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(193, 'data_rows', 'display_name', 24, 'en', 'Name2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(194, 'data_rows', 'display_name', 25, 'en', 'Name3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(195, 'data_rows', 'display_name', 26, 'en', 'Logo1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(196, 'data_rows', 'display_name', 27, 'en', 'Logo2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(197, 'data_rows', 'display_name', 28, 'en', 'Logo3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(198, 'data_rows', 'display_name', 29, 'en', 'Photo1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(199, 'data_rows', 'display_name', 30, 'en', 'Photo2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(200, 'data_rows', 'display_name', 31, 'en', 'Photo3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(201, 'data_rows', 'display_name', 32, 'en', 'Titre', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(202, 'data_rows', 'display_name', 33, 'en', 'About1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(203, 'data_rows', 'display_name', 34, 'en', 'About2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(204, 'data_rows', 'display_name', 35, 'en', 'About3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(205, 'data_rows', 'display_name', 36, 'en', 'Facebook', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(206, 'data_rows', 'display_name', 37, 'en', 'Youtube', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(207, 'data_rows', 'display_name', 38, 'en', 'Twitter', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(208, 'data_rows', 'display_name', 39, 'en', 'Instagram', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(209, 'data_rows', 'display_name', 40, 'en', 'Linkedin', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(210, 'data_rows', 'display_name', 41, 'en', 'Skype', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(211, 'data_rows', 'display_name', 42, 'en', 'Whatsapp', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(212, 'data_rows', 'display_name', 43, 'en', 'Mail1', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(213, 'data_rows', 'display_name', 44, 'en', 'Mail2', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(214, 'data_rows', 'display_name', 45, 'en', 'Mail3', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(215, 'data_rows', 'display_name', 46, 'en', 'Mail4', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(216, 'data_rows', 'display_name', 47, 'en', 'Mail5', '2019-10-25 20:24:32', '2019-10-25 20:24:32'),
(217, 'data_rows', 'display_name', 48, 'en', 'Tel1', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(218, 'data_rows', 'display_name', 49, 'en', 'Tel2', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(219, 'data_rows', 'display_name', 50, 'en', 'Tel3', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(220, 'data_rows', 'display_name', 51, 'en', 'Tel4', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(221, 'data_rows', 'display_name', 52, 'en', 'Tel5', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(222, 'data_rows', 'display_name', 53, 'en', 'Created At', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(223, 'data_rows', 'display_name', 54, 'en', 'Updated At', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(224, 'data_types', 'display_name_singular', 4, 'en', 'Entreprise', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(225, 'data_types', 'display_name_plural', 4, 'en', 'Entreprises', '2019-10-25 20:24:33', '2019-10-25 20:24:33'),
(226, 'posts', 'title', 4, 'en', '5 Façons qui vont t\'aider à vite parler Anglais', '2019-10-25 23:38:39', '2019-10-25 23:38:39'),
(227, 'posts', 'description', 4, 'en', '<p>Elementum praesent tristique velit mollis. Sit sapien totam, dignissim diam sed at quis, amet tincidunt nam et quis, tortor sit nulla. Sit porttitor libero ut at et turpis, eu rhoncus blandit donec erat mauris sollicitudin, officia aptent consectetuer urna nulla. Alias consequat sem lacus porttitor ornare erat. Et vitae in curae quis risus, parturient sociis diam arcu odio nec, consectetuer malesuada tortor quis id nunc eu, facilisis sodales. At cras blandit felis vel id, consequat laoreet venenatis sem, mi ullamcorper curabitur urna morbi leo, lorem purus, vestibulum cursus rutrum curabitur augue tellus deserunt. Nullam quisque voluptates dolor amet integer id, amet justo orci pellentesque in pellentesque, odio pede tempor lectus in, cursus metus euismod, pharetra mollis ipsum. Phasellus magna condimentum semper, sit pellentesque tristique, voluptatem nec morbi nullam, soluta vel commodo massa aliquam leo ut, mauris porta id lectus. Fringilla pellentesque, amet ipsum odio at sapien aliquam, nullam adipiscing eu aliquam enim eget adipiscing. Adipiscing ac vestibulum, ipsum ut hendrerit duis lacus praesent, pellentesque eros non aliquet convallis, risus vel arcu. Nec aliquet dui lacus, dolor ante erat ipsum molestie arcu, vitae fusce ut laoreet maecenas nulla magna, vulputate libero pellentesque, magna vel amet ac convallis sem tortor.</p>\n<p>Sollicitudin mauris massa mi, diam morbi mi taciti amet aliquam, vel ornare. Proin wisi tempus, neque aliquam at. Congue id rhoncus nunc orci magna, vitae massa fringilla cum, suspendisse magni porttitor pellentesque ultrices risus, nibh venenatis curabitur accumsan erat libero quisque. Adipiscing justo nunc, consequat aenean lacus euismod hic sed. Ut integer, nulla tellus, aenean netus, elit interdum eget, sed elit eu sed consectetuer wisi id. Odio justo elit morbi, etiam ac, dolor penatibus sint libero scelerisque fringilla, id in fusce.</p>', '2019-10-25 23:38:39', '2019-10-25 23:38:39'),
(228, 'texts', 'text', 10, 'en', 'Commander Translation', '2019-10-26 11:37:46', '2019-10-26 11:37:46'),
(229, 'slides', 'btn_text', 3, 'en', 'Contactez-nous', '2019-10-28 15:46:30', '2019-10-28 15:46:30'),
(230, 'texts', 'text', 75, 'en', 'Video', '2019-10-29 09:38:33', '2019-10-29 09:38:33'),
(231, 'texts', 'text', 76, 'en', 'https://www.youtube.com/watch?v=iHaeZzw9Hz0', '2019-10-29 09:59:14', '2019-10-29 09:59:14'),
(232, 'teams', 'description', 1, 'en', 'Our company mission is to provide high quality translations to our international clients.', '2019-11-01 05:12:41', '2019-11-01 05:12:41'),
(233, 'teams', 'title', 2, 'en', 'OPERATIONS MANAGER', '2019-11-01 05:15:05', '2019-11-01 05:15:05'),
(234, 'teams', 'description', 2, 'en', 'Our clients are our main priority which is why our team understands their different needs.', '2019-11-01 05:15:05', '2019-11-01 05:15:05'),
(235, 'teams', 'title', 3, 'en', 'MANAGER', '2019-11-01 05:18:46', '2019-11-01 05:18:46'),
(236, 'teams', 'description', 3, 'en', 'You can count on us to get the job done efficiently, and at the highest quality level.', '2019-11-01 05:18:46', '2019-11-01 05:18:46'),
(237, 'data_rows', 'display_name', 123, 'en', 'Id', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(238, 'data_rows', 'display_name', 124, 'en', 'Name', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(239, 'data_rows', 'display_name', 125, 'en', 'Email', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(240, 'data_rows', 'display_name', 126, 'en', 'Phone', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(241, 'data_rows', 'display_name', 127, 'en', 'Message', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(242, 'data_rows', 'display_name', 128, 'en', 'Created At', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(243, 'data_rows', 'display_name', 129, 'en', 'Updated At', '2021-08-02 15:45:59', '2021-08-02 15:45:59'),
(244, 'data_types', 'display_name_singular', 17, 'en', 'Contact', '2021-08-02 15:46:00', '2021-08-02 15:46:00'),
(245, 'data_types', 'display_name_plural', 17, 'en', 'Contacts', '2021-08-02 15:46:00', '2021-08-02 15:46:00');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dav', 'dav@dav.com', 'users/default.png', NULL, '$2y$10$ukCIcpkuiiU5Wisafn/3NOChF9/FQJz3gGzuHNdpQoFkhrM00F1C6', 'drO22yUBUOoNMNwUKeHbuX0OWifoua2PcCr5bbPyAzAUPFaxsbO9yyGN8A9X', NULL, '2019-10-10 15:21:34', '2019-10-10 15:21:35'),
(2, 3, 'Admin', 'admin@admin.com', 'users\\October2019\\H9C2JAJzY9rrWpAnIwwS.png', NULL, '$2y$10$9ZNiJjRMd7TKeM4N3b6j0.46c.Sp.G8Qy6UxvylDv7NTyg7UnscxO', NULL, '{\"locale\":\"fr\"}', '2019-10-24 09:55:57', '2019-10-24 10:00:10');

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_authors`
--

CREATE TABLE `wink_authors` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wink_authors`
--

INSERT INTO `wink_authors` (`id`, `slug`, `name`, `email`, `password`, `bio`, `avatar`, `remember_token`, `created_at`, `updated_at`, `meta`) VALUES
('4a67406a-f291-41fc-be1a-092c34b302f1', 'regina-phalange', 'Regina Phalange', 'dav@dav.com', '$2y$10$ukCIcpkuiiU5Wisafn/3NOChF9/FQJz3gGzuHNdpQoFkhrM00F1C6', 'This is me.', NULL, NULL, '2019-10-12 11:44:46', '2019-10-12 11:44:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `wink_pages`
--

CREATE TABLE `wink_pages` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_posts`
--

CREATE TABLE `wink_posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `publish_date` datetime NOT NULL DEFAULT '2018-10-10 00:00:00',
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wink_posts`
--

INSERT INTO `wink_posts` (`id`, `slug`, `title`, `excerpt`, `body`, `published`, `publish_date`, `featured_image`, `featured_image_caption`, `author_id`, `created_at`, `updated_at`, `meta`) VALUES
('360c3602-b67b-492e-9192-02d14ed3d6cb', 'draft-360c3602-b67b-492e-9192-02d14ed3d6cb', 'Draft', '', '<p>u ksk sdsionsdio sdioin qsdfsdoins sidfos</p><div class=\"embedded_image\" contenteditable=\"false\" data-layout=\"default\"><img alt=\"\" src=\"/storage/wink/images/Kjm3VlUpNMUPXnF4441ZlugWm5CoVBp4ttj0mekF.jpeg\"></div><div class=\"inline_html\" contenteditable=\"false\">https://www.youtube.com/watch?v=_Kn6_0IRHck</div><div class=\"inline_html\" contenteditable=\"false\"><iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_Kn6_0IRHck\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\"></iframe></div><div class=\"inline_html\" contenteditable=\"false\">https://www.youtube.com/watch?v=_Kn6_0IRHck</div><p><br></p>', 0, '2019-10-12 13:56:00', NULL, '', '4a67406a-f291-41fc-be1a-092c34b302f1', '2019-10-12 11:56:36', '2019-10-12 12:03:33', '{\"meta_description\":null,\"opengraph_title\":null,\"opengraph_description\":null,\"opengraph_image\":null,\"opengraph_image_width\":null,\"opengraph_image_height\":null,\"twitter_title\":null,\"twitter_description\":null,\"twitter_image\":null}');

-- --------------------------------------------------------

--
-- Structure de la table `wink_posts_tags`
--

CREATE TABLE `wink_posts_tags` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wink_tags`
--

CREATE TABLE `wink_tags` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_gallery_category_id_foreign` (`gallery_category_id`);

--
-- Index pour la table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `how_it_works`
--
ALTER TABLE `how_it_works`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `learns`
--
ALTER TABLE `learns`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order_translations`
--
ALTER TABLE `order_translations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `p_items`
--
ALTER TABLE `p_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_item_price_p_item_id_foreign` (`p_item_id`),
  ADD KEY `p_item_price_price_id_foreign` (`price_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_items`
--
ALTER TABLE `s_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `s_item_service_s_item_id_foreign` (`s_item_id`),
  ADD KEY `s_item_service_service_id_foreign` (`service_id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Index pour la table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Index pour la table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Index pour la table `wink_authors`
--
ALTER TABLE `wink_authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_authors_slug_unique` (`slug`),
  ADD UNIQUE KEY `wink_authors_email_unique` (`email`);

--
-- Index pour la table `wink_pages`
--
ALTER TABLE `wink_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_pages_slug_unique` (`slug`);

--
-- Index pour la table `wink_posts`
--
ALTER TABLE `wink_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_posts_slug_unique` (`slug`),
  ADD KEY `wink_posts_author_id_index` (`author_id`);

--
-- Index pour la table `wink_posts_tags`
--
ALTER TABLE `wink_posts_tags`
  ADD UNIQUE KEY `wink_posts_tags_post_id_tag_id_unique` (`post_id`,`tag_id`);

--
-- Index pour la table `wink_tags`
--
ALTER TABLE `wink_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wink_tags_slug_unique` (`slug`),
  ADD KEY `wink_tags_created_at_index` (`created_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `how_it_works`
--
ALTER TABLE `how_it_works`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `learns`
--
ALTER TABLE `learns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `order_translations`
--
ALTER TABLE `order_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `p_items`
--
ALTER TABLE `p_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `s_items`
--
ALTER TABLE `s_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_gallery_category_id_foreign` FOREIGN KEY (`gallery_category_id`) REFERENCES `gallery_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `p_item_price`
--
ALTER TABLE `p_item_price`
  ADD CONSTRAINT `p_item_price_p_item_id_foreign` FOREIGN KEY (`p_item_id`) REFERENCES `p_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `p_item_price_price_id_foreign` FOREIGN KEY (`price_id`) REFERENCES `prices` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `s_item_service`
--
ALTER TABLE `s_item_service`
  ADD CONSTRAINT `s_item_service_s_item_id_foreign` FOREIGN KEY (`s_item_id`) REFERENCES `s_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `s_item_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
