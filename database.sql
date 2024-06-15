-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: std-mysql    Database: std_2542_exam
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` text,
  `year` year(4) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_books_cover_id_covers` (`cover_id`),
  CONSTRAINT `fk_books_cover_id_covers` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (10,'Гарри Поттер и проклятое дитя','«Гарри Поттер и Проклятое дитя» (англ. Harry Potter and the Cursed Child) — пьеса, состоящая из двух частей (4 акта), премьера которой состоялась 30 июля 2016 года в Лондоне в театре Палас. Её авторами стали писатель и сценарист Джек Торн, режиссёр Джон Тиффани и создательница поттерианы Джоан Роулинг.',2018,'РОСМЭН','Дж. К. Роулинг',0,0,280,1),(11,'Вы, конечно, шутите!','«Вы, конечно, шутите, мистер Фейнман» — сборник автобиографических историй из жизни американского физика и нобелевского лауреата, Ричарда Фейнмана. Книга является первой биографической публикацией об учёном.',2016,'Эксклюзивная классика','Р. Фейнман',0,0,300,2),(12,'Богатый папа, бедный папа','«Богатый папа, бедный папа» (англ. Rich Dad Poor Dad) — книга, написанная Робертом Т. Кийосаки и Шэрон Лехтер[англ.] в 1997 году. В ней говорится о важности финансовой грамотности, финансовой независимости и создания богатства путём инвестирования в активы, инвестирования в недвижимость, открытия и владения бизнесом, а также повышения своего финансового интеллекта (финансового IQ). На английском языке она лицензирована издательством «Techpress Inc.», а на русском языке — «Попурри».',2019,'РОСМЭН','Р. Кийосаки',0,0,500,3),(13,'Думай как математик','Принято считать, что математики – это люди, наделенные недюжинными интеллектуальными способностями, которые необходимо развивать с самого детства. И большинству точность и логичность математического мышления недоступна. Барбара Оакли, доктор наук, в этой книге доказывает, что каждый может изменить способ своего мышления и овладеть приемами, которые используют все специалисты по точным наукам. Она призывает читателей тренировать свой мозг и подтверждает на конкретных примерах, что каждый может изменить способ своего мышления и овладеть приемами, которые явно или неявно используют все специалисты по точным и естественным наукам. Прочитав эту книгу, вы научитесь: эффективно решать задачи из любой области знаний; освоите метод интерливинга (чередование разных типов задач); научитесь «сжимать» ключевые идеи так, чтобы их было удобнее удержать в памяти, и узнаете о возможностях своего мозга очень много нового!',2017,'Альпина','Б. Оакли',0,0,200,4),(14,'Долгая прогулка','…Это была страшная игра – игра на выживание. Это была Долгая Прогулка. Прогулка со Смертью, ибо смерть ожидала каждого упавшего. Дорога к счастью – потому что победивший в игре получал все. На долгую прогулку вышли многие – но закончит ее только один. Остальные лягут мертвыми на дороге – потому что дорога к счастью для одного станет последней дорогой для многих.',2024,'РОСМЭН','С. Кинг',11,3,300,5),(16,'1984','«1984» (англ. Nineteen Eighty-Four, «тысяча девятьсот восемьдесят четвертый») — роман-антиутопия Джорджа Оруэлла, изданный в 1949 году. Как отмечает членкор РАН М. Ф. Черныш, это самое главное и последнее произведение писателя. Роман «1984» наряду с такими произведениями, как «Мы» Евгения Замятина (1920), «О дивный новый мир» Олдоса Хаксли (1932) и «451 градус по Фаренгейту» Рэя Брэдбери (1953) считается одним из образцов антиутопии. Кроме того, роман, став классическим литературным образцом политической и антиутопической беллетристики, послужил мощным толчком к популяризации эпитета «оруэлловский», а также к апеллятивации таких понятий из романа, как «Большой Брат», «двоемыслие», «полиция мыслей», «мыслепреступление», «новояз» и «2 + 2 = 5».',2007,'Эксклюзивная классика','Дж. Оруэлл',0,0,200,6),(18,'Десять негритят','Роман «Десять негритят» — один из величайших детективных произведений в истории. Выпущенный общим тиражом более 100 000 000 экземпляров, он занимает пятое место в списке бестселлеров художественной литературы всех времен — и безусловное первое место среди романов самой Агаты Кристи.\nАгата Кристи — самый публикуемый автор всех времен и народов после Шекспира. Тиражи ее книг уступают только тиражам его произведений и Библии. В мире продано больше миллиарда книг Кристи на английском языке и столько же — на других языках. Она автор восьмидесяти детективных романов и сборников рассказов, двадцати пьес, двух книг воспоминаний и шести психологических романов, написанных под псевдонимом Мэри Уэстмакотт. Ее персонажи Эркюль Пуаро и мисс Марпл навсегда стали образцовыми героями остросюжетного жанра.',2009,'РОСМЭН','А. Кристи',0,0,120,8),(20,'45 татуировок продавана','Новые 45 татуировок из продавцового прошлого Максима Батырева — как в роли рядового менеджера по продажам, так и в роли руководителя: успехи, неудачи, выводы из них. Одна из самых непростых и в то же время интересных профессий — это профессия человека, который ежедневно, ежечасно и ежеминутно защищает интересы организации, проводя коммерческие переговоры с её потенциальными заказчиками и будущими партнерами. Максим Батырев уверен: все, чего он достиг в своей профессиональной деятельности, он достиг благодаря работе в продажах. Продажи учат защищать свои интересы, выступать публично, вести переговоры с клиентами, делать своими руками презентации, внятно формулировать свои мысли и многому другому. Продажи делают людей сильными. Если вы научитесь продавать товары с не самой очевидной выгодой на одном из самых высококонкурентных рынков, то вам по плечу будут практически любые бизнес-задачи. В своей новой книге Максим рассказывает о 45 татуировках продавца, которые появились за пятнадцать лет, во время которых он учился продавать.',2023,'Альпина','М. Батырев',0,0,385,10),(21,'Дюна','Фрэнк Герберт (1920-1986) успел написать много, но в истории остался прежде всего как автор эпопеи «Дюна». Возможно, самой прославленной фантастической саги двадцатого столетия, саги, переведенной на десятки языков и завоевавшей по всему миру миллионы поклонников. Самый авторитетный журнал научной фантастики «Локус» признал «Дюну», первый роман эпопеи о песчаной планете, лучшим научно-фантастическим романом всех времен и народов. В «Дюне» Фрэнку Герберту удалось совершить невозможное — создать своеобразную «хронику далекого будущего». И не было за всю историю мировой фантастики картины грядущего более яркой, более зримой, более мощной и оригинальной.',2023,'Neoclassic','Ф. Герберт',0,0,640,11),(22,'Пазолини. Умереть за идеи','Книга \"Пазолини. Умереть за идеи\" исследует творчество Пьера Паоло Пазолини от поэзии до художественной литературы, от театра до кино, от журналистики до литературной критики, предлагая читателю взгляд на его работы как на единое целое. Автор Роберто Карнеро анализирует различные фазы творчества Пазолини, пересекая их в постоянно меняющемся творческом дискурсе. Книга выделяет великие \"пазолинские\" темы, такие как молодость, отношения с религией и политикой, ностальгия по прошлому и апокалиптическая фаза последних лет.',2024,'АСТ','К. Роберто',13,3,416,12),(23,'Убийство в восточном экспрессе','Самый знаменитый роман Агаты Кристи! .Находившийся в Стамбуле великий сыщик Эркюль Пуаро возвращается в Англию на знаменитом \"Восточном экспрессе\", в котором вместе с ним едут, кажется, представители всех возможных национальностей. Один из пассажиров, неприятный американец по фамилии Рэтчетт, предлагает Пуаро стать своим телохранителем, поскольку считает, что его должны убить. Знаменитый бельгиец отмахивается от этой абсурдной просьбы. А на следующий день американца находят мертвым в своем купе, причем двери закрыты, а окно открыто. Пуаро немедленно берется за расследование - и выясняет, что купе полно всевозможных улик, указывающих… практически на всех пассажиров \"Восточного экспресса\". Вдобавок поезд наглухо застревает в снежных заносах в безлюдном месте. Пуаро необходимо найти убийцу до того, как экспресс продолжит свой путь… .',2023,'РОСМЭН','А. Кристи',0,0,320,13),(28,'Скотный двор','В книгу включена не только легендарная повесть-притча Оруэлла «Скотный Двор», но и эссе разных лет – «Литература и тоталитаризм», «Писатели и Левиафан», «Заметки о национализме» и другие.\nЧто привлекает читателя в художественной и публицистической прозе этого запретного в тоталитарных странах автора?\nВ первую очередь – острейшие проблемы политической и культурной жизни 40-х годов XX века, которые и сегодня продолжают оставаться актуальными. А также объективность в оценке событий и яркая авторская индивидуальность, помноженные на истинное литературное мастерство.',2023,'Neoclassic','Дж. Оруэлл',0,0,250,14),(29,'Приключения Шерлока Холмса','Артур Конан Дойл (1859-1930) – английский писатель, по образованию врач, автор приключенческих, исторических, фантастических и публицистических произведений. .Книги о гениальном лондонском сыщике Шерлоке Холмсе и его напарнике докторе Уотсоне принесли Конан Дойлу мировую известность и стали классикой детективного жанра. В общей сложности герой появляется в 57 рассказах и 4 повестях. Первое произведение о Шерлоке написано в 1887 г. – это повесть \"Этюд в багровых тонах\". Последний сборник – \"Архив Шерлока Холмса\" опубликован в 1927 г. .Английский писатель Гилберт Честертон назвал Холмса \"единственным литературным персонажем со времен Диккенса, который прочно вошел в жизнь и язык народа, став чем-то вроде Джонна Булля или Санта-Клауса\". . .В книгу включен первый авторский сборник рассказов о Холмсе \"Приключения Шерлока Холмса\" (1892 г.).',2024,'РОСМЭН','А. Дойл',18,4,350,15),(30,'Зеленая миля','Стивен Кинг приглашает читателей в жуткий мир тюремного блока смертников, откуда уходят, чтобы не вернуться, приоткрывает дверь последнего пристанища тех, кто преступил не только человеческий, но и Божий закон. По эту сторону электрического стула нет более смертоносного местечка! Ничто из того, что вы читали раньше, не сравнится с самым дерзким из ужасных опытов Стивена Кинга - с историей, что начинается на Дороге Смерти и уходит в глубины самых чудовищных тайн человеческой души...',2024,'Neoclassic','С. Кинг',15,3,370,16);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books_has_genres`
--

DROP TABLE IF EXISTS `books_has_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_has_genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_books_has_genres_books_id_books` (`books_id`),
  KEY `fk_books_has_genres_genres_id_genres` (`genres_id`),
  CONSTRAINT `fk_books_has_genres_books_id_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_books_has_genres_genres_id_genres` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_has_genres`
