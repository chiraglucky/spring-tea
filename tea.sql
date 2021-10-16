-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: tea
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hibernate_sequence`
--

use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (17);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyword`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `keyword` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyword`
--

LOCK TABLES `keyword` WRITE;
/*!40000 ALTER TABLE `keyword` DISABLE KEYS */;
INSERT INTO `keyword` VALUES ('301','improving digestion'),('302','reducing inflammation'),('303','increasing energy'),('304','warding off colds'),('305','reducing stress'),('306','enchancing focus'),('307','high in antioxidants'),('308','soothes headache'),('309','good for your heart'),('310','good for your skin'),('311','good for your blood pressure'),('312','good for your teeth'),('313','good for your brain'),('314','good for your metabolism'),('315','good for your immune system'),('316','good for your bones'),('317','reducing chances of cancer');
/*!40000 ALTER TABLE `keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_order`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `my_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `my_order` (
  `id` bigint NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_u_id` bigint DEFAULT NULL,
  `rzr_signature` varchar(255) DEFAULT NULL,
  `rzrpayment_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK15r3dr5dh80dlf1l3lw3383bo` (`user_u_id`),
  CONSTRAINT `FK15r3dr5dh80dlf1l3lw3383bo` FOREIGN KEY (`user_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_order`
--

LOCK TABLES `my_order` WRITE;
/*!40000 ALTER TABLE `my_order` DISABLE KEYS */;
INSERT INTO `my_order` VALUES (3,'50000','order_I8pLnnJuYFt79Z','txn_232221','paid',1,'542e6f8bff9571fed768a35d8dde2bb8a9465d33beaea89d86a337c72f7ca902','pay_I8pLv8ol5iWC4J'),(4,'75000','order_I8pTN4JpCdbEvW','txn_232221','paid',1,'5d2cb5fa466c09acd619652bd9e01193828bedaed67417ee71a5e9cb038d8821','pay_I8pUbo0RJHM3U1'),(5,'25000','order_I8rZxYiDtzct79','txn_232221','created',1,NULL,NULL),(6,'25000','order_I8rbE1YwdcCQep','txn_232221','created',1,NULL,NULL),(7,'25000','order_I91eLfyhLidQCI','txn_232221','created',1,NULL,NULL);
/*!40000 ALTER TABLE `my_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origin`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `origin` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origin`
--

LOCK TABLES `origin` WRITE;
/*!40000 ALTER TABLE `origin` DISABLE KEYS */;
INSERT INTO `origin` VALUES ('201','assam'),('202','india'),('203','koslanda'),('204','srilanka'),('205','darjeeling'),('206','west bengal'),('207','himalayan'),('208','nepal'),('209','nilgiri'),('210','huangshun'),('211','anhui'),('212','china'),('213','yunnan'),('214','fujian'),('215','wuyi'),('216','ha giang'),('217','vietnam'),('218','tanzania'),('219','ireland'),('220','fujieda'),('221','Shizuoka'),('222','japan'),('223','zhejiang'),('224','jiangxi'),('225','fukuoka'),('226','Kagoshima'),('227','nantou'),('228','taiwan'),('229','nandi hills'),('230','kenya');
/*!40000 ALTER TABLE `origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `query` (
  `q_id` bigint NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `text` longtext,
  `user_u_id` bigint DEFAULT NULL,
  PRIMARY KEY (`q_id`),
  KEY `FK9bxlenembp2iejbj83q6jke5q` (`user_u_id`),
  CONSTRAINT `FK9bxlenembp2iejbj83q6jke5q` FOREIGN KEY (`user_u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` VALUES (11,'anurag123@gmail.com','Anurag Dale','I didn\'t get receipt for order black tea',1),(12,'anurag123@gmail.com','Anurag Dale','Thank you for this wonderful tea !!',1);
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `tea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tea` (
  `id` varchar(255) NOT NULL,
  `boiling_temperature` varchar(255) DEFAULT NULL,
  `brew_time` varchar(255) DEFAULT NULL,
  `collection` varchar(255) DEFAULT NULL,
  `description` longtext,
  `imageurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `more_info` varchar(255) DEFAULT NULL,
  `preparation` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea`
--

LOCK TABLES `tea` WRITE;
/*!40000 ALTER TABLE `tea` DISABLE KEYS */;
INSERT INTO `tea` VALUES ('101','212 degree','2-4 minutes','classic black','Assam is made from the camellia sinensis tea plant. This tea is produced from the varietal camellia sinensis var. assamica, which is indigenous to the Assam region of India. This region contains growing conditions uniquely suited to the tea plant, including fertile soil and adequate rainfall each year. While tea has been consumed on a small scale in India for hundreds of years, it wasn’t until British colonization that tea began to be produced on a large scale for export. Today, Assam is one of the largest exporters of tea in the world!','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR46umS7FMduo0Xjqql9bM9g8OhFXrwgpCCBg&usqp=CAU','assam black tea','https://wiki2.org/en/Assam_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes. For best taste, do not over steep. These leaves can also handle a second or even third infusion'),('102','212 degree','2-3 minutes','classic black',' Darjeeling is made from the leaves of the camellia sinensis plant. However, while most Indian teas are produced from a varietal known as camellia sinensis var. assamica, Darjeeling is produced from a Chinese varietal known as camellia sinensis var. sinensis. This specific varietal was brought from China to India by the British in the 19th century. Because of its particular varietal and unique location, Darjeeling tea has many different characteristics than traditional Indian black teas grown at lower altitudes from native plants.','https://cdn.s3waas.gov.in/s322fb0cee7e1f3bde58293de743871417/uploads/bfi_thumb/2020083172-ourrqkwa4hetmqheh37qj49p7ovjccnwxm6mk9yrpi.jpg','darjeeling black tea','https://wiki2.org/en/Darjeeling_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 3 minutes. For best taste, do not over steep.'),('103','212 degree','2-4 minutes','classic black','Ceylon is produced in Sri Lanka, an island off the coast of India. Tea plants smuggled from China were first introduced to Sri Lanka in the 1800s while under British rule. At the time, the region was called Ceylon, which lent its name to the tea produced there. While tea production in Sri Lanka started off with only a few tea plantations, tea continued to gain popularity as an export throughout the 19th century and beyond. Today, Sri Lanka is one of the largest producers of tea in the world. In addition to Ceylon black tea, Sri Lanka also produces other specialty teas, including green and white tea.','https://cdn.shopify.com/s/files/1/0508/1943/2625/products/english-breakfast-ceylon-black-tea-1_1200x1200.jpg?v=1626199494','ceylon black tea','https://www.pureceylontea.com/','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes. For best taste, do not over steep. These leaves can also handle a second or even third infusion.'),('104','220 degree','3-4 minutes','classic black','While black teas have traditionally been grown and cultivated in countries like India and China, the relatively small nation of Nepal is making a name for itself as a producer of premium teas. Beginning in the mid-19th century, the British Empire expanded to India and the British East India Company began full-scale commercial tea production in that part of the world. Despite tea cultivation arriving in Nepal at about the same time as in Darjeeling to the east, commercial tea production in this small Asian country did not take off until later in the 20th century. Nepali tea is currently grown in five primary regions in Nepal, with new areas being added to meet the demand for this much sought after export.','https://cdn11.bigcommerce.com/s-x59xxqq/images/stencil/1280x1280/products/122/307/Kathmandu-Gold-Tea__60152.1500610918.jpg?c=2','nepalese gold black tea','https://en.wikipedia.org/wiki/Nepali_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 - 4 minutes. For best taste, do not over steep. These leaves can also handle a second infusion'),('105','212 degree','2-4 minutes','classic black','Nilgiri is a robust Indian black tea with a full body and nice natural sweetness. The Nilgiri region is located in the state of Tamil Nadu in southern India. While Nilgiri may not be as famous as other Indian tea-growing regions like Assam and Darjeeling, they are known for producing excellent specialty teas. The Nilgiri region features tall mountains, monsoon rains, and good soil, all of which make it an excellent region for growing tea.','https://cdn.shopify.com/s/files/1/0888/8900/files/Organic_Korakundah_BOP_1aa15ae1-ce8b-4301-afce-490c1b838eb7_large.jpg?v=1521122921','nilgiri black tea','https://tea.fandom.com/wiki/Nilgiri_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes. For best taste, do not over steep. These Nilgiri tea leaves can also handle a second or even third infusion.'),('106','220 degree','2-4 minutes','classic black','Unlike more robust Indian black teas, which are made from the camellia sinensis var. assamica varietal, Chinese black teas are made from the camellia sinensis var. sinensis varietal. These types of tea plants have been cultivated in China for hundreds of years. They tend to have smaller leaves than indigenous Indian tea plants, and brew up into a lighter, mellower tea with slightly less caffeine.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1627508638028-0BSY8OA5RA70WURTISMQ/B+-+China+Keemun+%28cup%29.jpg?format=750w','china keemun black tea','https://tea.fandom.com/wiki/Keemun','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes. For best taste, do not over steep. These leaves can also handle a second or even third infusion'),('107','215 degree','3-4 minutes','classic black','Yunnan black tea is a premium tea renowned in China and beyond for its high-end character and sweet, mellow taste. The tea is set apart by the large number of golden-tipped leaves and buds present in the loose tea, which are an indication of superior quality. Like other Chinese black teas, Yunnan black tea is made from large tea leaves from the camellia sinensis var. sinensis varietal of the tea plant, and is fully oxidized before being prepared and packaged for consumption. Yunnan black tea is also often known by the Chinese name dianhong, or as Yunnan red tea.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1601667267754-NDDMGF5UOW1AGANBD8NO/B+-+Golden+Yunnan+%28cup%29.JPG?format=750w','golden yunnan black tea','https://simplelooseleaf.com/blog/black-tea/yunnan-black-tea-guide/','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 - 4 minutes.'),('108','225 degree','3-4 minutes','classic black','Lapsang originated in the Wuyi Mountains of the Fujian province of China, where it is still produced today. Like all Chinese black teas, Lapsang Souchong is produced from the leaves of the camellia sinensis plant. The name “souchong” refers to the fourth and fifth leaves of the tea plant, which are farther removed from the prized flowery pekoe bud at the tip, and are considered somewhat inferior in quality. When smoked and preserved as Lapsang, Souchong, however, these leaves become prized for their unique smoky flavor, and are highly sought-after all over the world.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1490995344185-SK4YJZ4BFMUAOZNYO265/ArtfulTea_033017-029.jpg?format=750w','lapsang souchong black tea','https://tea.fandom.com/wiki/Lapsang_souchong','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 - 4 minutes. For best taste, do not over steep.'),('109','212 degree','3-4 minutes','classic black','Vietnamese tea is grown primarily in the northern, more mountainous regions of the country, amidst the tail end of the Himalayan mountain range that is also home to famous tea growing regions like Assam and Darjeeling. Some tea plants in Vietnam are even purported to be “wild” and naturally grown rather than farmed. Although probably the result of earlier cultivation, these historic tea plants have in some cases been around for over a century! While tea has been drunk locally for hundreds of years, it’s still a relatively new commercial product in Vietnam. Despite this, however, the country is quickly making a name for itself in terms of its specialty teas, and tea production is on the rise.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1560882161440-F0T22MTEEG066XT1JKIX/Vietnamese+Golden+Tips+Organic+Black.jpg?format=750w','vietnamese golden tips black tea','https://www.encoreteas.com/product-page/vietnam-golden-tip','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 - 4 minutes.'),('110','212 degree','3-4 minutes','classic black','While tea originated in China and is now grown primarily in China, India, and African countries like Kenya and Tanzania, tea culture also has a rich history in the British Isles. While the origins of breakfast blends are not entirely clear, some tea historians attribute the start of what we now called \"breakfast tea\" to Queen Anne, who made it fashionable to drink tea instead of ale alongside a hearty breakfast.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1627508345917-5UHL0AAHKKZPQPL0V2N9/B+-+English+Breakfast+%28leaf%29.jpg?format=750w','english breakfast black tea','https://wiki2.org/en/English_breakfast_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 – 4 minutes. For best taste, do not over steep. These leaves can also handle a second or even third infusion.'),('111','212 degree','3-4 minutes','classic black','While Irish Breakfast and English Breakfast are similar tea blends, they have a few general differences. Irish Breakfast tends to be more robust, more finely ground, and contains a higher proportion of Indian black teas. English Breakfast, while still a hearty blend, is often slightly mellower than Irish Breakfast, with fuller leaves and, in some cases, the addition of Chinese black teas to the blend.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1491682501244-BQU3Q4Z3B0FR6PHHD4XP/Irish+Breakfast+Detail.jpg?format=750w','irish breakfast black tea','https://en.wikipedia.org/wiki/Irish_breakfast_tea','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 - 4 minutes. These leaves can also handle a second or even third infusion.'),('112','210 degree','2-3 minutes','classic black','Wakoucha is a specialty black tea produced in Japan. While Japan is best known for its green teas, such as Sencha and Gyokuro, the country also produces a handful of specialty black teas each year. In contrast to typical black teas produced in China and India, Wakoucha produces a lighter, milder cup of tea, with a reddish hue and a pleasant natural sweetness. Because of the unique cultivar and characteristics of this tea, we recommend steeping it at a lower temperature and for less time than other types of black tea. Wakoucha blends many of the typical characteristics of black teas, such as a full body and a malty, natural sweetness, with some of the typical characteristics of Japanese green teas, such as mellow flavor and moderate caffeine.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1573942552079-A2XAHKUX9QMZ9HNGFW7L/Wakoucha.jpg?format=750w','japanese wakoucha black tea','https://gjtea.org/the-history-of-japanese-black-tea-wakoucha/','Use 1 heaping teaspoon per 6 oz. water.  Heat water until steaming briskly, not boiling (approx. 180°). Steep for 2 minutes.'),('113','212 degree','2-4 minutes','classic black','First flush Darjeeling teas are often lighter than their second flush counterparts, featuring less oxidized leaves with green and silver highlights. They brew up a golden color and have a crisp, clean flavor profile with an astringent bite. First flush Darjeelings are typically harvested from March to May, depending on the weather conditions of the region in which they’re grown. Because of their specific character and relatively short season, first flush teas are often some of the freshest teas available, with leaves having been plucked from the tea plant only a few months prior to being brewed up into pots of tea all around the world!','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1561669971630-ADQ7ITG56YYIEGIOZXR1/Monteviot+First+Flush+Darjeeling.jpg?format=750w','monteviot first flush darjeeling tea','https://www.darjeeling-tourism.com/darj_0000bb.htm','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes.'),('114','220 degree','2-4 minutes','classic black','Liza Hill First Flush Darjeeling has a grade of FGFTOP1 and has a medium body and full flavor with notes of orchids and champagne','https://d2j6dbq0eux0bg.cloudfront.net/images/910046/2357597892.jpg','liza hill first flush darjeeling black tea','https://www.darjeeling-tourism.com/darj_0000bb.htm','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 2 - 4 minutes.'),('115','175 degree','1-2 minutes','classic green','Chun Mee is a light, mild Chinese green tea with a characteristic buttery, plum-like flavor. It has a slightly astringent taste and a clean finish. Like all green teas, Chun Mee is made from the leaves of the camellia sinensis plant, and is pan-fired soon after harvesting in order to halt oxidation and preserve its bright green color. In Chinese, Chun Mee means \"precious eyebrow,\" poetically referring to the distinctive long, curved leaves of this delicate tea.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1599855470918-80ULUBO3VUZJ5OZ5KRRX/Chun+Mee+%28leaf+-+in+dish%29.jpg?format=750w','chun mee green tea','https://tea.fandom.com/wiki/Chun_Mee_tea','Use 1 level teaspoon per 12 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 - 2 minutes. For best taste, do not over steep.'),('116','180 degree','1-2 minutes','classic green','Otherwise known as Long Jing, Longjing, or Lung Ching green tea, Dragon Well is a mellow, satisfying green tea with an earthy aroma and nutty and fruity notes. Similar to other specialty ingredients, like champagne or parmesan, only teas grown in Zhejiang Province can be labelled as true Dragon Well teas. Like most other Chinese green teas, the leaves are pan-fired soon after harvest in order to halt the oxidation process.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1601742557053-BMLZCLLRCLGU207CS8WO/7D8F6C76-8C88-4FA5-B566-8E2701AFDC89?format=750w','dragon well superior green tea','https://www.letsdrinktea.com/types-of-tea/green-tea/dragon-well-tea/','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 to 2 minutes. For best taste, do not over steep. This high quality green tea can be infused twice and it will still maintain a wonderful flavor.'),('117','175 degree','1-2 minutes','classic green','“Gunpowder” refers to the shape of the leaves of this unique tea, which are rolled into small, tight balls. Gunpowder tea originated in China during the Tang dynasty, and is now popular all over the world. Today, Gunpowder green tea is still produced primarily in China. This tea has a bolder, more robust flavor than many other green teas, with a nutty, vegetal taste and a hint of smokiness. The leaves expand as they steep, and this tea can be infused multiple times.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1627596094066-1WDF5BEDA6OG99BJK0KA/GC+-+Gunpowder+%28leaf%29.jpg?format=750w','gunpowder green tea','https://tea.fandom.com/wiki/Gunpowder_tea','Use 1 level teaspoon per 12 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 - 2 minutes. For best taste, do not over steep.'),('118','175 degree','1-2 minutes','classic green','Jasmine tea is closely associated with the city of Fuzhou in China. The jasmine flower is considered one of the holy flowers in Buddhism, and has religious and cultural significance throughout Asia. To produce jasmine green tea, tea harvested and processed in the spring and early summer is stored until the jasmine flowers are in bloom, usually around mid to late summer. These tea leaves scented by laying a tray of jasmine blossoms underneath a tray of tea leaves overnight, when the jasmine blossoms are at their most fragrant.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1605288956364-77AXNQ0PLVBTV0Z985RU/G+-+Jasmine+Yin+CLoud+%28leaf+V3%29.jpg?format=750w','jasmine yin cloud green tea','https://tea.fandom.com/wiki/Varieties_of_Chinese_green_tea','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 to 2 minutes. For best taste, do not over steep. This high quality Jasmine tea can be infused two or even three times and still maintain its wonderful flavor.'),('119','170 degree','1-2 minutes','classic green','Bancha is a Japanese green tea harvested in late summer. Similar in character to Sencha, Bancha is harvested later in the year, when the leaves are larger and thicker. This second-flush tea brews up into a green-gold liquor and has grassy, nutty, and earthy notes. Bancha is low in caffeine.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1632738939539-LO7FKFXY2X5P9P1EO7O3/Bancha-Leaves.jpg?format=750w','bancha green tea','https://en.wikipedia.org/wiki/Bancha','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 to 2 minutes. For best taste, do not over steep.'),('120','172 degree','1-2 minutes','classic green','Genmaicha means “brown rice tea” in Japanese. It is said that the blend was created as a way for tea-drinkers in Japan to stretch their tea supply by blending it with the more plentiful rice kernels. Genmaicha has a light, green-gold color and a sweet, slightly grain-like flavor. If you’ve ever had rice krispies cereal, you’ll be able to recognize something of the flavor and aroma of puffed rice in this tea. When blended with Sencha and Bancha, the toasted rice makes for a uniquely warming, satisfying tea that’s great on a cool afternoon.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1445139629540-XVELEUF9HFB09SNUEFEQ/genmaicha.jpeg?format=750w','genmaicha green tea','https://tea.fandom.com/wiki/Genmaicha','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 - 2 minutes. For best taste, do not over steep.'),('121','175 degree','1-2 minutes','classic green','Genmaicha Matcha is actually a blend of two different Japanese green teas: Genmaicha and Matcha powder. Genmaicha is made from a blend of Sencha, Bancha, and toasted rice kernels, and has a warm, grain-like, and slightly sweet flavor. Matcha, which is made from shade-grown, stone-ground green tea leaves, has a richer, more vegetal character, with notes of umami and a subtle sweetness. Together, they form an irresistible blend that’s popular with green tea lovers both in Japan and abroad.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1623959544062-QPKCOGVTWV2XPPET6W5W/GC+-+Genmaicha+Matcha+%28leaf+3%29.jpg?format=750w','genmaicha matcha green tea','https://en.wikipedia.org/wiki/Genmaicha','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 minutes. For best taste, do not over steep.'),('122','170 degree','3-4 minutes','classic green','One of the most prized teas in Japan, Gyokuro is a shade-grown green tea with a unique umami-packed flavor. This tea undergoes a special shading process that makes the tea much richer and stronger than a typical green tea. Gyokuro is very similar to Kabusecha - the main difference is that Gyokuro is typically shaded for three weeks, while Kabusecha is shaded for only two weeks.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1572021892729-4TZ4EUQ97NPW3671EYCZ/Gyokuro+Green+Tea+%28leaf%29.jpg?format=750w','gyokuro green tea','https://tea.fandom.com/wiki/Gyokuro','Use 1 tablespoon (5 grams) of tea per 6 oz. water. Heat water until lightly steaming, not boiling (approximately 140 degrees). Steep for 3 to 4 minutes. This high-quality green tea can be infused twice and it will still maintain a wonderful flavor.'),('123','175 degree ','3-4 minutes','classic green','Unlike other types of Japanese tea, Hojicha is lightly roasted. This turns the tea leaves a light brown color, somewhat similar in appearance to a black tea. Hojicha is low in caffeine, with a medium body and a warm, nutty flavor with a hint of natural sweetness. Because of its low caffeine content and mild taste, in Japan Hojicha is especially popular among children and the elderly.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1464906983302-MPO4SW3PBVMDXOVEEXCM/kukicha_twig_organic_green_tea.jpeg?format=750w','hojicha roasted green tea','https://tea.fandom.com/wiki/Hojicha','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 minutes. For best taste, do not over steep. This high quality green tea can be infused twice and it will still maintain a wonderful fla'),('124','175 degree','1-3 minutes','classic green','Kabusecha is a shade-grown green tea produced in Japan. It’s similar to both Gyokuro and Sencha in taste and appearance, with dark, blue-green leaves that brew up a pale emerald color. While Gyokuro is shaded for three weeks (and Sencha isn’t shaded at all), the plants used to produce Kabusecha are shaded for approximately two weeks prior to harvest. This shading process instigates a stress response in the tea plants, which then produce more chlorophyll, resulting in dark green tea leaves that are especially high in both caffeine and l-theanine.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1572023567974-HGMA040UHKR8E2CM4IJY/Kabusecha+Green+Tea+%28leaf%29.jpg?format=750w','kabusecha green tea','https://www.japanese-wiki-corpus.org/culture/Sencha%20(green%20tea).html','Use 1 tablespoon (5 grams) of tea per 6 oz. water. Heat water until lightly steaming, not boiling (approximately 140 degrees). Steep for 3 to 4 minutes. This high quality green tea can be infused twice and it will still maintain a wonderful flavor.'),('125','175 degree','1-3 minutes','classic green','Kukicha is a Japanese green tea made from the stems and leaves of the tea plant. It has a pleasantly sweet, vegetal taste. Low in caffeine and high in antioxidants, Kukicha is also sometimes known as twig tea, thanks to the presence of small twigs and stems in the tea. It has a light body and a soft, almost buttery finish.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1628718596818-TFVMQ9NR905UHQ14UVIU/GC+-+Kukicha+%28leaf%29+%281213%29.jpg?format=750w','kukicha green tea','https://tea.fandom.com/wiki/Kukicha_tea','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 minutes.'),('126','175 degree','3-4 minutes','classic green','One of the most popular green teas in Japan, Sencha is a green tea with a rich, grassy taste that has earned it a following all over the world. Like other Japanese teas, Sencha tea leaves are steamed in order to halt the oxidation process immediately after harvest. This gives them their complex, vegetal taste and emerald green color.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1632739957880-KZ0OLO7BGP9M4RMEEX2K/unnamed-4.jpg?format=750w','sencha green tea','https://tea.fandom.com/wiki/Sencha_tea','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 1 to 2 minutes. For best taste, do not over steep. This high quality green tea can be infused twice and it will still maintain a wonderful flavor.'),('127','175 degree','1-2 minutes','classic green','Hachiju Hachiya means “eighty-eight nights.” It refers to the eighty-eighth day after the first day of spring in the traditional Japanese calendar, which is said to best the best time to harvest tea. Shincha, which means “new tea,” is produced from the first harvest of Sencha tea plants in the spring and is only available in very limited quantities.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1623793795359-3WO4AE2MSK70FAMZTXJQ/Shincha+2021.jpeg?format=750w','hachiju hachiya shincha green tea','https://www.sugimotousa.com/blog/what-is-shincha','Use 1 tablespoon (5 grams) of tea per 12 oz. water. Heat water until lightly steaming, not boiling (approximately 175 degrees). Steep for 30 to 60 seconds.'),('128','195 degree','2-3 minutes','oolang','Amber Autumn Oolong is an example of a superior quality oolong tea produced in Nepal. This tea is more heavily oxidized than most oolong teas, which turns the tea leaves a darker color, and gives the brewed tea a fuller body. Amber Autumn Oolong is a delicious, aromatic tea with notes of malt, caramel, and stone fruit.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1540681450241-WQ8WJJ3TDID5U6GE6DLY/O+-+Amber+Autumn+Oolong.jpg?format=750w','amber autumn oolong tea\n','https://ratetea.com/style/amber-oolong/15/','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea will easily handle multiple infusions.'),('129','195 degree','2-3 minutes','oolang','Fine Ti Kuan Yin is also sometimes referred to as Tieguanyin or Iron Goddess of Mercy tea. It gets its name from Guanyin, a Buddhist bodhisattva associated with compassion. This oolong tea is from eastern China and is notable for its floral, orchid-like notes. Fragrant and full of flavor, Fine Ti Kuan Yin tea is said to be China’s most famous and beloved oolong. This tea is cultivated at high altitudes in the cool mountain air of China’s Fujian province.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1613595745876-T1KNDPH6XPW5W7DWQWW0/O+-+Fine+Ti+Kuan+Yin+%28leaf%29.jpg?format=750w','fine ti kuan yin oolong tea','https://gracetea.com/china-oolong-fine-ti-kuan-yin.html','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea may be infused more than once.'),('130','195 degree','2-3 minutes','oolang','Like other types of tea, including black tea, green tea, and white tea, oolong tea is made from the leaves of the camellia sinensis tea plant, which is native to southwest China and northeast India. Oolong teas are partially oxidized, and fall somewhere in between black and green teas in terms of their oxidation level. Ginseng Oolong tea leaves are rolled by hand into tight balls, coated with ginseng, and blended with licorice root for a subtle, slightly spiced tea with woody and floral notes.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1526594976120-6YZ3WQSJJQS13LZMZFS6/Tea+and+Tulip.jpg?format=750w','ginseng oolong tea','https://www.yellow-mountain-organic-tea.com/products/copy-of-da-hong-pao-oolong-tea','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 - 4 minutes. This tea may be infused several times.'),('131','195 degree','2-3 minutes','oolang','Jade Song gets its name from the beautiful deep green color of the tea leaves. These leaves unfurl as them steep, changing shape from tightly rolled balls to full loose leaves. Jade Song is an excellent example of a Taiwanese Oolong, with a light body and a mellow flavor with floral and vegetal notes. If you’re new to oolong teas, Jade Song is a good introduction to the type; and if you’re already an oolong aficionado, Jade Song is a great addition to your collection.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1623958678526-UY8HULUY8XEN0C57S7FU/O+-+Jade+Song+%28leaf+1%29.jpg?format=750w','jade song oolong tea','https://tea.fandom.com/wiki/Oolong','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea will easily handle multiple infusions.'),('132','195 degree','2-3 minutes','oolang','While oolong teas have been produced for hundreds of years, Milk Oolong is a relative newcomer to the world of tea. Milk Oolong originated in Taiwan, and became increasingly popular throughout the 1980s and 90s. Milk Oolong is also sometimes referred to as Golden Lily tea. While there are myths and stories of Milk Oolong tea leaves actually being steeped or rinsed in milk in order to achieve their unique taste, Milk Oolong doesn’t contain milk (or any other dairy product.) The unique terroir, high elevation, and specific varietal grown to produce Milk Oolong are the only things that contribute to the flavor of this unique, highly sought-after tea. While our Milk Oolong is grown and harvested in the Fujian Province of China, it continues a rich tradition of milk oolong-style teas throughout Asia and beyond.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1611257971717-AS452MTR6WHOCBBP01NO/O+-+Milk+Oolong+%28leaf%29.jpg?format=750w','milk oolang tea','https://grosche.ca/what-is-milk-oolong-tea/?doing_wp_cron=1633788318.4544479846954345703125','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea will easily handle multiple infusions.'),('133','175 degree','2-3 minutes','white','From the Chongqing Province of China, this very rare tea is the top grade of white tea available. It has a delicate, clean taste faintly reminiscent of fresh apples, with a refreshing lingering flavor. Very low in caffeine and extremely high in antioxidants.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1501293867101-GS5Q7LTAU6P68QGUAWH6/W+-+Bashan+Silver+Tip+%28detail%29.jpg?format=750w','bashan silver tip white tea','https://en.wikipedia.org/wiki/Baihao_Yinzhen','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea may be infused twice or more.'),('134','175 degree','2-3 minutes','white','Himalayan Spring is a premium organic white tea grown in the mountains of Nepal. With notes of grass and stone fruit, and a smooth and buttery finish, Himalayan Spring is quickly becoming a new favorite among white tea connoisseurs and novices alike. This tea is made from the first silver-tipped leaf and bud of the tea plant. Harvested in early spring, as the name suggests, these tea leaves are carefully dried and preserved with minimal processing in order to highlight their delicate flavor.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1628806364324-4HR611VQ13MPL5GJ4YHY/W+-+Himalayan+Spring+%28leaf%29+%281300%29.jpg?format=750w','himalayan spring white tea','https://www.teatulia.com/tea-varieties/what-is-white-tea.htm','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 – 4 minutes. May be infused more than once.'),('135','175 degree','2-3 minutes','white','Consisting of both buds and leaves that are simply air dried after picking, this subtle white tea (also known as Pai Mu Dan) has a floral aroma and smooth velvety taste. Organic, very high in antioxidants, and very low in caffeine. A superior quality tea from the Fujian Province of China.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1612220151034-R5RX199OFT7INHYOC4YW/W+-+White+Peony+%28Gaiwan+V1+-+%2721%29.jpg?format=750w','white peony white tea','https://www.teaguardian.com/quality-varieties/tea-varieties/white-peony-white-tea/','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. For best taste, do not over steep.'),('136','175 degree','2-3 minutes','white','Jasmine Silver Needle White Tea is a tea of exceptional quality that is highly sought after by tea connoisseurs. It’s produced from silver tip white tea, which is composed of the first downy buds and tips of the tea plant harvested early in the spring. The tea is then lightly scented with jasmine blossoms, giving it a delicate floral flavor. The highest quality jasmine teas are scented by laying a tray of jasmine blossoms underneath a tray of tea leaves overnight, when the jasmine blossoms are at their most fragrant. The blossoms will often be replaced several times over the course of the scenting process. After the tea has been scented, it is dried and packaged','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1616175910747-7Y9GEE4NKP832DJ40MVW/W+-+Jasmine+Silver+Needle+%28cup+2%29.jpg?format=750w','jasmine silver needle white tea','https://www.letsdrinktea.com/types-of-tea/white-tea/jasmine-silver-needle-tea/','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. This tea may be infused twice or more'),('137','175 degree','2-3 minutes','white','Delicate white peony tea (Pai Mu Dan) blends into a delicious and beautiful tea with the addition of organic mango cubes, apples and pear. Exceptional hot or iced. Very low in caffeine. Extremely high in antioxidants!','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1619200786654-TFA0LKMAU50J0LRLZZDA/W+-+Mango+Pear+%28cup%29.jpg?format=750w','mango pear white tea','https://www.greatwalltea.com/products/mango-pear-white-organic','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 2 - 3 minutes. For best taste, do not over steep.'),('138','170 degree','3-4 minutes','purple leaf','Just like other varieties of tea, purple tea is produced from the leaves of the camellia sinensis plant. Most teas are produced from one of two varietals of the camellia sinensis plant, either camellia sinensis sinensis or camellia sinensis assamica. Black, green, white, oolong, pu-erh, and purple teas all come from the same plant, and vary primarily due to their specific varietal, when and where they are harvested, and how they are processed. While most tea plants produce dark green leaves, purple tea is made from a rare, newly discovered purple-leafed varietal of the tea plant. These plants were found growing wild in the Assam region of India, an area where many other types of tea are commercially grown. Assam is also near the purported birthplace of tea, in the Yunnan province of China.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1623966239256-2M0JBE5VD993H7PEQNWP/P+-+Kenyan+Purple+Leaf+%28cup+2%29.jpg?format=750w','kenyan purple leaf tea','https://simplelooseleaf.com/blog/loose-leaf-tea/kenyan-purple-tea/','Use 1 heaping teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 minutes. This tea may be infused twice or more.'),('139','170 degree','3-4 minutes','purple leaf','Purple tea is an entirely new category of tea! Just like black or green tea, it is from the Camellia Sinensis plant, but the leaves of these tea bushes are purple instead of green. It was first discovered growing wild in the Assam region of India, and is now grown commercially in Kenya, Africa. Ours is from the Tumoi Tea Garden in the Nandi Hills of Kenya. ','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1616173942427-EZVZT2W0XMW8NYXJDZ1J/P+-+Lychee+Purple+%28leaf+1%29.jpg?format=750w','lychee purple leaf tea','https://www.theteaspoutusa.com/product-page/purple-lychee','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming (not boiling). Steep for 3 minutes. This tea may be infused twice or more.'),('140','170 degree','3-4 minutes','purple leaf','Miss Violet starts with a purple tea base, which is then blended by hand with butterfly pea flower, hibiscus, lemon peel, and lavender blossoms, for a mellow tea that brews into a vibrant violet color. This tea has a light body, with a subtle sweetness and floral and citrus notes. Low in caffeine and extremely high in antioxidants and anthocyanins!','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1601335861717-3GOS9EI8X6II5SIZB1QO/P+-+Miss+Violet+%28ingredients+2%29.JPG?format=750w','miss violet purple leaf tea','https://justea.com/blog/blog-2/benefits-of-purple-tea-4-other-justea-varieties','Use 1 level teaspoon per 6 oz. water. Heat water until briskly steaming but not boiling (approximately 185-190 degrees). Steep for 3 minutes.\n\n'),('141','170 degree','3-7 minutes','pu-erh','This richly flavored dark tea combines the sweet decadence of caramel with the earthy, mustiness of an aged pu-erh to create something akin to dessert in a teacup. Smooth with a naturally sweet finish, this tea is warming and thick – perfect for an afternoon pick-me-up. Excellent with a splash of milk. High in antioxidants.','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1613595077131-J7IJ9SB43U5T8A6QSTNF/P+-+Caramel+Puerh+%28leaf%29.jpg?format=750w','caramel pu-erh tea','https://brooklyntea.com/products/caramel-pu-erh','Use 1 level teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 to 7 minutes. These leaves can also handle a second infusion.'),('142','170 degree','3-4 minutes','pu-erh','Dandelion root, cinnamon, ginger, and lemon peel combine perfectly with pu-erh and oolong teas to create a purifying blend that also warms and restores you. While we aren’t jumping on the bandwagon with claims about what “detox” teas can do for you, we do think this balanced blend has a delicious, rich flavor, and it offers benefits from ingredients traditionally thought to aid digestion and support health. ','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1599413976686-TOX0TWSHEDXBYCIB2WQ6/Dandy+Cinnamon+%28leaf+-+2%29.jpg?format=750w','dandy cinnamon puerh tea','https://brooklyntea.com/products/caramel-pu-erh','Use 1 heaping teaspoon per 6 oz. water. Heat water to boiling. Steep for 3 to 4 minutes. These leaves can also handle a second infusion'),('143','170 degree','3-5 minutes','pu-erh','An earthy, rich flavor distinguishes this Chinese pu-erh tea from regular black teas. Sometimes sold in bricks or cakes, our organic Pu-erh tea is leaf style, making it convenient and easy to use without losing any of the robust flavor you expect from Pu-erh. ','https://images.squarespace-cdn.com/content/v1/55bfb182e4b0d40fc717da51/1464902564026-26SM2FL32T6UF0YQZ0UW/Leaf_Pu-erh+_organic.jpeg?format=750w','leaf pu-erh tea','https://teapedia.org/en/Pu-erh','Use 1 heaping teaspoon per 6 oz. water. Heat water to boiling. Steep for 5 minutes. These leaves can also handle a second infusion');
/*!40000 ALTER TABLE `tea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea_keyword`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `tea_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tea_keyword` (
  `tea_id` varchar(255) NOT NULL,
  `keyword_id` varchar(255) NOT NULL,
  PRIMARY KEY (`tea_id`,`keyword_id`),
  KEY `FK7aw0sw2jg2oh80oecisdb89pt` (`keyword_id`),
  CONSTRAINT `FK3lhxj541baqkuj853l8ln4oa8` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`id`),
  CONSTRAINT `FK7aw0sw2jg2oh80oecisdb89pt` FOREIGN KEY (`keyword_id`) REFERENCES `keyword` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea_keyword`
--

LOCK TABLES `tea_keyword` WRITE;
/*!40000 ALTER TABLE `tea_keyword` DISABLE KEYS */;
INSERT INTO `tea_keyword` VALUES ('101','301'),('102','301'),('103','301'),('104','301'),('105','301'),('106','301'),('107','301'),('108','301'),('109','301'),('115','301'),('116','301'),('117','301'),('118','301'),('119','301'),('120','301'),('121','301'),('122','301'),('123','301'),('124','301'),('125','301'),('138','301'),('139','301'),('140','301'),('141','301'),('142','301'),('143','301'),('101','302'),('102','302'),('103','302'),('104','302'),('105','302'),('106','302'),('107','302'),('108','302'),('109','302'),('110','302'),('111','302'),('112','302'),('113','302'),('114','302'),('115','302'),('116','302'),('117','302'),('118','302'),('119','302'),('120','302'),('121','302'),('122','302'),('123','302'),('124','302'),('125','302'),('101','303'),('102','303'),('103','303'),('105','303'),('106','303'),('107','303'),('108','303'),('109','303'),('110','303'),('111','303'),('112','303'),('113','303'),('114','303'),('123','303'),('124','303'),('125','303'),('126','303'),('101','304'),('102','304'),('103','304'),('104','304'),('105','304'),('106','304'),('107','304'),('108','304'),('109','304'),('110','304'),('111','304'),('113','304'),('114','304'),('123','304'),('124','304'),('125','304'),('126','304'),('101','305'),('103','305'),('106','305'),('107','305'),('112','305'),('101','306'),('102','306'),('103','306'),('105','306'),('106','306'),('107','306'),('108','306'),('110','306'),('111','306'),('112','306'),('113','306'),('114','306'),('123','306'),('124','306'),('125','306'),('126','306'),('127','306'),('101','307'),('102','307'),('103','307'),('104','307'),('105','307'),('106','307'),('107','307'),('108','307'),('110','307'),('111','307'),('112','307'),('113','307'),('114','307'),('123','307'),('124','307'),('125','307'),('126','307'),('127','307'),('128','307'),('129','307'),('130','307'),('102','308'),('105','308'),('106','308'),('108','308'),('109','308'),('110','308'),('111','308'),('113','308'),('114','308'),('123','308'),('124','308'),('125','308'),('126','308'),('127','308'),('128','308'),('129','308'),('130','308'),('131','308'),('132','308'),('102','309'),('104','309'),('105','309'),('108','309'),('109','309'),('110','309'),('111','309'),('112','309'),('128','309'),('129','309'),('130','309'),('131','309'),('132','309'),('133','309'),('134','309'),('135','309'),('136','309'),('137','309'),('104','310'),('106','310'),('108','310'),('109','310'),('113','310'),('114','310'),('109','311'),('110','311'),('111','311'),('112','311'),('104','312'),('108','312'),('109','312'),('110','312'),('111','312'),('112','312'),('113','312'),('114','312'),('115','313'),('116','313'),('117','313'),('118','313'),('119','313'),('120','313'),('121','313'),('122','313'),('123','313'),('124','313'),('125','313'),('126','313'),('127','313'),('128','313'),('129','313'),('130','313'),('131','313'),('132','313'),('133','313'),('134','313'),('135','313'),('136','313'),('137','313'),('115','314'),('116','314'),('117','314'),('118','314'),('119','314'),('120','314'),('121','314'),('122','314'),('123','314'),('124','314'),('125','314'),('126','314'),('127','314'),('128','314'),('129','314'),('130','314'),('131','314'),('132','314'),('133','314'),('134','314'),('135','314'),('136','314'),('137','314'),('115','315'),('116','315'),('117','315'),('118','315'),('119','315'),('120','315'),('121','315'),('122','315'),('123','315'),('124','315'),('125','315'),('126','315'),('127','315'),('128','315'),('129','315'),('130','315'),('131','315'),('132','315'),('133','315'),('134','315'),('135','315'),('136','315'),('137','315'),('138','315'),('139','315'),('140','315'),('141','315'),('142','315'),('143','315'),('128','316'),('129','316'),('130','316'),('131','316'),('132','316'),('133','316'),('134','316'),('135','316'),('136','316'),('137','316'),('138','316'),('139','316'),('140','316'),('141','316'),('142','316'),('143','316'),('138','317'),('139','317'),('140','317'),('141','317'),('142','317'),('143','317');
/*!40000 ALTER TABLE `tea_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea_origin`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `tea_origin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `tea_origin` (
  `tea_id` varchar(255) NOT NULL,
  `origin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`tea_id`,`origin_id`),
  KEY `FKrkq4xutnowjgklod75uy5nmbk` (`origin_id`),
  CONSTRAINT `FK7oeiud4ugoqa3g7ufcglgt4pi` FOREIGN KEY (`tea_id`) REFERENCES `tea` (`id`),
  CONSTRAINT `FKrkq4xutnowjgklod75uy5nmbk` FOREIGN KEY (`origin_id`) REFERENCES `origin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea_origin`
--

LOCK TABLES `tea_origin` WRITE;
/*!40000 ALTER TABLE `tea_origin` DISABLE KEYS */;
INSERT INTO `tea_origin` VALUES ('101','201'),('101','202'),('102','202'),('105','202'),('110','202'),('111','202'),('113','202'),('114','202'),('103','203'),('103','204'),('110','204'),('111','204'),('102','205'),('113','205'),('114','205'),('102','206'),('104','207'),('104','208'),('128','208'),('134','208'),('105','209'),('106','210'),('106','211'),('106','212'),('107','212'),('108','212'),('115','212'),('116','212'),('117','212'),('118','212'),('129','212'),('130','212'),('132','212'),('133','212'),('135','212'),('136','212'),('137','212'),('141','212'),('142','212'),('143','212'),('107','213'),('141','213'),('142','213'),('143','213'),('108','214'),('132','214'),('135','214'),('136','214'),('108','215'),('109','216'),('109','217'),('110','218'),('111','218'),('111','219'),('112','220'),('121','220'),('112','221'),('120','221'),('125','221'),('126','221'),('127','221'),('112','222'),('119','222'),('120','222'),('122','222'),('123','222'),('124','222'),('125','222'),('126','222'),('127','222'),('115','223'),('116','223'),('118','224'),('122','225'),('124','226'),('131','227'),('131','228'),('138','229'),('139','229'),('140','229'),('138','230'),('139','230'),('140','230');
/*!40000 ALTER TABLE `tea_origin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--
use heroku_e712d8b24f7ac89;

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` bigint NOT NULL AUTO_INCREMENT,
  `avatarurl` varchar(255) DEFAULT NULL,
  `full_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'https://robohash.org/b369656a493c84af21ffcd01fb3b6252?set=set4&bgset=&size=400x400','Anurag Dale','1234','9754876889','anurag123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-15 18:11:19
