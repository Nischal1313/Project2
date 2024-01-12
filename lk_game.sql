-- MariaDB dump 10.19-11.1.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: karkuteilla
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airport` (
  `id` int(11) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `latitude_deg` double DEFAULT NULL,
  `longitude_deg` double DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `iso_country` varchar(40) DEFAULT NULL,
  `municipality` varchar(40) DEFAULT NULL,
  `tip_1` varchar(1000) DEFAULT NULL,
  `tip_2` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ident`),
  KEY `iso_country` (`iso_country`),
  CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`iso_country`) REFERENCES `country` (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES
(3,'AGGH','large_airport','Honiara International Airport',-9.428,160.054993,'OC','SB','Honiara',NULL,NULL),
(67,'AYPY','large_airport','Port Moresby Jacksons International Airp',-9.443380355834961,147.22000122070312,'OC','PG','Port Moresby',NULL,NULL),
(123,'BIKF','large_airport','Keflavik International Airport',63.985001,-22.6056,'EU','IS','Reykjavík','Pelaaja, tiedustelumme perusteella rikolliset ovat nautiskelemassa Euroopan ruoka- ja juomakulttuurin huipusta edellisen ryöstön saaliillaan.','Sain juuri lisätiedon korvanappiini, että maassa tyypillisiä raaka-aineita ruoanlaitossa on oliiviöljy, tomaatti sekä viini.'),
(1864,'CYQB','large_airport','Quebec Jean Lesage International Airport',46.7911,-71.393303,'NA','CA','Quebec',NULL,NULL),
(2050,'DAAG','large_airport','Houari Boumediene Airport',36.691002,3.21541,'AF','DZ','Algiers',NULL,NULL),
(2090,'DGAA','large_airport','Kotoka International Airport',5.605189800262451,-0.16678600013256073,'AF','GH','Accra',NULL,NULL),
(2118,'DNMM','large_airport','Murtala Muhammed International Airport',6.5773701667785645,3.321160078048706,'AF','NG','Lagos','Olemme saaneet tiedon, että rikollisilla on kontakteja salametsästäjiin. Kyseisessä valtiossa ilmeisesti salametsästetään eniten koko maailmassa.','Tässä valtiossa on kolme pääkaupunkia. Toivottavasti lennämme oikeaan niistä…'),
(2125,'DRRN','large_airport','Diori Hamani International Airport',13.4815,2.18361,'AF','NE','Niamey',NULL,NULL),
(2133,'DTTA','large_airport','Tunis Carthage International Airport',36.85100173950195,10.22719955444336,'AF','TN','Tunis',NULL,NULL),
(2155,'EBBR','large_airport','Brussels Airport',50.901401519800004,4.48443984985,'EU','BE','Brussels',NULL,NULL),
(301881,'EDDB','large_airport','Berlin Brandenburg Airport',52.351389,13.493889,'EU','DE','Berlin','Rikolliset ovat lentäneet geysiirien eli kuumien lähteiden kotimaahan.','Saimme vielä lisätietoa kohteen maantiedosta: Tämä valtio lepää Euraasian ja Pohjois-Amerikan mannerlaattojen liitoskohdassa, minkä takia maan luonnossa on paljon vulkaanista sekä geotermistä energiaa.'),
(2301,'EETN','large_airport','Lennart Meri Tallinn Airport',59.41329956049999,24.832799911499997,'EU','EE','Tallinn',NULL,NULL),
(2307,'EFHK','large_airport','Helsinki Vantaa Airport',60.3172,24.963301,'EU','FI','Helsinki',NULL,NULL),
(2434,'EGLL','large_airport','London Heathrow Airport',51.4706,-0.461941,'EU','GB','London',NULL,NULL),
(2513,'EHAM','large_airport','Amsterdam Airport Schiphol',52.308601,4.76389,'EU','NL','Amsterdam',NULL,NULL),
(2533,'EIDW','large_airport','Dublin Airport',53.421299,-6.27007,'EU','IE','Dublin',NULL,NULL),
(2542,'EKCH','large_airport','Copenhagen Kastrup Airport',55.617900848389,12.656000137329,'EU','DK','Copenhagen',NULL,NULL),
(2563,'ELLX','large_airport','Luxembourg-Findel International Airport',49.6233333,6.2044444,'EU','LU','Luxembourg',NULL,NULL),
(2578,'ENGM','large_airport','Oslo Airport, Gardermoen',60.193901,11.1004,'EU','NO','Oslo',NULL,NULL),
(2637,'EPWA','large_airport','Warsaw Chopin Airport',52.1656990051,20.967100143399996,'EU','PL','Warsaw',NULL,NULL),
(2701,'ESSA','large_airport','Stockholm-Arlanda Airport',59.651901245117,17.918600082397,'EU','SE','Stockholm',NULL,NULL),
(2758,'EVRA','large_airport','Riga International Airport',56.92359924316406,23.971099853515625,'EU','LV','Riga',NULL,NULL),
(2766,'EYVI','large_airport','Vilnius International Airport',54.634102,25.285801,'EU','LT','Vilnius',NULL,NULL),
(2775,'FACT','large_airport','Cape Town International Airport',-33.9648017883,18.6016998291,'AF','ZA','Cape Town','Rikolliset ovat juuri saapuneet maailman köyhimpään valtioon. Toivomme suuresti etteivät rikolliset ehdi aiheuttamaan lisää kaaosta tässä valtiossa.','Olemme juuri kuulleet kuuntelulaitteillamme ranskan, englannin ja kirundin kieltä. Ehkäpä nämä ovat valtion viralliset kielet?'),
(2864,'FBSK','large_airport','Sir Seretse Khama International Airport',-24.555201,25.9182,'AF','BW','Gaborone',NULL,NULL),
(308033,'FDSK','large_airport','King Mswati III International Airport',-26.358611,31.716944,'AF','SZ','Mpaka',NULL,NULL),
(2878,'FIMP','large_airport','Sir Seewoosagur Ramgoolam International ',-20.430201,57.683601,'AF','MU','Plaine Magnein',NULL,NULL),
(2894,'FLLS','large_airport','Kenneth Kaunda International Airport',-15.3308,28.4526,'AF','ZM','Lusaka',NULL,NULL),
(2905,'FMEE','large_airport','Roland Garros Airport',-20.8871,55.5103,'AF','RE','St Denis',NULL,NULL),
(2908,'FMMI','large_airport','Ivato Airport',-18.7969,47.478802,'AF','MG','Antananarivo',NULL,NULL),
(2942,'FNLU','large_airport','Quatro de Fevereiro Airport',-8.85837,13.2312,'AF','AO','Luanda',NULL,NULL),
(2975,'FQMA','large_airport','Maputo Airport',-25.920799,32.572601,'AF','MZ','Maputo',NULL,NULL),
(2993,'FSIA','large_airport','Seychelles International Airport',-4.67434,55.521801,'AF','SC','Mahe Island',NULL,NULL),
(2998,'FTTJ','large_airport','N\'Djamena International Airport',12.1337,15.034,'AF','TD','N\'Djamena',NULL,NULL),
(3005,'FVHA','large_airport','Robert Gabriel Mugabe International Airp',-17.931801,31.0928,'AF','ZW','Harare',NULL,NULL),
(3039,'FYWH','large_airport','Hosea Kutako International Airport',-22.4799,17.4709,'AF','NA','Windhoek',NULL,NULL),
(3040,'FZAA','large_airport','Ndjili International Airport',-4.38575,15.4446,'AF','CD','Kinshasa',NULL,NULL),
(3066,'GABS','large_airport','Modibo Keita International Airport',12.5335,-7.94994,'AF','ML','Bamako',NULL,NULL),
(3076,'GBYD','large_airport','Banjul International Airport',13.338,-16.652201,'AF','GM','Banjul',NULL,NULL),
(3095,'GFLL','large_airport','Lungi International Airport',8.61644,-13.1955,'AF','SL','Freetown (Lungi-Town)','Olemme saaneet tietoomme, että rikolliset ovat havaittu piileskelevän kymmenien kissojen kanssa! Kissojen on uskottu tuovan onnea kyseisessä valtiossa ja niitä on jopa palvottu.','Olemme seuranneet rikollisten viestittelyä mutta viestit ovat kirjoitettu muinaisella kirjoitustyylillä. Tämä yli 700 kirjainta sisältävä kirjoitusjärjestelmä tuottaa hieman työtä kryptoanalyysi-osastollemme.'),
(3099,'GLRB','large_airport','Roberts International Airport',6.23379,-10.3623,'AF','LR','Monrovia',NULL,NULL),
(3113,'GMMN','large_airport','Mohammed V International Airport',33.36750030517578,-7.589970111846924,'AF','MA','Casablanca',NULL,NULL),
(325736,'GOBD','large_airport','Blaise Diagne International Airport',14.67,-17.073333,'AF','SN','Dakar',NULL,NULL),
(323315,'GQNO','large_airport','Nouakchott–Oumtounsy International Airpo',18.31,-15.9697222,'AF','MR','Nouakchott',NULL,NULL),
(3150,'GVAC','large_airport','Amílcar Cabral International Airport',16.7414,-22.9494,'AF','CV','Espargos',NULL,NULL),
(3157,'HAAB','large_airport','Addis Ababa Bole International Airport',8.97789,38.799301,'AF','ET','Addis Ababa',NULL,NULL),
(3170,'HBBA','large_airport','Bujumbura International Airport',-3.32402,29.318501,'AF','BI','Bujumbura','Organisaatiomme historioitsijat ovat kertoneet, että rikolliset lymyävät tällä kertaa kaupungissa, joka perustettiin vapautettujen orjien kodiksi.','Organisaation kääntäjät tulivat myös avuksemme ja saimme tietää, että valtion nimi juontaa juurensa portugalilaisesta termistä, joka tarkoittaa “Leijonavuoria”'),
(3174,'HDAM','large_airport','Djibouti-Ambouli Airport',11.5473,43.1595,'AF','DJ','Djibouti City',NULL,NULL),
(3183,'HECA','large_airport','Cairo International Airport',30.12190055847168,31.40559959411621,'AF','EG','Cairo','Olemme saaneet tietoomme, että rikolliset ovat havaittu piileskelevän kymmenien kissojen kanssa! Kissojen on uskottu tuovan onnea kyseisessä valtiossa ja niitä on jopa palvottu.','Olemme seuranneet rikollisten viestittelyä mutta viestit ovat kirjoitettu muinaisella kirjoitustyylillä. Tämä yli 700 kirjainta sisältävä kirjoitusjärjestelmä tuottaa hieman työtä kryptoanalyysi-osastollemme.'),
(3247,'HJJJ','large_airport','Juba International Airport',4.87201,31.601101,'AF','SS','Juba',NULL,NULL),
(3206,'HKJK','large_airport','Jomo Kenyatta International Airport',-1.31923997402,36.9277992249,'AF','KE','Nairobi',NULL,NULL),
(3227,'HLLT','large_airport','Tripoli International Airport',32.663502,13.159,'AF','LY','Tripoli',NULL,NULL),
(3237,'HRYR','large_airport','Kigali International Airport',-1.96863,30.1395,'AF','RW','Kigali',NULL,NULL),
(3249,'HSSK','large_airport','Khartoum International Airport',15.5895,32.5532,'AF','SD','Khartoum',NULL,NULL),
(3251,'HTDA','large_airport','Julius Nyerere International Airport',-6.87811,39.202599,'AF','TZ','Dar es Salaam',NULL,NULL),
(3263,'HUEN','large_airport','Entebbe International Airport',0.042386,32.443501,'AF','UG','Kampala',NULL,NULL),
(3631,'KLAS','large_airport','McCarran International Airport',36.08010101,-115.1520004,'NA','US','Las Vegas','Las Vegasin viranomaiset päättelivät rikollisten käyttäytymisen perusteella, että he suunnittelevat seuraavaa iskuaan valtiossa maailman suosituimman Samba-karnevaalien aikaan.','Tämän valtion asukkaat ovat suuria jalkapallofaneja, koska maajoukkue on voittanut viisi kertaa maailmancupin.'),
(3972,'LATI','large_airport','Tirana International Airport Mother Tere',41.4146995544,19.7206001282,'EU','AL','Tirana',NULL,NULL),
(3977,'LBSF','large_airport','Sofia Airport',42.696693420410156,23.411436080932617,'EU','BG','Sofia',NULL,NULL),
(3980,'LCLK','large_airport','Larnaca International Airport',34.875099,33.624901,'AS','CY','Larnaca',NULL,NULL),
(3993,'LDZA','large_airport','Zagreb Airport',45.7429008484,16.0687999725,'EU','HR','Zagreb',NULL,NULL),
(4004,'LEBL','large_airport','Barcelona-El Prat Airport',41.2971,2.07846,'EU','ES','Barcelona',NULL,NULL),
(4185,'LFPG','large_airport','Charles de Gaulle International Airport',49.012798,2.55,'EU','FR','Paris',NULL,NULL),
(4251,'LGAV','large_airport','Athens Eleftherios Venizelos Internation',37.936401,23.9445,'EU','GR','Athens',NULL,NULL),
(4296,'LHBP','large_airport','Budapest Liszt Ferenc International Airp',47.42976,19.261093,'EU','HU','Budapest',NULL,NULL),
(4380,'LIRQ','large_airport','Peretola Airport',43.810001,11.2051,'EU','IT','Firenze','Rikolliset ovat lentäneet kaupunkiin, jossa on rakennettu jo 140 vuotta kirkkoa, joka ei edelleenkään ole valmis.','Ovatko rosvot matkalla jalkapallopeliin? Sillä tässä kaupungissa sijaitsee euroopan suurin jalkapallostadion.'),
(4386,'LJLJ','large_airport','Ljubljana Jože Pu?nik Airport',46.223701,14.4576,'EU','SI','Ljubljana',NULL,NULL),
(4408,'LKPR','large_airport','Václav Havel Airport Prague',50.1008,14.26,'EU','CZ','Prague','Rosvot ovat juhlistamassa onnistuneita rikoksiaan kaupungissa, jossa on ylivoimaisesti Euroopan suurin “underground” Techno-skene.','Ai edellinen vihje ei riittänyt ratkaisemaan kohdetta... No tämä kaupunki oli myös II:n maailmansodan jälkeen jaettu muurilla.'),
(4411,'LLBG','large_airport','Ben Gurion International Airport',32.01139831542969,34.88669967651367,'AS','IL','Tel Aviv',NULL,NULL),
(4427,'LMML','large_airport','Malta International Airport',35.857498,14.4775,'EU','MT','Valletta',NULL,NULL),
(4434,'LOWW','large_airport','Vienna International Airport',48.110298,16.5697,'EU','AT','Vienna',NULL,NULL),
(4461,'LPPT','large_airport','Humberto Delgado Airport (Lisbon Portela',38.7813,-9.13592,'EU','PT','Lisbon',NULL,NULL),
(4482,'LROP','large_airport','Henri Coand? International Airport',44.5711111,26.085,'EU','RO','Bucharest',NULL,NULL),
(4505,'LSZH','large_airport','Zürich Airport',47.458056,8.548056,'EU','CH','Zurich',NULL,NULL),
(317457,'LTFM','large_airport','?stanbul Airport',41.261297,28.741951,'AS','TR','Arnavutköy, Istanbul',NULL,NULL),
(4573,'LWSK','large_airport','Skopje International Airport',41.961601,21.621401,'EU','MK','Skopje',NULL,NULL),
(4610,'LYBE','large_airport','Belgrade Nikola Tesla Airport',44.8184013367,20.3090991974,'EU','RS','Belgrade',NULL,NULL),
(4613,'LYPG','large_airport','Podgorica Airport / Podgorica Golubovci ',42.359402,19.2519,'EU','ME','Podgorica',NULL,NULL),
(4617,'LZIB','large_airport','M. R. Štefánik Airport',48.17020034790039,17.21269989013672,'EU','SK','Bratislava',NULL,NULL),
(4628,'MBPV','large_airport','Providenciales International Airport',21.773697,-72.268321,'NA','TC','Providenciales',NULL,NULL),
(4636,'MDPC','large_airport','Punta Cana International Airport',18.567399978599997,-68.36340332030001,'NA','DO','Punta Cana',NULL,NULL),
(4644,'MGGT','large_airport','La Aurora Airport',14.5833,-90.527496,'NA','GT','Guatemala City',NULL,NULL),
(4680,'MKJP','large_airport','Norman Manley International Airport',17.935699462890625,-76.7874984741211,'NA','JM','Kingston',NULL,NULL),
(4731,'MMMX','large_airport','Licenciado Benito Juarez International A',19.4363,-99.072098,'NA','MX','Mexico City',NULL,NULL),
(4793,'MPTO','large_airport','Tocumen International Airport',9.0713596344,-79.3834991455,'NA','PA','Tocumen',NULL,NULL),
(4806,'MRLB','large_airport','Guanacaste Airport',10.5933,-85.544403,'NA','CR','Liberia',NULL,NULL),
(4820,'MSLP','large_airport','Monseñor Óscar Arnulfo Romero Internatio',13.4409,-89.055702,'NA','SV','San Salvador (San Luis Talpa)',NULL,NULL),
(4825,'MTPP','large_airport','Toussaint Louverture International Airpo',18.58,-72.292503,'NA','HT','Port-au-Prince',NULL,NULL),
(4839,'MUHA','large_aiport','José Marti International Airport',22.989200592041016,-82.40910339355469,'NA','CU','Havana','Havanan lentokentällä peitetehtävissä oleva kollegani, sanoi kuulleensa, että ensimmäinen rikos tapahtuisi maailman pisimmässä ja kapeimmassa valtiossa.','Kollegani kuuli myös, että valtion maantieteellisen sijainnin takia sillä on maailman pisin rannikko.'),
(4862,'MWCR','large_airport','Owen Roberts International Airport',19.292800903299998,-81.3576965332,'NA','KY','Georgetown',NULL,NULL),
(4951,'MYNN','large_airport','Lynden Pindling International Airport',25.039,-77.466202,'NA','BS','Nassau',NULL,NULL),
(4956,'MZBZ','large_airport','Philip S. W. Goldson International Airpo',17.539100646972656,-88.30819702148438,'NA','BZ','Belize City',NULL,NULL),
(4958,'NCRG','large_airport','Rarotonga International Airport',-21.2026996613,-159.805999756,'OC','CK','Avarua',NULL,NULL),
(4979,'NTAA','large_airport','Faa\'a International Airport',-17.553699,-149.606995,'OC','PF','Papeete',NULL,NULL),
(5011,'NVVV','large_airport','Bauerfield International Airport',-17.699301,168.320007,'OC','VU','Port Vila',NULL,NULL),
(5017,'NWWM','large_airport','Nouméa Magenta Airport',-22.258301,166.473007,'OC','NC','Nouméa',NULL,NULL),
(5023,'NZAA','large_airport','Auckland International Airport',-37.008099,174.792007,'OC','NZ','Auckland',NULL,NULL),
(5079,'OBBI','large_airport','Bahrain International Airport',26.267295,50.63764,'AS','BH','Manama',NULL,NULL),
(5087,'OEDF','large_airport','King Fahd International Airport',26.471200942993164,49.79790115356445,'AS','SA','Ad Dammam',NULL,NULL),
(5166,'OIIE','large_airport','Imam Khomeini International Airport',35.416099548339844,51.152198791503906,'AS','IR','Tehran',NULL,NULL),
(5212,'OJAI','large_airport','Queen Alia International Airport',31.7226009369,35.9931983948,'AS','JO','Amman',NULL,NULL),
(5220,'OKBK','large_airport','Kuwait International Airport',29.226600646972656,47.96889877319336,'AS','KW','Kuwait City',NULL,NULL),
(5222,'OLBA','large_airport','Beirut Rafic Hariri International Airpor',33.820899963378906,35.488399505615234,'AS','LB','Beirut',NULL,NULL),
(299738,'OM-0003','large_airport','Duqm International Airport',19.501944,57.634167,'AS','OM','Duqm',NULL,NULL),
(5226,'OMAA','large_airport','Abu Dhabi International Airport',24.443764,54.651718,'AS','AE','Abu Dhabi',NULL,NULL),
(5242,'OOMS','large_airport','Muscat International Airport',23.593299865722656,58.284400939941406,'AS','OM','Muscat',NULL,NULL),
(5255,'OPKC','large_airport','Jinnah International Airport',24.9065,67.160797,'AS','PK','Karachi',NULL,NULL),
(5289,'ORBI','large_airport','Baghdad International Airport / New Al M',33.262501,44.2346,'AS','IQ','Baghdad',NULL,NULL),
(5303,'OSDI','large_airport','Damascus International Airport',33.4114990234375,36.51559829711914,'AS','SY','Damascus',NULL,NULL),
(44686,'OTHH','large_airport','Hamad International Airport',25.273056,51.608056,'AS','QA','Doha','Gautam-rosvon nähtiin lukevan faktoja hänen seuraavasta kohdemaasta:\n######## Airlines flight MH370, which took off from M.Y. and was supposed to land in Beijing, China, had its last contact with ATC 38 minutes after the flight took off. This flight disappearance is the most famous flight disappearance in aviation history. To this day no one from the flight has been found.\n','The Petronas Towers were the world\'s tallest buildings until 2004 and the structures remain as the world\'s tallest twin buildings. Where is the tower in question?'),
(5433,'PGUM','large_airport','Antonio B. Won Pat International Airport',13.4834,144.796005,'OC','GU','Hagåtña, Guam International Airport',NULL,NULL),
(5528,'RCTP','large_airport','Taiwan Taoyuan International Airport',25.0777,121.233002,'AS','TW','Taipei',NULL,NULL),
(5627,'RJTT','large_airport','Tokyo Haneda International Airport',35.552299,139.779999,'AS','JP','Tokyo',NULL,NULL),
(5653,'RKSI','large_airport','Incheon International Airport',37.46910095214844,126.45099639892578,'AS','KR','Seoul',NULL,NULL),
(5689,'RPLL','large_airport','Ninoy Aquino International Airport',14.5086,121.019997,'AS','PH','Manila',NULL,NULL),
(5781,'SAEZ','large_airport','Ministro Pistarini International Airport',-34.8222,-58.5358,'SA','AR','Buenos Aires (Ezeiza)',NULL,NULL),
(5906,'SBGL','large_airport','Galeão International Airport',-22.809999,-43.250557,'SA','BR','Rio De Janeiro','Paikalliset poliisit ilmoittivat sinulle, että rikolliset ovat siirtyneet pohjoiseen päin, josta löytyy ranskankielinen kaupunki, ja jossa valmistetaan paljon vaahterasiirappia.','Poliisit saivat vihiä rikollisten keskusteluista, että valtioissa on vesiputous aivan valtion ja sen naapurivaltion rajalla.'),
(6015,'SCEL','large_airport','Santiago de Chile Airport',-33.393001556396484,-70.78579711914062,'SA','CL','Santiago','Agentit Chilessä näkivät rikollisten nousseen koneeseen, jonka suuntana on yöelämän ja uhkapelaamisen keskus.','Paikka on myös tunnettu sen nähtävyyksistä, kuten Eiffel-tornin jäljennöksestä.'),
(308273,'SEQM','large_airport','Mariscal Sucre International Airport',-0.129166666667,-78.3575,'SA','EC','Quito',NULL,NULL),
(6104,'SKBO','large_airport','El Dorado International Airport',4.70159,-74.1469,'SA','CO','Bogota',NULL,NULL),
(6193,'SLVR','large_airport','Viru Viru International Airport',-17.6448,-63.135399,'SA','BO','Santa Cruz',NULL,NULL),
(6195,'SMJP','large_airport','Johan Adolf Pengel International Airport',5.45283,-55.187801,'SA','SR','Zandery',NULL,NULL),
(6198,'SOCA','large_airport','Cayenne – Félix Eboué Airport',4.819964,-52.361326,'SA','GF','Matoury',NULL,NULL),
(6217,'SPIM','large_airport','Jorge Chávez International Airport',-12.0219,-77.114305,'SA','PE','Lima',NULL,NULL),
(6247,'SUMU','large_airport','Carrasco International /General C L Beri',-34.838402,-56.0308,'SA','UY','Montevideo',NULL,NULL),
(6300,'SVMI','large_airport','Simón Bolívar International Airport',10.601194,-66.991222,'SA','VE','Caracas',NULL,NULL),
(6363,'TFFF','large_airport','Martinique Aimé Césaire International Ai',14.591,-61.003201,'NA','MQ','Fort-de-France',NULL,NULL),
(6366,'TFFR','large_airport','Pointe-à-Pitre Le Raizet International  ',16.265301,-61.531799,'NA','GP','Pointe-à-Pitre',NULL,NULL),
(6384,'TJSJ','large_airport','Luis Munoz Marin International Airport',18.4393997192,-66.0018005371,'NA','PR','San Juan',NULL,NULL),
(6389,'TLPL','large_airport','Hewanorra International Airport',13.7332,-60.952599,'NA','LC','Vieux Fort',NULL,NULL),
(44483,'TN-0002','large_airport','Enfidha - Hammamet International Airport',36.075833,10.438611,'AF','TN','Enfidha',NULL,NULL),
(6402,'TNCA','large_airport','Queen Beatrix International Airport',12.5014,-70.015198,'NA','AW','Oranjestad',NULL,NULL),
(6403,'TNCB','large_airport','Flamingo International Airport',12.131,-68.268501,'NA','BQ','Kralendijk, Bonaire',NULL,NULL),
(6404,'TNCC','large_airport','Hato International Airport',12.1889,-68.959801,'NA','CW','Willemstad',NULL,NULL),
(6406,'TNCM','large_airport','Princess Juliana International Airport',18.041,-63.108898,'NA','SX','Saint Martin',NULL,NULL),
(6421,'UAAA','large_airport','Almaty International Airport',43.3521,77.040497,'AS','KZ','Almaty',NULL,NULL),
(6426,'UAFM','large_airport','Manas International Airport',43.0612983704,74.4776000977,'AS','KG','Bishkek',NULL,NULL),
(6440,'UBBB','large_airport','Heydar Aliyev International Airport',40.467498779296875,50.04669952392578,'AS','AZ','Baku',NULL,NULL),
(6446,'UDYZ','large_airport','Zvartnots International Airport',40.1473007202,44.3959007263,'AS','AM','Yerevan',NULL,NULL),
(6453,'UGTB','large_airport','Tbilisi International Airport',41.6692008972,44.95470047,'AS','GE','Tbilisi',NULL,NULL),
(6467,'UKBB','large_airport','Boryspil International Airport',50.345001220703125,30.894699096679688,'EU','UA','Kiev',NULL,NULL),
(6501,'UMMS','large_airport','Minsk National Airport',53.888071,28.039964,'EU','BY','Minsk',NULL,NULL),
(26380,'UTAA','large_airport','Ashgabat International Airport',37.986801,58.361,'AS','TM','Ashgabat',NULL,NULL),
(26392,'UTTT','large_airport','Tashkent International Airport',41.257900238,69.2811965942,'AS','UZ','Tashkent',NULL,NULL),
(26396,'UUEE','large_airport','Sheremetyevo International Airport',55.972599,37.4146,'EU','RU','Moscow',NULL,NULL),
(26463,'VCBI','large_airport','Bandaranaike International Colombo Airpo',7.180759906768799,79.88410186767578,'AS','LK','Colombo',NULL,NULL),
(26475,'VDPP','large_airport','Phnom Penh International Airport',11.5466,104.844002,'AS','KH','Phnom Penh (Pou Senchey)',NULL,NULL),
(26496,'VECC','large_airport','Kolkata Airport',22.654699325561523,88.44670104980469,'AS','IN','Kolkata','Nauhoitimme pienen pätkän Gautam-rosvon puhelinkeskustelusta ja hän puhui korkeista vuorista ja Buddhan synnyinmaasta. Tiedämme, että tämä on hänen seuraava rikoskohteensa, mutta emme tiedä valtion nimeä.','Olemme saaneet lisänauhoitteen Gautamin puhelinkeskustelusta, jonka aiheena oli valtion epätyypillisen lipun muoto, joka ei ole suorakulmio. Gautam kertoi, ettei hän ollut ennen nähnyt tämänkaltaista lippua.'),
(26534,'VGZR','large_airport','Hazrat Shahjalal International Airport',23.843347,90.397783,'AS','BD','Dhaka',NULL,NULL),
(26535,'VHHH','large_airport','Hong Kong International Airport',22.308901,113.915001,'AS','HK','Hong Kong',NULL,NULL),
(26589,'VMMC','large_airport','Macau International Airport',22.149599,113.592003,'AS','MO','Freguesia de Nossa Senhora do Carmo (Tai',NULL,NULL),
(26596,'VNKT','large_airport','Tribhuvan International Airport',27.6966,85.3591,'AS','NP','Kathmandu','Tiedossamme on, että Gautam on jälleen liikkeellä. Tällä kertaa paikkaan, joka on tunnettu upeasta arkkitehtuurista, korkeista rakennuksista ja huonoista ihmisoikeuksista. Valtion korkeimmalla luonnollisella paikalla on kuitenkin vain noin sata metriä korkeutta. Valtiona se on toiseksi tasaisin koko maailmassa.','Gautam kertoi nauhoitteissa kuinka yllättynyt hän on tiedosta, että kyseisen valtion asukkaista alle 15% ovat vakituisia asukkaita.'),
(26636,'VRMM','large_airport','Malé International Airport',4.191830158233643,73.52909851074219,'AS','MV','Malé',NULL,NULL),
(28118,'VTBS','large_airport','Suvarnabhumi Airport',13.681099891662598,100.74700164794922,'AS','TH','Bangkok',NULL,NULL),
(26708,'VVTS','large_airport','Tan Son Nhat International Airport',10.8188,106.652,'AS','VN','Ho Chi Minh City',NULL,NULL),
(26744,'VYYY','large_airport','Yangon International Airport',16.907300949099998,96.1332015991,'AS','MM','Yangon',NULL,NULL),
(26819,'WBSB','large_airport','Brunei International Airport',4.944200038909912,114.9280014038086,'AS','BN','Bandar Seri Begawan',NULL,NULL),
(26835,'WIII','large_airport','Soekarno-Hatta International Airport',-6.1255698204,106.65599823,'AS','ID','Jakarta',NULL,NULL),
(26874,'WMKK','large_airport','Kuala Lumpur International Airport',2.745579957962,101.70999908447,'AS','MY','Kuala Lumpur','Gautamin on nähty tekevän kauppaa muiden rikollisten kanssa. Hänen pankkitililleen on tullut suuria määriä rahaa ja hän aikoo käyttää tätä valuuttaa kohdemaassaan. Valuutan nimi on won.','AGENTTI, MENE NOPEASTI DMZ-ALUEELLE ETELÄSTÄ. GAUTAM ON NÄHTY ALUEELLA VAIN MINUUTTEJA  SITTEN. HÄNELLÄ ON JOTAIN REPUSSAAN MUTTA EMME SAANEET SELVÄÄ MITÄ.'),
(26887,'WSSS','large_airport','Singapore Changi Airport',1.35019,103.994003,'AS','SG','Singapore',NULL,NULL),
(27145,'YSSY','large_airport','Sydney International Airport',-33.94609832763672,151.177001953125,'OC','AU','Sydney',NULL,NULL),
(27188,'ZBAA','large_airport','Beijing Capital International Airport',40.080101013183594,116.58499908447266,'AS','CN','Beijing',NULL,NULL),
(335326,'ZMCK','large_airport','Ulaanbaatar Chinggis Khaan International',47.646916,106.819833,'AS','MN','Ulaanbaatar (Sergelen)',NULL,NULL);
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `iso_country` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES
('AE','Yhdistyneet Arabiemiirikunnat','AS'),
('AL','Albania','EU'),
('AM','Armenia','AS'),
('AO','Angola','AF'),
('AR','Argentiina','SA'),
('AT','Itävalta','EU'),
('AU','Australia','OC'),
('AW','Aruba','NA'),
('AZ','Azerbaijdzan','AS'),
('BD','Bangladesh','AS'),
('BE','Belgia','EU'),
('BG','Bulgaria','EU'),
('BH','Bahrain','AS'),
('BI','Burundi','AF'),
('BN','Brunei','AS'),
('BO','Bolivia','SA'),
('BQ','Alankomaiden Karibia','NA'),
('BR','Brasilia','SA'),
('BS','Bahama','NA'),
('BW','Botswana','AF'),
('BY','Valko-Venäjä','EU'),
('BZ','Belize','NA'),
('CA','Kanada','NA'),
('CD','Kongo','AF'),
('CH','Sveitsi','EU'),
('CK','Cookinsaaret','OC'),
('CL','Chile','SA'),
('CN','Kiina','AS'),
('CO','Kolumbia','SA'),
('CR','Costa Rica','NA'),
('CU','Kuuba','NA'),
('CV','Kap Verde','AF'),
('CW','Curaçao','NA'),
('CY','Kypros','AS'),
('CZ','Tsekki','EU'),
('DE','Saksa','EU'),
('DJ','Djibouti','AF'),
('DK','Tanska','EU'),
('DO','Dominikaaninen tasavalta','NA'),
('DZ','Algeria','AF'),
('EC','Ecuador','SA'),
('EE','Viro','EU'),
('EG','Egypti','AF'),
('ES','Espanja','EU'),
('ET','Etiopia','AF'),
('FI','Suomi','EU'),
('FR','Ranska','EU'),
('GB','Iso-Britannia','EU'),
('GE','Georgia','AS'),
('GF','Ranskan Guyana','SA'),
('GH','Ghana','AF'),
('GM','Gambia','AF'),
('GP','Guadeloupe','NA'),
('GR','Kreikka','EU'),
('GT','Guatemala','NA'),
('GU','Guam','OC'),
('HK','Hong Kong','AS'),
('HR','Kroatia','EU'),
('HT','Haiti','NA'),
('HU','Unkari','EU'),
('ID','Indonesia','AS'),
('IE','Irlanti','EU'),
('IL','Israel','AS'),
('IN','Intia','AS'),
('IQ','Irak','AS'),
('IR','Iran','AS'),
('IS','Islanti','EU'),
('IT','Italia','EU'),
('JM','Jamaika','NA'),
('JO','Jordania','AS'),
('JP','Japani','AS'),
('KE','Kenia','AF'),
('KG','Kirgisia','AS'),
('KH','Kambodza','AS'),
('KR','Etelä-Korea','AS'),
('KW','Kuwait','AS'),
('KY','Caymansaaret','NA'),
('KZ','Kazakstan','AS'),
('LB','Libanon','AS'),
('LC','Saint Lucia','NA'),
('LK','Sri Lanka','AS'),
('LR','Liberia','AF'),
('LT','Liettua','EU'),
('LU','Luxemburg','EU'),
('LV','Latvia','EU'),
('LY','Libya','AF'),
('MA','Marokko','AF'),
('ME','Montenegro','EU'),
('MG','Madagaskar','AF'),
('MK','Pohjois-Makedonia','EU'),
('ML','Mali','AF'),
('MM','Burma','AS'),
('MN','Mongolia','AS'),
('MO','Macao','AS'),
('MQ','Martinique','NA'),
('MR','Mauritania','AF'),
('MT','Malta','EU'),
('MU','Mauritius','AF'),
('MV','Malediivit','AS'),
('MX','Meksiko','NA'),
('MY','Malesia','AS'),
('MZ','Mosambik','AF'),
('NA','Namibia','AF'),
('NC','Uusi-Caledonia','OC'),
('NE','Niger','AF'),
('NG','Nigeria','AF'),
('NL','Alankomaat','EU'),
('NO','Norja','EU'),
('NP','Nepali','AS'),
('NZ','Uusi-Seelanti','OC'),
('OM','Oman','AS'),
('PA','Panama','NA'),
('PE','Peru','SA'),
('PF','Ranskan Polynesia','OC'),
('PG','Papua-Uusi-Guinea','OC'),
('PH','Filippiinit','AS'),
('PK','Pakistan','AS'),
('PL','Puola','EU'),
('PR','Puerto Rico','NA'),
('PT','Portugali','EU'),
('QA','Qatar','AS'),
('RE','Réunion','AF'),
('RO','Romania','EU'),
('RS','Serbia','EU'),
('RU','Venäjä','EU'),
('RW','Ruanda','AF'),
('SA','Saudi-Arabia','AS'),
('SB','Solomonsaaret','OC'),
('SC','Seychellit','AF'),
('SD','Sudan','AF'),
('SE','Ruotsi','EU'),
('SG','Singapore','AS'),
('SI','Slovenia','EU'),
('SK','Slovakia','EU'),
('SL','Sierra Leone','AF'),
('SN','Senegal','AF'),
('SR','Suriname','SA'),
('SS','Etelä-Sudan','AF'),
('SV','El Salvador','NA'),
('SX','Sint Maarten','NA'),
('SY','Syyria','AS'),
('SZ','Eswatini','AF'),
('TC','Turks- ja Caicossaaret','NA'),
('TD','Tsad','AF'),
('TH','Thaimaa','AS'),
('TM','Turkmenistan','AS'),
('TN','Tunisia','AF'),
('TR','Turkki','AS'),
('TW','Taiwan','AS'),
('TZ','Tansania','AF'),
('UA','Ukraina','EU'),
('UG','Uganda','AF'),
('US','Yhdysvallat','NA'),
('UY','Uruguay','SA'),
('UZ','Uzbekistan','AS'),
('VE','Venezuela','SA'),
('VN','Vietnam','AS'),
('VU','Vanuatu','OC'),
('ZA','Etelä-Afrikka','AF'),
('ZM','Sambia','AF'),
('ZW','Zimbabwe','AF');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coin` int(8) DEFAULT NULL,
  `km_travelled` int(8) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `screen_name` varchar(40) DEFAULT NULL,
  `crimes_stopped` int(4) DEFAULT NULL,
  `continent` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location` (`location`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`location`) REFERENCES `airport` (`ident`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES
(34,7,7140,NULL,'Ade',3,'1'),
(35,6,12130,NULL,'A',2,'1');
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 16:27:33
