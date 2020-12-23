-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: aoe2deapi
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `introduced_in` varchar(45) DEFAULT NULL,
  `age` tinyint(1) DEFAULT NULL,
  `population` tinyint(10) DEFAULT NULL,
  `use` varchar(200) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `construction_time` int(11) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `hit_points` int(10) DEFAULT NULL,
  `garrison` tinyint(10) DEFAULT NULL,
  `attack` varchar(45) DEFAULT NULL,
  `attack_bonuses` varchar(100) DEFAULT NULL,
  `rate_of_fire` varchar(45) DEFAULT NULL,
  `range` tinyint(10) DEFAULT NULL,
  `accuracy` varchar(45) DEFAULT NULL,
  `projectile_speed` tinyint(10) DEFAULT NULL,
  `line_of_sight` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,'Town Center','Used to create villagers, deposit resources (food, wood, stone, gold), advance to next age, and improve buildings, villagers. Units can garrison inside for protection.','The Age of Kings',3,5,'Create and improve Villagers, Advance Ages, Drop off resources','275W, 100S',150,'4x4',2400,15,'5 pierce','+5 vs Ship, +5 vs Building, +1 vs Camel','2.0',6,'100%',7,8),(2,'House','Each House supports 5 units (villagers, military units, ships, Trade Carts).','The Age of Kings',1,5,'Provides population','25W',25,'2x2',900,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(3,'Dock','Used to build and improve ships, deposit food from Fishing Ships, and trade with other players by sea.','The Age of Kings',1,NULL,'Builds and improves ships','150W',35,'3x3',1800,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(6,'Fish Trap','A renewable source of food. Similar to a Farm, but in water.','The Age of Kings',2,NULL,'Provides food','100W',40,'1x1',50,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(8,'Mill','Used to deposit food and research farming improvements.','The Age of Kings',1,NULL,'Drop off food, Upgrade and queue Farms','100W',35,'2x2',1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(9,'Farm','A renewable source of food. Provides a limited amount of food before it goes fallow and must be rebuilt.','The Age of Kings',1,NULL,'Provide food','60W',15,'3x3',480,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),(10,'Market','Used to buy and sell resources, trade with other players by land, and research trade improvements.','The Age of Kings',2,NULL,'Exchange and send resources, Trade with Trade Carts, Research trade improvements','175W',60,'4x4',2100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(11,'Lumber Camp','Used to deposit wood and research wood-gathering improvements.','The Age of Kings',1,NULL,'Drop off wood, Research logging technologies','100W',35,'2x2',1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(12,'Mining Camp','Used to deposit stone and gold and research stone-gathering and gold-gathering improvements.','The Age of Kings',1,NULL,'Drop off gold and stone, Research mining technologies','100W',35,'2x2',1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(13,'Barracks','Used to create and improve infantry. Required for Archery Range, Stable.','The Age of Kings',1,NULL,'Trains and improves infantry','175W',50,'3x3',2100,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(14,'Archery Range','Used to create and improve archers.','The Age of Kings',2,NULL,'Trains and improves archers','175W',50,'3x3',2100,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(15,'Stable','Used to create and improve cavalry.','The Age of Kings',2,NULL,'Trains and improves cavalry','175W',50,'3x3',2100,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(16,'Blacksmith','Used to improve infantry, archers, cavalry, towers, Town Centers, Castles, and Viking Longboats.','The Age of Kings',2,NULL,'Improves infantry, archers, cavalry','150W',40,'3x3',2100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(17,'Siege Workshop','Used to build siege weapons.','The Age of Kings',3,NULL,'Trains and upgrades siege units','200W',40,'4x4',2100,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(18,'Monastery','Used to create and improve Monks. Garrisoned relics generate gold.','The Age of Kings',3,NULL,'Train and improve Monks and Missionaries','175W',40,'3x3',2100,10,NULL,NULL,NULL,NULL,NULL,NULL,6),(19,'University','Used to improve buildings and missile units.','The Age of Kings',3,NULL,'Improve buildings and ranged units','200W',60,'4x4',2100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(20,'Castle','Used to create your unique unit, build Trebuchets, and improve villagers and buildings.','The Age of Kings',3,20,'Train unique units and siege weapons, Research technologies, Attack enemies','650S',200,'4x4',4800,20,'11 pierce','+2 vs Spearman','2.0',8,'100%',7,11),(21,'Palisade Wall','Wooden Wall that is cheap and easy to build. Slows down your enemies and warns you of their approach.','The Age of Kings',1,NULL,'Delay enemy units','2W',7,'1x1',250,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(22,'Palisade Gate','Can be built into existing Walls. You and your allies can manually open and close this Gate.','The Forgotten',1,NULL,'Shuts enemy units out, Lets friendly units through','30W',30,'4x1',400,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(24,'Stone Wall','Stronger than Palisade Wall but more expensive. Slows down your enemies so you have a chance to fend them off.','The Age of Kings',2,NULL,'Delay enemy units','5S',10,'1x1',1800,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(25,'Gate','Can be built into existing walls. You or your allies can manually open and close this Gate.','The Age of Kings',2,NULL,'Shuts enemy units out, Lets friendly units through','30S',70,'4x1',2750,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(26,'Fortified Wall','Stronger than Stone Wall. Difficult to breach without siege weapons.','The Age of Kings',3,NULL,'Delay enemy units','5S',10,'1x1',3000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),(27,'Outpost','A stationary watch point that provides advanced warning of nearby enemy activity.','The Age of Kings',1,NULL,'Provide Line of Sight','25W, 5S',15,'1x1',500,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(28,'Watch Tower','Basic stone tower. Automatically attacks enemy units and buildings within range.','The Age of Kings',2,NULL,'Attacks enemies at sight','50W, 125S',80,'1x1',1020,5,'5 pierce','+7 vs Ship, +7 vs Fishing Ship, +2 vs Spearman, +1 vs Camel','2.0',8,'100%',7,10),(29,'Guard Tower','Stronger than Watch Tower, with greater fighting ability.','The Age of Kings',3,NULL,'Provides LOS and attacks enemies within range','50W, 125S',80,'1x1',1500,5,'7 pierce','+9 vs Ship, +9 vs Fishing Ship, +2 vs Spearman, +1 vs Camel','2.0',8,'100%',7,10),(30,'Keep','Stronger than Guard Tower. Fires farther and is better armored.','The Age of Kings',4,NULL,'Attacks enemies at sight','50W, 125S',80,'1x1',2250,5,'8 pierce','+10 vs Ship, +10 vs Fishing Ship, +2 vs Spearman, +1 vs Camel','2.0',8,'100%',7,10),(31,'Bombard Tower','Powerful attack with extensive line of sight. Attack bonus vs. ships.','The Age of Kings',4,NULL,'Attacks enemies','100G, 125S',80,'1x1',2220,5,'120 pierce','+40 vs Ship, +40 vs Fishing Ship, +1 vs Camel','6',8,'92%',3,10),(32,'Wonder','Building a Wonder of the World demonstrates the superiority of your civilization. Constructing a Wonder that stands for a certain period of time is one way to win the game.','The Age of Kings',4,NULL,'Grants victory if defended for 200 years','1000W, 1000G, 1000S',3500,'5x5',4800,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8),(33,'Harbor','Used to build and improve ships, deposit food from Fishing Ships, and trade with other players by sea.','Rise of the Rajas',3,NULL,'Build and improve ships, Attack enemies','150W',35,'3x3',2000,10,'3 pierce','+10 vs Ship, +9 vs Fishing Ship','3.0',7,'100%',6,10),(36,'Feitoria','Economic building. Generates resources without the need of villagers. Requires 20 population.','The African Kingdoms',4,NULL,'Generates resources','250G, 250S',120,'5x5',5200,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6),(37,'Krepost','Fortification used to train your unique unit. Unique building of the Bulgarians.','The Last Khans',3,20,'Train Konniks, Attack enemies','350S',150,'3x3',2600,20,'9 pierce',NULL,NULL,7,NULL,NULL,NULL);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `civilizations`
--

DROP TABLE IF EXISTS `civilizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `civilizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `introduced_in` varchar(45) DEFAULT NULL,
  `architecture` varchar(45) DEFAULT NULL,
  `continent` varchar(45) DEFAULT NULL,
  `focus` varchar(45) DEFAULT NULL,
  `unique_units` varchar(45) DEFAULT NULL,
  `unique_technologies` varchar(45) DEFAULT NULL,
  `unique_buildings` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `civilizations`
--

LOCK TABLES `civilizations` WRITE;
/*!40000 ALTER TABLE `civilizations` DISABLE KEYS */;
INSERT INTO `civilizations` VALUES (1,'Britons','The Age of Kings','Western European','Europe','Archers','Longbowman','Yeomen, Warwolf',NULL),(2,'Byzantines','The Age of Kings','Mediterranean','Europe, Asia','Defense','Cataphract','Greek Fire, Logistica',NULL),(4,'Celts','The Age of Kings','Western European','Europe','Infantry, Siege weapons','Woad Raider','Stronghold, Furor Celtica',NULL),(5,'Chinese','The Age of Kings','East Asian','Asia','Archers','Chu Ko Nu','Great Wall, Rocketry',NULL),(6,'Franks','The Age of Kings','Western European','Europe','Cavalry','Throwing Axeman','Chivalry, Bearded Axe',NULL),(7,'Goths','The Age of Kings','Central European','Europe','Infantry','Huskarl','Anarchy, Perfusion',NULL),(8,'Japanese','The Age of Kings','East Asian','Asia','Infantry','Samurai','Yasama, Kataparuto',NULL),(9,'Mongols','The Age of Kings','East Asian','Asia','Cavalry archers','Mangudai','Nomads, Drill',NULL),(10,'Persians','The Age of Kings','Middle Eastern','Asia','Cavalry','War Elephant','Kamandaran, Mahouts',NULL),(11,'Saracens','The Age of Kings','Middle Eastern','Asia, Africa','Cavalry, Navy','Mameluke','Madrasah, Zealotry',NULL),(12,'Teutons','The Age of Kings','Central European','Europe','Infantry','Teutonic Knight','Ironclad, Crenellations',NULL),(13,'Turks','The Age of Kings','Middle Eastern','Asia, Europe','Gunpowder units','Janissary','Sipahi, Artillery',NULL),(14,'Vikings','The Age of Kings','Central European','Europe','Infantry, Navy','Berserk, Longboat','Chieftains, Berserkergang',NULL),(15,'Aztecs','The Conquerors','Native American','Central/North America','Infantry, Monks','Jaguar Warrior','Atlatl, Garland Wars',NULL),(16,'Huns','The Conquerors','Central European','Europe, Asia','Cavalry','Tarkan','Marauders, Atheism',NULL),(17,'Koreans','The Conquerors','East Asian','Asia','Towers, Navy','War Wagon, Turtle Ship','Eupseong, Shinkichon',NULL),(18,'Mayans','The Conquerors','Native American','Central America','Archers','Plumed Archer','Obsidian Arrows, El Dorado',NULL),(19,'Spanish','The Conquerors','Mediterranean','Europe','Gunpowder units, Monks','Conquistador, Missionary','Inquisition, Supremacy',NULL),(20,'Incas','The Forgotten','Native American','South America','Infantry','Kamayuk, Slinger','Andean Sling, Fabric Shields',NULL),(21,'Indians','The Forgotten','South Asian','Asia','Camel Riders, Gunpowder units','Elephant Archer, Imperial Camel Rider','Sultans, Shatagni',NULL),(22,'Italians','The Forgotten','Mediterranean','Europe','Archers, Navy','Genoese Crossbowman, Condottiero','Pavise, Silk Road',NULL),(23,'Magyars','The Forgotten','Eastern European','Europe','Cavalry','Magyar Huszar','Corvinian Army, Recurve Bow',NULL),(24,'Slavs','The Forgotten','Eastern European','Europe','Infantry, Siege weapons','Boyar','Orthodoxy, Druzhina',NULL),(25,'Berbers','The African Kingdoms','Middle Eastern','Africa','Cavalry, Navy','Camel Archer, Genitour','Kasbah, Maghrabi Camels',NULL),(26,'Ethiopians','The African Kingdoms','African','Africa','Archers, Siege weapons','Shotel Warrior','Royal Heirs, Torsion Engines',NULL),(27,'Malians','The African Kingdoms','African','Africa','Infantry','Gbeto','Tigui, Farimba',NULL),(28,'Portuguese','The African Kingdoms','Mediterranean','Europe','Navy, Gunpowder units','Organ Gun, Caravel','Carrack, Arquebus','Feitoria'),(29,'Burmese','Rise of the Rajas','Southeast Asian','Asia','Elephants, Monks','Arambai','Howdah, Manipur Cavalry',NULL),(30,'Khmer','Rise of the Rajas','Southeast Asian','Asia','Siege weapons, Elephants','Ballista Elephant','Tusk Swords, Double Crossbow',NULL),(31,'Malay','Rise of the Rajas','Southeast Asian','Asia','Infantry, Navy','Karambit Warrior','Thalassocracy, Forced Levy','Harbor'),(32,'Vietnamese','Rise of the Rajas','East Asian','Asia','Archers','Rattan Archer, Imperial Skirmisher','Chatras, Paper Money',NULL),(33,'Bulgarians','The Last Khans','Eastern European','Europe','Infantry, Cavalry','Konnik','Stirrups, Bagains','Krepost'),(34,'Cumans','The Last Khans','Central Asian','Asia, Europe','Cavalry','Kipchak','Steppe Husbandry, Cuman Mercenaries',NULL),(35,'Lithuanians','The Last Khans','Eastern European','Europe','Cavalry, Monks','Leitis','Hill Forts, Tower Shields',NULL),(36,'Tatars','The Last Khans','Central Asian','Asian','Cavalry Archer','Keshik, Flaming Camel','Silk Armor, Timurid Siegecraft',NULL),(37,'Burgundians','Lords of the West','Western European','Europe','Cavalry','Coustillier, Flemish Militia','Burgundian Vineyards, Flemish Revolution',NULL),(38,'Sicilians','Lords of the West','Mediteranean','Europe','Infantry','Serjeant','First Crusade, Scutage','Donjon');
/*!40000 ALTER TABLE `civilizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologies`
--

DROP TABLE IF EXISTS `technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technologies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `introduced_in` varchar(45) DEFAULT NULL,
  `civilization` varchar(45) DEFAULT NULL,
  `age` tinyint(1) DEFAULT NULL,
  `researched_at` varchar(45) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `research time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologies`
--

LOCK TABLES `technologies` WRITE;
/*!40000 ALTER TABLE `technologies` DISABLE KEYS */;
/*!40000 ALTER TABLE `technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `introduced_in` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `age` tinyint(1) DEFAULT NULL,
  `trained_at` varchar(45) DEFAULT NULL,
  `cost` varchar(45) DEFAULT NULL,
  `training_time` int(11) DEFAULT NULL,
  `hit_points` int(11) DEFAULT NULL,
  `attack` varchar(45) DEFAULT NULL,
  `attack_bonuses` varchar(200) DEFAULT NULL,
  `rate_of_fire` varchar(45) DEFAULT NULL,
  `melee_armor` int(11) DEFAULT NULL,
  `pierce_armor` int(11) DEFAULT NULL,
  `speed` varchar(10) DEFAULT NULL,
  `line_of_sight` varchar(45) DEFAULT NULL,
  `upgrades_to` varchar(45) DEFAULT NULL,
  `upgrade_cost` varchar(45) DEFAULT NULL,
  `upgrade_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (2,'Villager','Gathers wood, food, stone, gold. Builds and repairs buildings. Also repairs ships, siege weapons.','The Age of Kings','Civilian',1,'Town Center','50F',25,25,'3 melee','+6 vs Stone defense, +3 vs Building','2.0',0,0,'0.8','4',NULL,NULL,NULL),(3,'Militia','Basic infantry swordsman. Cheap and quick to create.','The Age of Kings','Infantry',1,'Barracks','60F, 20G',21,40,'4 melee',NULL,'2.0',0,1,'0.9','4','Man-at-Arms','100F, 40G',40),(4,'Man-at-Arms','Stronger than Militia. Cheap and quick to create.','The Age of Kings','Infantry',2,'Barracks','60F, 20G',21,45,'6 melee','+2 vs Eagle Warrior, +2 vs Standard building','2.0',0,1,'0.9','4','Long Swordsman','200F, 65G',45),(5,'Long Swordsman','Stronger than Man-at-Arms. Cheap and quick to create.','The Age of Kings','Infantry',3,'Barracks','60F, 20G',21,60,'9 melee','+6 vs Eagle Warrior, +3 vs Standard building','2.0',0,1,'0.9','4','Two-Handed Swordsman','300F, 100G',75),(9,'Two-Handed Swordsman','Stronger than Long Swordsman. Cheap and quick to create.','The Age of Kings','Infantry',4,'Barracks','60F, 20G',21,60,'12 melee','+8 vs Eagle Warrior, +4 vs Standard building','2.0',0,1,'0.9','5','Champion','750F, 350G',100),(10,'Champion','Stronger than Two-Handed Swordsman. Cheap and quick to create.','The Age of Kings','Infantry',4,'Barracks','60F, 20G',21,70,'13 melee','+8 vs Eagle Warrior, +4 vs Standard building','2.0',1,1,'0.9','5',NULL,NULL,NULL),(11,'Spearman','Medium infantry.','The Age of Kings','Infantry',2,'Barracks','35F, 25W',22,45,'3 melee','+15 vs Cavalry, +15 vs War elephant, +12 vs Camel, +9 vs Ship, +9 vs Fishing Ship, +4 vs Mameluke, +1 vs Eagle Warrior, +1 vs Standard building','3.0',0,0,'1','4','Pikeman','215F, 90G',45),(12,'Pikeman','Stronger than Spearman. Medium infantry.','The Age of Kings','Infantry',3,'Barracks','35F, 25W',22,55,'4 melee','+25 vs War elephant, +22 vs Cavalry, +18 vs Camel, +16 vs Ship, +16 vs Fishing Ship, +11 vs Mameluke, +1 vs Eagle Warrior, +1 vs Standard building','3.05',0,0,'1','4','Halberdier','300F, 600G',50),(13,'Halberdier','Stronger than Pikeman. Medium infantry.','The Conquerors','Infantry',4,'Barracks','35F, 25W',22,60,'6 melee','+32 vs Cavalry, +28 vs War elephant, +26 vs Camel, +17 vs Ship, +17 vs Fishing Ship, +11 vs Mameluke, +1 vs Eagle Warrior, +1 vs Standard building','3.05',0,0,'1','4',NULL,NULL,NULL),(14,'Eagle Scout','Fast infantry with extensive sight.','The Forgotten','Infantry',2,'Barracks','20F, 50G',35,50,'4','+8 vs Monk, +3 vs Siege weapon, +2 vs Cavalry, +1 vs Camel, +1 vs Ship','2.0',0,2,'1.1','5','Eagle Warrior','200F, 200G',50),(15,'Eagle Warrior','Stronger than Eagle Scout. Fast infantry with extensive sight.','The Conquerors','Infantry',3,'Barracks','20F, 50G',35,55,'7 melee','+8 vs Monk, +3 vs Cavalry, +3 vs Siege weapon, +2 vs Camel, +1 vs Ship, +1 vs Fishing Ship','2.0',0,3,'1.15','6','Elite Eagle Warrior','800F, 500G',50),(16,'Elite Eagle Warrior','Stronger than Eagle Warrior. Fast infantry with extensive sight.','The Conquerors','Infantry',4,'Barracks','20F, 50G',20,60,'9 melee','+10 vs Monk, +5 vs Siege weapon, +4 vs Cavalry, +3 vs Camel, +2 vs Ship, +2 vs Fishing Ship','2.0',0,4,'1.3','6',NULL,NULL,NULL),(17,'Condottiero','Italian mercenary unit. Quick infantry.','The Forgotten','Infantry',4,'Barracks','50F, 35G',18,80,'10 melee','+10 vs Gunpowder unit, +2 vs Standard building','1.9',1,0,'1.2','6',NULL,NULL,NULL),(18,'Huskarl','Gothic unique unit. Infantry with substantial pierce armor, virtually immune to archer fire.','The Age of Kings','Infantry',3,'Castle','52F, 26G',16,60,'10','+6 vs Archer, +2 vs Eagle Warrior, +4 vs Standard building','2.0',0,6,'1.05','3','Elite Huskarl','1200F, 550G',40),(19,'Archer','Quick and light. Weak at close range; excels at battle from distance.','The Age of Kings','Archer',2,'Archery Range','25W, 45G',35,30,'4 pierce','+3 vs Spearman','2.0',0,0,'0.96','6','Crossbowman','125F, 75G',35),(22,'Crossbowman','Stronger than Archer. Quick and light.','The Age of Kings','Archer',3,'Archery Range','25W, 45G',27,35,'5 pierce','+3 vs Spearman','2.0',0,0,'0.96','7','Arbalester','350F, 300G',50),(23,'Arbalester','Stronger than Crosbowman. Quick and light.','The Age of Kings','Archer',4,'Archery Range','25W, 45G',27,40,'6 pierce','+3 vs Spearman','2.0',0,0,'0.96','7',NULL,NULL,NULL),(26,'Skirmisher','Ranged unit equipped with armor vs. archer attacks.','The Age of Kings','Archer',2,'Archery Range','25F, 35W',22,30,'2 pierce','+3 vs Archer, +3 vs Spearman','3.0',0,3,'0.96','6','Elite Skirmisher','230W, 130G',50),(27,'Elite Skirmisher','Stronger than Skirmisher. Ranged unit equipped with armor vs. archer attacks.','The Age of Kings','Archer',3,'Archery Range','25F, 35W',22,35,'3 pierce','+4 vs Archer, +3 vs Spearman, +2 vs Cavalry archer','3.0',0,4,'0.96','7','Imperial Skirmisher','300W, 450G',50),(28,'Cavalry Archer','Fast, with ranged attack. Ideal for hit-and-run attacks.','The Age of Kings','Cavalry, Archer',3,'Archery Range','40W, 60G',34,50,'6 pierce','+2 vs Spearman','2.0',0,0,'1.4','5','Heavy Cavalry Archer','900F, 500G',50),(29,'Heavy Cavalry Archer','Stronger than Cavalry Archer. Fast, with ranged attack.','The Age of Kings','Cavalry, Archer',4,'Archery Range','40W, 60G',27,60,'7 pierce','+2 vs Spearman','2.0',1,0,'1.4','6',NULL,NULL,NULL),(30,'Hand Cannoneer','Powerful close attack; inaccurate at range.','The Age of Kings','Gunpowder unit',4,'Archery Range','45F, 50G',34,35,'17 pierce','+10 vs Infantry, +2 vs Ram, +1 vs Spearman','3.45',1,0,'0.96','9',NULL,NULL,NULL),(31,'Slinger','Inca unique unit. Ranged unit with attack bonus vs. infantry.','The Forgotten','Archer',3,'Archery Range','30F, 40G',25,40,'4 pierce','+10 vs Infantry, +10 vs Condottiero, +3 vs Ram, +1 vs Spearman','2.0',0,0,'0.96','7',NULL,NULL,NULL),(32,'Genitour','Berber unique unit. Mounted Skirmisher.','The African Kingdoms','Cavalry, Archer',3,'Archery Range','50F, 35W',25,50,'3 pierce','+4 Archer, +2 vs Spearman','3.0',0,4,'1.35','5','Elite Genitour','500F, 450W',60),(33,'Elite Genitour','Berber unique unit. Mounted Skirmisher.','The African Kingdoms','Cavalry, Archer',3,'Archery Range','50F, 35W',25,55,'4 pierce','+5 vs Archer, +2 vs Spearman, +2 vs Cavalry archer','3.0',0,4,'1.35','6',NULL,NULL,NULL),(34,'Scout Cavalry','Fast with extensive line of sight.','The Age of Kings','Cavalry',2,'Stable','80F',30,45,'3 melee','+6 vs Monk','2.0',0,2,'1.2','4','Light Cavalry','150F, 50G',45),(35,'Light Cavalry','Stronger than Scout Cavalry. Fast with extensive line of sight.','The Age of Kings','Cavalry',3,'Stable','80F',30,60,'7 melee','+10 vs Monk','2.0',0,2,'1.5','8','Hussar','500F, 600G',50),(38,'Hussar','Stronger than Light Cavalry. Fast with extensive line of sight.','The Conquerors','Cavalry',4,'Stable','80F',30,75,'7 melee','+12 vs Monk','1.9',0,2,'1.5','10',NULL,NULL,NULL),(39,'Knight','Fast and heavy cavalry.','The Age of Kings','Cavalry',3,'Stable','60F, 75G',30,100,'10 melee',NULL,'1.8',2,2,'1.35','4','Cavalier','300F, 300G',100),(40,'Cavalier','Stronger than Knight. Fast and heavy cavalry.','The Age of Kings','Cavalry',4,'Stable','60F, 75G',30,120,'12 melee',NULL,'1.8',2,2,'1.35','4','Paladin','1300F, 750G',170),(41,'Paladin','Stronger than Cavalier. Fast and heavy cavalry.','The Age of Kings','Cavalry',4,'Stable','60F, 75G',30,160,'14 melee',NULL,'1.9',2,3,'1.35','5',NULL,NULL,NULL),(42,'Imperial Skirmisher','Stronger than Elite Skirmisher. Ranged unit equipped with armor vs. archer attacks.','Rise of The Rajas','Archer',4,'Archery Range','25F, 35W',22,35,'4 pierce','+5 vs Archer, +3 vs Spearman, +3 vs Cavalry archer','3.05',0,5,'0.96','7',NULL,NULL,NULL),(43,'Camel Rider','Excels at killing other mounted units.','The Age of Kings','Cavalry',3,'Stable','55F, 60G',22,100,'6 melee','+9 vs Cavalry, +5 vs Camel, +5 vs Ship, +5 vs Fishing Ship','2.0',0,0,'1.45','4','Heavy Camel Rider','325F, 365G',105),(44,'Heavy Camel Rider','Stronger than Camel. Excels at killing other mounted units.','The Age of Kings','Cavalry',4,'Stable','55F, 60G',22,120,'7 melee','+18 vs Cavalry, +9 vs Camel, +9 vs Ship, +9 vs Fishing Ship, +7 vs Mameluke','2.0',0,0,'1.45','5','Imperial Camel Rider','1200F, 600G',125),(45,'Imperial Camel Rider','Stronger than Heavy Camel. Excels at killing other mounted units.','The Forgotten','Cavalry',4,'Stable','55F, 60G',20,140,'9 melee','+18 vs Cavalry, +9 vs Camel, +9 vs Ship, +9 vs Fishing Ship, +7 vs Mameluke, +5 vs Building','2.0',0,0,'1.45','5',NULL,NULL,NULL),(46,'Battle Elephant','Slow and heavy cavalry.','Rise of the Rajas','Cavalry',3,'Stable','120F, 70G',24,250,'12 melee','+4 vs Building, +7 vs Stone defense','2.0',1,2,'0.85','4','Elite Battle Elephant','1200F, 900G',100),(47,'Elite Battle Elephant','Stronger than Battle Elephant. Slow and heavy cavalry.','Rise of the Rajas','Cavalry',4,'Stable','120F, 70G',24,300,'14 melee','+7 vs Building, +10 vs Stone defense','2.0',1,3,'0.85','5',NULL,NULL,NULL),(48,'Tarkan','Hun unique unit. Cavalry with attack bonus vs. buildings.','The Conquerors','Cavalry',3,'Castle','60F, 60G',14,100,'8 melee','+12 vs Stone defense, +10 vs Castle, +8 vs Building, +8 vs Wall and gate','2.1',1,3,'1.35','5','Elite Tarkan','1000F, 500G',45),(49,'Elite Tarkan','Hun unique unit. Cavalry with attack bonus vs. buildings.','The Conquerors','Cavalry',3,'Castle','60F, 60G',14,150,'11 (Elite) melee','+12 vs Stone defense, +10 vs Castle, +10 vs Building, +10 vs Wall and gate','2.1',1,4,'1.35','7',NULL,NULL,NULL),(50,'Steppe Lancer','Light cavalry unit with increased attack range.','The Last Khans','Cavalry',3,'Stable','70F, 45G',24,60,'9 melee',NULL,'2.3',0,1,'1.45','5','Elite Steppe Lancer','900F, 550G',55),(51,'Elite Steppe Lancer','Light cavalry unit with increased attack range.','The Last Khans','Cavalry',4,'Stable','70F, 45G',20,80,'11 melee',NULL,'2.3',0,1,'1.45','5',NULL,NULL,NULL),(52,'Battering Ram','Slow, lumbering siege weapon used to reduce enemy towns to ruins.','The Age of Kings','Siege unit',3,'Siege Workshop','160W, 75G',36,175,'2 melee','+125 vs Building, +40 vs Siege weapon','5',-3,180,'0.5','3','Capped Ram','300F',50),(53,'Capped Ram','Stronger than Battering Ram. Slow, lumbering siege weapon used to reduce enemy towns to ruins.','The Age of Kings','Siege unit',4,'Siege Workshop','160W, 75G',36,200,'3 melee','+150 vs Building, +50 vs Siege weapon','5',-3,190,'0.5','3','Siege Ram','1000F',75),(54,'Siege Ram','Stronger than Capped Ram. Slow, lumbering siege weapon used to reduce enemy towns to ruins.','The Age of Kings','Siege unit',4,'Siege Workshop','160W, 75G',36,270,'4 melee','+200 vs Building, +65 vs Siege weapon','5',-3,195,'0.6','3',NULL,NULL,NULL),(55,'Mangonel','Wheeled siege weapon used to attack a small mass of units.','The Age of Kings','Siege unit',3,'Siege Workshop','160W, 135G',46,50,'40 melee','+35 vs Building, +12 vs Siege weapon','6',0,6,'0.6','9','Onager','800F, 500G',75),(56,'Onager','Stronger than Mangonel. Wheeled siege weapon used to attack a small mass of units.','The Age of Kings','Siege unit',4,'Siege Workshop','160W, 135G',46,60,'50 melee','+45 vs Building, +12 vs Siege weapon','6',0,7,'0.6','10','Siege Onager','1450F, 1000G',150),(64,'Siege Onager','Stronger than Onager. Wheeled siege weapon used to attack a small mass of units.','The Age of Kings','Siege unit',4,'Siege Workshop','160W, 135G',46,70,'75 melee','+60 vs Building, +12 vs Siege weapon','6',0,8,'0.6','10',NULL,NULL,NULL),(65,'Scorpion','Light artillery that fires large arrowlike bolts.','The Age of Kings','Siege unit',3,'Siege Workshop','75W, 75G',30,40,'12 pierce','+6 vs War elephant, +2 vs Building, +1 vs Ram','3.6',0,7,'0.65','9','Heavy Scorpion','1000F, 1100W',50),(66,'Heavy Scorpion','Stronger than Scorpion. Light artillery that fires large arrowlike bolts.','The Age of Kings','Siege unit',4,'Siege Workshop','75W, 75G',30,50,'16 pierce','+8 vs War elephant, +4 vs Building, +2 vs Ram','3.6',0,7,'0.65','9',NULL,NULL,NULL),(67,'Bombard Cannon','Powerful mobile anti-building siege weapon.','The Age of Kings','Siege unit, Gunpowder unit',4,'Siege Workshop','225W, 225G',56,80,'40 melee','+200 vs Building, +40 vs Ship, +40 vs Fishing Ship, +40 vs Stone defense, +20 vs Siege weapon','6.5',2,5,'0.7','14',NULL,NULL,NULL),(68,'Siege Tower','Siege weapon used to scale enemy walls; resistant to archer attack.','The African Kingdoms','Siege unit',3,'Siege Workshop','200W, 160G',36,220,'0',NULL,'0',-2,100,'0.8','8',NULL,NULL,NULL),(69,'Monk','Slow and weak. Converts enemy units, ships to your civilization (player color). Heals wounded villagers, military units (except siege weapons).','The Age of Kings','Monk, Healer',3,'Monastery','100G',51,30,NULL,NULL,'62',0,0,'0.7','11',NULL,NULL,NULL),(70,'Missionary','Spanish unique unit. Mounted Monk. Converts enemy units and heals friendly units like Monks, but cannot pick up Relics.','The Conquerors','Cavalry, Monk, Healer',3,'Monastery','100G',51,30,NULL,NULL,'62',0,0,'1.1','9',NULL,NULL,NULL),(71,'Trade Cart','Used to trade with other players by land.','The Age of Kings','Civilian',2,'Market','100W, 50G',51,70,NULL,NULL,NULL,0,0,'1','7',NULL,NULL,NULL),(72,'Petard','Demolition infantry unit armed with explosives. Devastating vs. buildings, ineffective vs. other units. Self-destructs when used.','The Conquerors','Siege unit, Suicide unit',3,'Castle','65F, 20G',25,50,'25 melee','+900 vs Wall and gate, +500 vs Building, +100 vs Castle, +60 vs Siege weapon',NULL,0,2,'0.8','4',NULL,NULL,NULL),(73,'Trebuchet','Powerful siege weapon used to destroy buildings, walls from long distance.','The Age of Kings','Siege unit',4,'Castle','200W, 200G',50,150,'200 pierce','+250 vs Building','10',1,150,'0.8','19',NULL,NULL,NULL),(74,'Fishing Ship','Gathers food from jumping fish and Fish Traps.','The Age of Kings','Civilian, Ship',1,'Dock','75W',40,60,NULL,NULL,NULL,0,4,'1.26','5',NULL,NULL,NULL),(75,'Transport Ship','Used to move your units across water.','The Age of Kings','Naval vessel',1,'Dock','125W',46,100,NULL,NULL,NULL,4,8,'1.45','5',NULL,NULL,NULL),(76,'Trade Cog','Used to trade with other players by sea.','The Age of Kings','Civilian, Naval vessel',2,'Dock','100W, 50G',36,80,NULL,NULL,NULL,0,6,'1.32','6',NULL,NULL,NULL),(77,'Galley','Small, fast ship with weak attack.','The Age of Kings','Naval vessel',2,'Dock','90W, 30G',60,120,'6 pierce','+8 vs Ship, +8 vs Fishing Ship, +6 vs Building, +3 vs Ram','3.0',0,6,'1.43','7','War Galley','230F, 100G',50),(78,'War Galley','Stronger than Galley.','The Age of Kings','Naval vessel',3,'Dock','90W, 30G',36,135,'7 pierce','+9 vs Ship, +9 vs Fishing Ship, +7 vs Building, +4 vs Ram','3.05',0,6,'1.43','8','Galleon','400F, 315W',65),(79,'Galleon','Stronger than War Galley.','The Age of Kings','Naval vessel',4,'Dock','90W, 30G',36,165,'8 pierce','+11 vs Ship, +11 vs Fishing Ship, +8 vs Building, +4 vs Ram','3.05',0,8,'1.43','9',NULL,NULL,NULL),(80,'Fire Galley','Spews fire at other ships. Good at sinking Galleys.','The African Kingdoms','Naval vessel',2,'Dock','75W, 45G',65,100,'1 pierce','+3 vs Ship, +1 vs Turtle Ship, +1 vs Building, +1 vs Fishing Ship','0.25',0,4,'1.3','5','Fire Ship','230F, 100G',50),(81,'Fire Ship','Spews fire at other ships. Good at sinking Galleys.','The Age of Kings','Naval vessel',3,'Dock','75W, 45G',36,120,'2 pierce, 1 melee','+3 vs Ship, +3 vs Fishing Ship, +2 vs Turtle Ship, +2 vs Building','0.25',0,6,'1.35','5','Fast Fire Ship','280F, 250G',50),(82,'Fast Fire Ship','Stronger than Fire Ship. Spews fire at other ships.','The Age of Kings','Naval vessel',4,'Dock','75W, 45G',36,140,'3 pierce, 1 melee','+4 vs Ship, +4 vs Fishing Ship, +3 vs Turtle Ship, +3 vs Building','0.25',0,8,'1.43','6',NULL,NULL,NULL),(83,'Demolition Raft','Filled with explosives. Self-destructs when used.','The African Kingdoms','Naval vessel, Suicide unit',2,'Dock','70W, 50G',45,45,'90 melee','+180 vs Building','2.5',0,2,'1.5','6','Demolition Ship','230F, 100G',50),(84,'Demolition Ship','Filled with explosives. Self-destructs when used.','The Age of Kings','Naval vessel, Suicide unit',3,'Dock','70W, 50G',31,60,'110 melee','+220 vs Building',NULL,0,3,'1.6','6','Heavy Demolition Ship','200W, 300G',50),(85,'Heavy Demolition Ship','Stronger than Demolition Ship. Filled with explosives. Self-destructs when used.','The Age of Kings','Naval vessel, Suicide unit',4,'Dock','70W, 50G',31,70,'140 melee','+280 vs Building',NULL,0,5,'1.6','6',NULL,NULL,NULL),(86,'Cannon Galleon','Long-range warship used to attack targets on shore to establish beachhead.','The Age of Kings','Naval vessel, Gunpowder unit',4,'Dock','200W, 150G',46,120,'35 melee','+200 vs Building, +40 vs Siege weapon, +15 vs Infantry, +15 vs Archer, +15 vs Cavalry, +4 vs Mameluke','10',0,6,'1.1','15','Elite Cannon Galleon','525W, 500G',30),(87,'Elite Cannon Galleon','Stronger than Cannon Galleon. Long-range warship used to attack targets on shore to establish beachhead.','The Age of Kings','Naval vessel, Gunpowder unit',4,'Dock','200W, 150G',46,150,'45 melee','+275 vs Building, +40 vs Siege weapon, +15 vs Infantry, +15 vs Archer, +15 vs Cavalry, +4 vs Mameluke','10',0,8,'1.1','17',NULL,NULL,NULL),(88,'Longboat','Viking unique unit. Fires multiple arrows.','The Age of Kings','Naval vessel',3,'Dock','84W, 42G',25,130,'7 pierce','+9 vs Ship, +9 vs Fishing Ship, +7 vs Building, +4 vs Ram','3.0',0,6,'1.54','8','Elite Longboat','750F, 475G',60),(89,'Turtle Ship','Korean unique unit. Slow, ironclad battleship used to destroy other ships at close range.','The Conquerors','Naval vessel, Gunpowder unit',3,'Dock','152W, 180G',50,200,'50 melee',NULL,'6.04',6,5,'0.9','8','Elite Turtle Ship','1000F, 800G',65),(90,'Caravel','Portuguese unique unit. Boat effective vs. large fleets because each shot damages multiple units.','The African Kingdoms','Naval vessel',3,'Dock','90W, 34G',36,143,'6 pierce','+8 vs Building, +6 vs Ship, +6 vs Fishing Ship, +4 vs Ram','3.0',0,8,'1.43','9','Elite Caravel','750F, 475G',60);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aoe2deapi'
--

--
-- Dumping routines for database 'aoe2deapi'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-23 17:18:55
