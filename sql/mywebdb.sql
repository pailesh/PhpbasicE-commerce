-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 13 Décembre 2014 à 08:56
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `mywebdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE IF NOT EXISTS `abonne` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `LOGIN` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `E_MAIL` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `COUNTRY` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `POSTAL_CODE` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `PHONE` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `ADDRESS` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `NIVEAU` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `NV` varchar(20) COLLATE utf8_general_mysql500_ci NOT NULL,
  `DATE_INSC` datetime NOT NULL,
  `ROLE` tinyint(1) DEFAULT NULL,
  `AVATAR` varchar(255) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `abonne`
--

INSERT INTO `abonne` (`ID`, `FIRST_NAME`, `LAST_NAME`, `LOGIN`, `PASSWORD`, `E_MAIL`, `COUNTRY`, `POSTAL_CODE`, `PHONE`, `ADDRESS`, `NIVEAU`, `NV`, `DATE_INSC`, `ROLE`, `AVATAR`) VALUES
(11, 'Hlaoui', 'Marwen', 'admin', '202cb962ac59075b964b07152d234b70', 'marwenhlaoui@email.com', 'BrÃ©sil', '5121', '24772710', 'eue enasr - rajiche', 'lycÃ©', 'Bac', '2014-12-11 01:29:11', 1, 'default/img/profil/marwenpic.jpg'),
(13, 'Med', 'user', 'med', '202cb962ac59075b964b07152d234b70', 'med@email.com', 'Egypte', '', '', '', 'colÃ¨ge', '8Ã¨me annÃ©e', '2014-12-13 08:24:25', NULL, 'default/img/img_not_found.jpg'),
(14, 'test', 'user', 'test', '202cb962ac59075b964b07152d234b70', 'test@email.com', 'Arabie', '5001', '00250984754', 'MAKA', 'Primaire', '5Ã¨me annÃ©e', '2014-12-13 08:26:52', NULL, 'default/img/img_not_found.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8_general_mysql500_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_general_mysql500_ci NOT NULL,
  `prix` float NOT NULL,
  `quantite` int(11) NOT NULL,
  `description` text COLLATE utf8_general_mysql500_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci AUTO_INCREMENT=16 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `img`, `prix`, `quantite`, `description`) VALUES
(7, 'Pomme', 'default/img/produit/pomme.jpg', 2, 5421, 'Le mot pomme, issu du gallo-roman POMA, terme d''origine latine avec la dÃ©sinence -a (pluriel neutre collectif), prise pour un fÃ©minin singulier. Le latin a pomum (neutre singulier) Â« fruit d''un arbre, fruit Ã  pÃ©pins ou Ã  noyau Â» et dont le radical pom- se retrouve dans Pomone, la dÃ©esse des fruits. En latin classique, la pomme est appelÃ©e malum (qui a donnÃ© mela en italien ou mÄƒr en roumain). Le mot pomme a remplacÃ© malum car la pomme demeure le fruit, le pomum, par excellence. En revanche, le sens gÃ©nÃ©ral de Â« fruit Â» s''est perpÃ©tuÃ© longtemps, comme en tÃ©moignent les noms de pomme de terre, de pomme de jacque, de pomme d''Orange ou encore de pomme de pin ou pomme cannelle.<br />\r\n<br />\r\nDans certains pays d''Afrique francophone, le mot pomme dÃ©signe la pomme de terre, la pomme est quant Ã  elle dÃ©signÃ©e sous le terme de pomme-fruit ou pomme de France. L''allemand a empruntÃ© au franÃ§ais le terme de pommes-frites, rÃ©duit gÃ©nÃ©ralement Ã  pommes, avec [s] sonore.<br />\r\n<br />\r\nLe celtique ancien Ã©tait *ablu Â« pomme Â» et son dÃ©rivÃ© *abalnos / *abalna Â« pommier Â». Il a donnÃ© le gaulois abalo- Â« pomme Â» et aballo Â« pommier Â» (avallo dans le glossaire de Vienne, glosÃ© poma en latin), le vieil irlandais ubull Â« pomme Â» et aball Â« pommier Â», le vieux gallois afal, la cornique aval et le breton aval Â« pomme Â» (vieux-breton abal, aual, 1499), (e)ur wezenn-aval Â« pommier Â», littÃ©ralement Â« un arbre Ã  pommes Â». On trouve la mÃªme racine indo-europÃ©enne en germanique cf. vieux haut allemand apful, allemand Apfel, anglais apple.<br />\r\n<br />\r\nEnfin, la toponymie conserve de nombreuses traces de la culture des pommes Ã  Ã©poque ancienne : Avallon (Yonne, Aballo ive siÃ¨cle), Availles-Limouzine (Vienne, Avallia 1123), etc. remontent au gaulois aballo- Â« pommier Â». Le gallo-roman et l''ancien franÃ§ais ont donnÃ© le type *POMARETU, formÃ© sur POMAR- + suffixe collectif gallo-roman -ETU servant Ã  dÃ©signer Â« un ensemble d''arbre appartenant Ã  la mÃªme espÃ¨ce Â», d''oÃ¹ les Pommeray (oÃ¯l) / PomarÃ¨de (oc), etc.'),
(8, 'Poire', 'default/img/produit/poire.jpg', 3, 560, 'La poire est constituÃ©e du rÃ©ceptacle floral, le piridion, sur le plan botanique considÃ©rÃ© comme un faux-fruit, Ã  pÃ©pins issu du poirier commun.<br />\r\n<br />\r\nOn distingue habituellement deux types de poires selon leur usage, les poires de table, mangÃ©es crues, et les poires Ã  cuire ou Ã  fermenter.'),
(9, 'Fraise', 'default/img/produit/fraise.jpg', 5, 8530, 'La fraise se dÃ©veloppe sur un fraisier. Elle est formÃ©e par l''ensemble du rÃ©ceptacle charnu de la fleur. Elle a une couleur rouge ou jaune blanchÃ¢tre selon les variÃ©tÃ©s, et une forme ovoÃ¯de oblongue plus ou moins arrondie.<br />\r\n<br />\r\nAu sens botanique du terme, les Â« vrais Â» fruits sont en fait les akÃ¨nes, ces petits grains secs (communÃ©ment appelÃ©s Ã  tort pÃ©pins alors que ce dernier terme ne devrait dÃ©signer que leur minuscule graine centrale) disposÃ©s rÃ©guliÃ¨rement dans des alvÃ©oles plus ou moins profondes sur la fraise, de couleur verte Ã  brune, et renfermant chacun soit un ovule (non fÃ©condÃ©) soit une graine (qui porte alors un germe lorsque la fraise arrive Ã  maturitÃ©).<br />\r\n<br />\r\nLe corps charnu de la fraise Ã©tant formÃ© par le rÃ©ceptacle floral (induvie hypertrophiÃ© sous l''effet des auxines) est ce que l''on consomme avec ou sans les akÃ¨nes (lâ€™Ã©pÃ©pinage des fraises consiste Ã  Ã´ter ces fruits secs du reste de la chair pulpeuse pour la prÃ©paration de gelÃ©es). Ce sont les akÃ¨nes qui produisent une hormone permettant au faux-fruit de grossir2.<br />\r\n<br />\r\nLe poids de la fraise et des akÃ¨nes est liÃ© au cultivar considÃ©rÃ©, mais aussi au mode de pollinisation : la pollinisation croisÃ©e produit des fraises et des akÃ¨nes plus grosses que l''autofÃ©condation3.<br />\r\n<br />\r\nLes fraises pollinisÃ©es par les abeilles pÃ¨sent, en moyenne, plus que celles l''ayant Ã©tÃ© grÃ¢ce au vent ou que celles ayant Ã©tÃ© auto-pollinisÃ©es et sont, aussi, plus fermes4.<br />\r\n<br />\r\nAutres espÃ¨ces botaniquement diffÃ©rentes :<br />\r\n<br />\r\nFraise de Chine : Fruit de Myrica rubra souvent confondu avec ceux de l''arbousier<br />\r\nFraise d''Inde : Fruit de Duchesnea totalement sans intÃ©rÃªt alimentaire'),
(10, 'Raisin', 'default/img/produit/raisins.jpg', 2, 78450, 'Le raisin est le fruit de la Vigne (Vitis). Le raisin de la vigne cultivÃ©e Vitis vinifera est un des fruits les plus cultivÃ©s au monde, avec 68 millions de tonnes produites en 2010, derriÃ¨re les agrumes (124 millions), les bananes (102 millions) et les pommes (70 millions)1. Il se prÃ©sente sous la forme de grappes composÃ©es de nombreux grains, qui sont sur le plan botanique des baies, de petite taille et de couleur claire, pour le raisin blanc (verdÃ¢tre, jaunÃ¢tre, jaune dorÃ©) ou plus foncÃ©e, pour le raisin rouge (mauve, rose ou noir-violet).<br />\r\n<br />\r\nIl sert surtout Ã  la fabrication du vin Ã  partir de son jus fermentÃ© (on parle dans ce cas de raisin de cuve), mais il se consomme Ã©galement comme fruit, soit frais, le raisin de table, soit sec, le raisin sec qui est utilisÃ© surtout en pÃ¢tisserie ou en cuisine. On consomme Ã©galement du jus de raisin. Des baies, on extrait aussi l''huile de pÃ©pins de raisin.'),
(11, 'Citron', 'default/img/produit/citron.jpg', 4, 784510, 'Le citron est un agrume, fruit du citronnier qui a un PH acide de 2,5. Le citronnier (Citrus limon) est un arbuste de 5 Ã  10 m de haut, Ã  feuilles persistantes, de la famille des RutacÃ©es.<br />\r\n<br />\r\nCe fruit mÃ»r a une Ã©corce qui va du vert tendre au jaune Ã©clatant sous l''action du froid. La maturitÃ© est en fin d''automne et dÃ©but d''hiver dans lâ€™hÃ©misphÃ¨re nord. Sa chair est juteuse, acide et riche en vitamine C, ce qui lui vaut - avec sa conservation facile - d''avoir Ã©tÃ© diffusÃ© sur toute la planÃ¨te par les navigateurs qui l''utilisent pour prÃ©venir le scorbut. De l''Ã©corce on extrait une huile essentielle qui contient entre autres substances du limonÃ¨ne et du citral.'),
(12, 'Melon', 'default/img/produit/melon.jpg', 2, 500, 'Nom scientifique : Cucumis melo L. subsp. melo, famille des CucurbitacÃ©es, sous-famille des Cucurbitoideae, tribu des Melothrieae, sous-tribu des Cucumerinae.<br />\r\n<br />\r\nLe melon cultivÃ© appartient Ã  la sous-espÃ¨ce Cucumis melo L. subsp. melo dont le faux-fruit est trÃ¨s polymorphe. Le fruit sauvage d''origine ne dÃ©passait pas 30 Ã  50 g mais il a servi de base Ã  la dÃ©finition de trÃ¨s nombreuses variÃ©tÃ©s1. Celles-ci sont diversement rassemblÃ©es selon les auteurs en groupes, dont les plus importants sont :<br />\r\n<br />\r\nParmi les melons consommÃ©s comme fruits (rÃ©coltÃ©s Ã  maturitÃ©):<br />\r\nLe groupe cantalupensis, melon cantaloup ;<br />\r\nLe groupe reticulatus, melon brodÃ© ;<br />\r\nLe groupe inodorus, melon d''hiver ;<br />\r\nparmi les melons consommÃ©s comme lÃ©gumes (rÃ©coltÃ©s avant maturitÃ©) :<br />\r\nLe groupe flexuosus, melon serpent ;<br />\r\nLe groupe momordica, melon phut (Inde).<br />\r\nIl existe un melon sauvage appelÃ© localement Â« melon tsamma Â», prÃ©sent dans le dÃ©sert du Kalahari (voir aussi le Parc transfrontalier de Kgalagadi), qui avec les concombres sauvages est la seule source d''eau de la rÃ©gion pendant la pÃ©riode de sÃ©cheresse annuelle2.<br />\r\n<br />\r\nLe terme Â« melon Â» vient du latin melo, melonis. Ce terme provient d''une racine grecque signifiant Â« pomme Â», Â« fruit Â» (Â« pomme Â» se dit malum en latin).'),
(13, 'Grenade', 'default/img/produit/grenade.jpg', 2, 8650, 'Le fruit, en forme de pomme, passant avec le temps du vert au rouge orange, doit Ãªtre considÃ©rÃ© comme un cas limite de baie puisque la pulpe nâ€™est pas charnue, mais elle nâ€™est pas filandreuse non plus. Son diamÃ¨tre peut atteindre 10 centimÃ¨tres et elle est divisÃ©e par de nombreuses parois. Ainsi se forment des loges dans lesquelles se trouvent de nombreuses graines triangulaires mesurant jusquâ€™Ã  15 millimÃ¨tres qui sont entourÃ©es dâ€™une enveloppe (le sarcotest) translucide trÃ¨s juteuse de couleur rouge foncÃ© Ã  rose clair qui Ã©clate Ã  la moindre pression. En tout il y a Ã  peu prÃ¨s 400 graines dans chaque fruit6.<br />\r\n<br />\r\nLes fruits ne continuent pas Ã  mÃ»rir aprÃ¨s la cueillette, ils font partie des fruits non-climactÃ©riques.'),
(14, 'Ananas', 'default/img/produit/ananas.jpg', 6, 90, 'L''espÃ¨ce Ananas comosus appartient Ã  la famille des bromÃ©liacÃ©es, et au genre Ananas. C''est une espÃ¨ce terrestre de plante herbacÃ©e pouvant atteindre 1 m Ã  1,50 m en tous sens, avec de longues feuilles lancÃ©olÃ©es de 50 cm Ã  1,80 m, dentÃ©es en gÃ©nÃ©ral, et parfois lisses.<br />\r\n<br />\r\nLa floraison de l''ananas est caractÃ©ristique des BromÃ©liacÃ©es, prÃ©sentant au bout d''une tige, gÃ©nÃ©ralement unique, une couronne de feuilles courtes surmontant un ensemble de fleurs bleues Ã©phÃ©mÃ¨res (ne vivant qu''une journÃ©e), donnant de nombreux fruits coniques, qui grossissent individuellement jusqu''Ã  se rejoindre, formant Ã  maturitÃ© l''ananas que nous connaissons. Le fruit est allongÃ© et peut avoir plus d''une trentaine de centimÃ¨tres de longueur; son Ã©corce, composÃ©e de motifs hexagonaux en Ã©cailles, est de couleur variable selon la variÃ©tÃ©. Sa chair, trÃ¨s juteuse, est Ã©galement de couleur variable, gÃ©nÃ©ralement blanche ou jaune.<br />\r\n<br />\r\nAnanas comosus est une plante CAM, c''est la seule espÃ¨ce du genre Ananas Ã  Ãªtre autostÃ©rile. Les graines sont donc rares et il faut que deux variÃ©tÃ©s diffÃ©rentes cohabitent. Cette plante se reproduit donc principalement par rejets (bulbilles), qu''elle donne en grand nombre.<br />\r\n<br />\r\nLe poids du fruit est proportionnel au poids du pied au moment de la floraison : l''art du planteur consiste donc Ã  le faire Â« fleurir Â» au bon moment.'),
(15, 'Banane', 'default/img/produit/banana.jpg', 4, 9044, 'La banane est un long fruit lÃ©gÃ¨rement incurvÃ©, souvent regroupÃ© sur le bananier en grappes nommÃ©es Â« rÃ©gimes Â». La banane possÃ¨de une peau de couleur jaune ou verte facile Ã  dÃ©tacher. La partie intÃ©rieure est une pulpe amylacÃ©e au goÃ»t sucrÃ© et Ã  la consistance gÃ©nÃ©ralement fondante.<br />\r\n<br />\r\nLa banane sauvage est une baie polycarpique, c''est-Ã -dire contenant de nombreux pÃ©pins anguleux durs. Les variÃ©tÃ©s commerciales sont souvent triploÃ¯des stÃ©riles produisant ainsi des baies parthÃ©nocarpiques formÃ©es sans fÃ©condation ne contenant donc pas de graines (si on fend cette Â« banane domestique Â» dans le sens de la longueur, on observe une sÃ©rie longitudinale de petits points noirs qui sont des ovules non fÃ©condÃ©s).<br />\r\n<br />\r\nLa chair du fruit est gÃ©nÃ©ralement blanc crÃ¨me, mais certaines rares variÃ©tÃ©s ont une pulpe colorÃ©e (Isla du PÃ©rou Ã  chair bleue).<br />\r\n<br />\r\nLes bananes mÃ»res sont riches en potassium et en sucres. Elles sont trÃ¨s nourrissantes (90 kcal/100 g) et trÃ¨s digestes en raison de leur faible teneur en graisses.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` text NOT NULL,
  `singup_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;