DROP TRIGGER IF EXISTS liquibase_workshop.contact_BEFORE_INSERT;
CREATE TRIGGER `liquibase_workshop`.`contact_BEFORE_INSERT` BEFORE INSERT ON `contact` FOR EACH ROW BEGIN SET NEW.full_name = CONCAT_WS(' ', NEW.givenname, NEW.middleinitial, NEW.surname); END ;