--

LOCK TABLES `books_has_genres` WRITE;
/*!40000 ALTER TABLE `books_has_genres` DISABLE KEYS */;
INSERT INTO `books_has_genres` VALUES (9,10,3),(13,13,4),(16,16,3),(19,18,5),(26,11,7),(27,12,4),(28,22,7),(31,29,5),(32,23,5),(33,21,3),(34,21,6),(35,30,3),(38,28,1),(39,28,3),(40,14,6);
/*!40000 ALTER TABLE `books_has_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covers`
--

DROP TABLE IF EXISTS `covers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(100) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `md5_hash` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covers`
--

LOCK TABLES `covers` WRITE;
/*!40000 ALTER TABLE `covers` DISABLE KEYS */;
INSERT INTO `covers` VALUES (1,'12.jpg','image/jpeg','fba787061738fa35aa758e1e659936e6'),(2,'21.jpg','image/jpeg','696ca4fe104dbe3b8d626f10475998e6'),(3,'33.jpg','image/jpeg','3318180202e3eec743f025edac1a642d'),(4,'44.jpg','image/jpeg','ade358ad0db20e0adc2d5368283027d0'),(5,'55.jpg','image/jpeg','a9bac61beeb310d0e368fc4e2088ba1a'),(6,'66.jpg','image/jpeg','672e260839423dbf9bbac8669deb3a89'),(8,'88.jpg','image/jpeg','88f06d70fde83f6421825a1e666675be'),(10,'1010.jpg','image/jpeg','143dd29ea2036a64c1a9f28c322da76b'),(11,'1111.jpg','image/jpeg','0bf3d7f39a3f6659c37ba9b304333ae6'),(12,'1212.jpg','image/jpeg','cc16f07020136ed1d04c5b4031b72771'),(13,'139.jpg','image/jpeg','b432b4cdbd33574a2e801d6651a9c113'),(14,'147.jpg','image/jpeg','463b7862162ce75bbb58d314d71a70b9'),(15,'1513.png','image/png','0e54f6020667050a9a3bfb4e2eb37f53'),(16,'1614.png','image/png','e4de231b40520d4da1d053e846d0737f');
/*!40000 ALTER TABLE `covers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Комедия'),(2,'Драма'),(3,'Фантастика'),(4,'Бизнес-литература'),(5,'Детектив'),(6,'Боевик'),(7,'Автобиография');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status_id` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_reviews_book_id_books` (`book_id`),
  KEY `fk_reviews_user_id_users` (`user_id`),
  KEY `fk_reviews_status_id_statuses` (`status_id`),
  CONSTRAINT `fk_reviews_book_id_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reviews_status_id_statuses` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_reviews_user_id_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (29,14,3,5,'Кинг хорош как всегда!','2024-06-15 21:02:25',2),(30,22,3,3,'Книга конечно интересная, но я ожидал большего(','2024-06-15 21:03:29',2),(31,14,4,4,'Не совсем то, что я ожидал от Кинга. Но книга интересная!','2024-06-15 21:08:48',2),(32,14,5,2,'Не знаю, чем эта книга нравится остальным. Меня не впечатлила вообще!','2024-06-15 21:09:56',2),(33,22,5,5,'Обожаю эту книгу! Лучше не напишешь)','2024-06-15 21:12:45',2),(34,29,5,5,'Просто одно из лучших произведений К. Дойла! Всем рекомендую.','2024-06-15 21:18:07',2),(35,30,5,5,'Всегда плачу в конце книги. Очень грустное произведение(','2024-06-15 21:20:07',2),(36,22,4,5,'Великий человек! Стоит прочесть каждому.','2024-06-15 21:22:02',2),(37,29,4,5,'Очень интересная книга!','2024-06-15 21:22:34',2),(38,30,4,5,'Легендарное произведение!','2024-06-15 21:22:57',2),(39,29,3,3,'Ну такое. Не люблю детективы.','2024-06-15 21:37:18',2),(40,30,3,5,'Кайф!!!','2024-06-15 21:37:42',2),(41,29,2,5,'Интересно','2024-06-15 22:42:51',1);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Администратор','Все права'),(2,'Модератор','Редактирование'),(3,'Пользователь','Чтение, написание рецензий.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'Обработка'),(2,'Одобрена'),(3,'Отклонена');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_role_id_roles` (`role_id`),
  CONSTRAINT `fk_users_role_id_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','scrypt:32768:8:1$stphpHLdqSWQzDHM$972f77bfd5e4b0c3943bd23255156dd82d28b74fc9dae5af436ba9a249fed0fbc8596245eca2051bfdf7811be9cf9187fbcd2dd15ad991849aed8adf1ce31a74','Овезов','Бегенч','Балышович',1),(2,'moderator','scrypt:32768:8:1$RCEjrIyPDYrnASOX$cb07b07580693938ad005c3b277144b0f64f91d2aec229dd7e0b1143bd6d1a53e34f7f8de9851c94d62163e013f82ea4fa7549385386d8766a6582bcd97a2749','Модераторов','Модератор','Модераторович',2),(3,'semen01','scrypt:32768:8:1$x1NDJO0ILl1tGtTb$dea59208f2ced778ee33041b71243a0dfe2b1185cb8c7817dc52d2dd2c418516611982011707181b410206b02077357ce4f9b56e82c159bb447c6bdb4e212015','Иванов','Семен','Олегович',3),(4,'oleg01','scrypt:32768:8:1$5QdP15B3xx0wTA2J$2e7908ec9e40165f11a938f264106895d18a9d9d6e0a7308eb0634ce2faac0fede4d57b55c11e12b9f66f78ecea21b7f7024e72108a5df047fc273d1d925c57a','Петров','Олег','Николаевич',3),(5,'ivan01','scrypt:32768:8:1$PTLeO3RPPcg4WNcC$18535a4f5ef1ba38919cc81dab057bf52ec14b5d826659bcda6a63f0730a722f1acd97bd98bd0108fe273af4adbad1d9cc95f675bb205b0f034f6b5efee5836d','Иванов','Иван','Иванович',3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-15 23:30:10
