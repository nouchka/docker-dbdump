DROP TABLE IF EXISTS `wp_dharma_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_dharma_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_dharma_terms`
--

LOCK TABLES `wp_dharma_terms` WRITE;
/*!40000 ALTER TABLE `wp_dharma_terms` DISABLE KEYS */;
INSERT INTO `wp_dharma_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Work','work',0),(3,'Culture','culture',0),(4,'Friends','friends',0),(5,'Perso','perso',0),(6,'Outside','outside',0),(7,'Live','live',0),(10,'Inside','inside',0),(11,'Tech','tech',0),(13,'Travel','travel',0),(14,'Book','book',0),(17,'Movie','movie',0),(24,'Politics','politics',0),(31,'Life','life',0),(32,'Other','other',0),(33,'Donate','donate',0),(34,'Feeds share','feeds-share',0),(35,'GGT','ggt',0);
/*!40000 ALTER TABLE `wp_dharma_terms` ENABLE KEYS */;
UNLOCK TABLES;
