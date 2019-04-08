##########################################################Sujet 1
INSERT INTO departements VALUES (1, 'Production');
INSERT INTO departements VALUES (2, 'Marketing');
INSERT INTO departements VALUES (3, 'M�thode');
INSERT INTO departements VALUES (4, 'Recherche et developpement');

INSERT INTO employes VALUES (1,'Gauthier','Belfort','2011-09-06','2500','2');
INSERT INTO employes VALUES (2,'Peslier','Valdoie','2009-02-01','2800','1');
INSERT INTO employes VALUES (3,'Rousselet','Savoyeux','2010-05-15','2000','3');
INSERT INTO employes VALUES (4,'Perez','Besan�on','2009-02-01','1500','1');
INSERT INTO employes VALUES (5,'Benatti','Pont-de-Planches','2011-09-06','1900','3');
INSERT INTO employes VALUES (6,'Thiebaud','Frotey','2011-09-06','2000','1');
INSERT INTO employes VALUES (7,'Gauthier','Valdoie','2007-04-02','1900','3');
INSERT INTO employes VALUES (8,'Lambert' ,'Belfort','2012-03-01','2200','2');
INSERT INTO employes VALUES (9,'Dupond' ,'Besancon','2011-02-04','1800','1');
INSERT INTO employes VALUES (10,'Durand','Vesoul','2011-02-04','1200','1');
INSERT INTO employes VALUES (11,'Lapierre','Valdoie','2012-07-25','2000','1');
INSERT INTO employes VALUES (12,'Philippe','Belfort','2011-03-21','2200','2');


########################################################## Sujet 2

INSERT INTO localisations VALUES (1, 'Gymnase IUT');
INSERT INTO localisations VALUES (2, 'Gymnase du phare');
INSERT INTO localisations VALUES (3, 'Stade d athlétisme');
INSERT INTO localisations VALUES (4, 'Site du Malsaucy');
INSERT INTO localisations VALUES (5, 'Piscine');

INSERT INTO activites VALUES (1, 'pêche' , '2015-02-02','100.00', 'loisirs','2');
INSERT INTO activites VALUES (2, 'tir à l arc' , '2013-02-02','135', 'sport','4');
INSERT INTO activites VALUES (3, 'handball' , '2013-02-02','100.00', 'sport','1');
INSERT INTO activites VALUES (4, 'Atelier musique' , '2000-02-02', '200.00', 'loisirs','3');
INSERT INTO activites VALUES (5, 'cuisine' , '2015-02-02','250.00', 'loisirs', '4');
INSERT INTO activites VALUES (6, 'Football' , '2015-02-02','105.00', 'sport','3');
INSERT INTO activites VALUES (7, 'Musculation' , '2015-02-02', '100.00', 'sport','1');
INSERT INTO activites VALUES (8, 'Natation', '2014-10-25','180', 'sport', '5');
INSERT INTO activites VALUES (9, 'Tennis', '2015-02-01', '200', 'sport', '1');
INSERT INTO activites VALUES (10, 'Ping Pong', '2000-10-20', '130', 'sport','1');
INSERT INTO activites VALUES (11, 'Escalade', '2014-11-15', '100', 'sport', '2');
INSERT INTO activites VALUES (12, 'zumba', '2014-10-15','140', 'sport','1' );
INSERT INTO activites VALUES (13, 'Basketball', '2013-06-01','120', 'sport', '1');
INSERT INTO activites VALUES (14, 'Volley', '2013-05-08','125', 'sport', '1');




########################################################### Sujet 3


INSERT INTO clubs (idClub, nomClub, villeClub) VALUES (NULL, 'Paris SG', 'Paris');
INSERT INTO clubs (idClub, nomClub, villeClub) VALUES (NULL, 'Chelsea', 'Londres');
INSERT INTO clubs (idClub, nomClub, villeClub) VALUES (NULL, 'FC Barcelona', 'Barcelone');

INSERT INTO joueurs  VALUES (1, 'Hazard', 'Eden', '1991-01-07','1.90', 2);
INSERT INTO joueurs  VALUES (2, 'Messi', 'Lionel', '1987-06-24','1.68', 3);
INSERT INTO joueurs  VALUES (3, 'Matuidi', 'Blaise', '1987-04-09','1.90', 1);
INSERT INTO joueurs  VALUES (4, 'Fabregas', 'Cesc', '1987-05-04','1.80', 2);
INSERT INTO joueurs  VALUES (5, 'Courtois', 'Thibaut', '1992-05-11','1.90', 3);
INSERT INTO joueurs  VALUES (6, 'Pique', 'Gerard', '1987-02-02','1.750', 1);
INSERT INTO joueurs  VALUES (7, 'Terry', 'John', '1980-12-07','1.90', 2);
INSERT INTO joueurs  VALUES (8, 'Ibrahimovic', 'Zlatan', '1981-10-03','1.80', 1);
INSERT INTO joueurs  VALUES (9, 'Cahill', 'Gary', '1985-12-19','1.90', 2);
INSERT INTO joueurs  VALUES (10, 'Rakitic', 'Ivan', '1988-04-10','1.70', 3);
INSERT INTO joueurs  VALUES (11, 'Digne', 'Lucas', '1993-01-20','1.80', 1);
INSERT INTO joueurs  VALUES (12, 'Suarez', 'Luis', '1987-01-24','1.80', 3);


########################################################### Sujet  4
INSERT INTO categories VALUES (1, 'berline');
INSERT INTO categories VALUES (2, 'break');
INSERT INTO categories VALUES (3, 'suv');
INSERT INTO categories VALUES (4, 'monospace');
INSERT INTO categories VALUES (5, 'utilitaire');
INSERT INTO categories VALUES (6, 'citadine');
INSERT INTO categories VALUES (7, 'autre');

INSERT INTO voitures VALUES (1,'clio 3','2010-1-1','5000',1,4);
INSERT INTO voitures VALUES(null, 'BMW Serie 6 Gran Coupe', '2012-01-09', '118400',1,34);
INSERT INTO voitures VALUES(null, 'Mercedes Classe S', '2014-09-15', '181000',1, 50);
INSERT INTO voitures VALUES(null,'Audi RS6', '2013-11-07', '120600',2,64);
INSERT INTO voitures VALUES(null,'Porsche Panamera', '2013-04-25', '123965', 2, 35);
INSERT INTO voitures VALUES(null,'Range Rover Evoque', '2014-03-10', '50700', 3, 19);
INSERT INTO voitures VALUES(null,'Citroen C4 Picasso', '2013-06-04', '31150', 4, 8);
INSERT INTO voitures VALUES(null,'Ford S-Max', '2012-08-28', '38450', 4, 8);
INSERT INTO voitures VALUES(null,'Fiat Ducato', '2009-07-02', '24575', 5, 9);
INSERT INTO voitures VALUES(null,'Renault Kangoo', '2008-05-31', '19750', 5, 7);
INSERT INTO voitures VALUES(null,'Opel Adam', '2009-12-15', '18900', 6, 8);
INSERT INTO voitures VALUES(null,'Citroen DS3', '2010-02-17', '19490', 6, 9);
INSERT INTO voitures VALUES(null,'Dodge RAM 1500 V8 HEMI', '2015-03-26', '55800', 7, 30);


########################################################## Sujet 5


INSERT INTO typePlats VALUES (1, 'entr�e');
INSERT INTO typePlats VALUES (NULL, 'plat principal');
INSERT INTO typePlats VALUES (NULL, 'dessert');
INSERT INTO typePlats VALUES (NULL, 'plat unique');

insert into plats values (1,'Choucroute',12.5,'30','2014-10-10','petit plat l�ger alsacien','2');
insert into plats values (NULL,'Cassoulet',15,'60','2014-10-12',"plats du Sud Ouest",'2');
insert into plats values (NULL,'Baeckeoffe',17,'60','2013-09-21','plat alsacien','4');
insert into plats values (NULL,'Salade savoyarde',9.50,'10','2014-05-06','Ideal apr�s une randonn�e','1');
insert into plats values (NULL,'Tartiflette',13,'30','2014-04-08','plat savoyard','2');
insert into plats values (NULL,'b�che glac�e',7,'7','2014-04-08','glace 3 saveurs','3');

########################################################## Sujet 6

INSERT INTO genres VALUES (1, 'Comedie');
INSERT INTO genres VALUES (NULL, 'Science-Fiction');
INSERT INTO genres VALUES (NULL, 'Action');
INSERT INTO genres VALUES (NULL, 'Fantasy');
INSERT INTO genres VALUES (NULL, 'Animation');
INSERT INTO genres VALUES (NULL, 'Horreur');

INSERT INTO films VALUES (1,'Le diner de con', '1998-04-15', 'Francis Veber','1',90);
INSERT INTO films VALUES (NULL,'Intouchable', '2012-03-28', 'Eric Toledano','1',125);
INSERT INTO films VALUES (NULL,'Pi�ge de cristal', '1988-09-21', 'John McTiernan', '3',90);
INSERT INTO films VALUES (NULL,'THE Indiana Jones', '1989-10-18', 'Steven Spielberg', '2',125);
INSERT INTO films VALUES (NULL,'Blade Runner', '1982-09-15', 'Ridley Scott', '2',145);
INSERT INTO films VALUES (NULL,'Alien', '1979-09-12', 'Ridley Scott', '2',125);
INSERT INTO films VALUES (NULL,'L Exorciste', '2001-03-14', 'William Friedkin', '6',90);
INSERT INTO films VALUES (NULL,'Psychose', '1960-11-02', 'Alfred Hitchcock', '6',125);
INSERT INTO films VALUES (NULL,'Toy Story', '1996-03-27', 'John Lasseter', '5',90);
INSERT INTO films VALUES (NULL,'Shrek', '2001-07-04', 'Andrew Adamson ', '5',90);
INSERT INTO films VALUES (NULL,'La Communaut� de l anneau', '2001-12-19', 'Peter Jackson', '4',150);
INSERT INTO films VALUES (NULL,'Les Deux Tours', '2002-12-18', 'Peter Jackson', '4',152);
INSERT INTO films VALUES (NULL,'Le Retour du roi', '2003-12-17', 'Peter Jackson', '4',149);
INSERT INTO films VALUES (NULL,'Inception', '2010-07-08', 'Christopher Nolan', '2',90);
INSERT INTO films VALUES (NULL,'Warrior', '2011-09-14', 'Gavin O    Connor', '3',120);
INSERT INTO films VALUES (NULL,'Harry Potter � l �cole des sorciers', '2001-12-05', 'Chris Columbus', '4',125);
INSERT INTO films VALUES (NULL,'Harry Potter et la Chambre des secrets', '2002-12-04', 'Chris Columbus', '4',125);
INSERT INTO films VALUES (NULL,'Harry Potter et le Prisonnier d Azkaban', '2004-06-02', 'Alfonso Cuar�n', '4',125);
INSERT INTO films VALUES (NULL,'Harry Potter et la Coupe de feu', '2005-11-30',  'Mike Newell', '4',125);
INSERT INTO films VALUES (NULL,'Harry Potter et l Ordre du ph�nix', '2009-07-15',  'David Yates', '4',125);


########################################################### Sujet 7

INSERT INTO type_reparations VALUES (1, 'entretien');
INSERT INTO type_reparations VALUES (NULL, 'carrosserie');
INSERT INTO type_reparations VALUES (NULL, 'mecanique');
INSERT INTO type_reparations VALUES (NULL, 'autre');

insert into reparations values(1,'Vidange','RP-456-ZF','50','2014-10-15',1);
insert into reparations values(NULL,'Vidange','HK-856-SN','89','2005-05-06',1);
insert into reparations values(NULL,'Vidange','SD-479-EG','57','2007-08-08',1);
insert into reparations values(NULL,'Vidange','KU-458-VX','68','2007-04-13',1);
insert into reparations values(NULL,'Remplac. pare brise','LY-228-EY','250.00','2003-12-30',2);
insert into reparations values(NULL,'Remplac. pare brise','DS-865-KT','175.65','2011-05-06',2);
insert into reparations values(NULL,'r�vision','XG-554-DD','100','2010-03-01',1);
insert into reparations values(NULL,'r�vision','JK-103-DG','90','2001-05-06',1);
insert into reparations values(NULL,'Changement pneus','KU-458-VX','30.54','2007-04-13',1);
insert into reparations values(NULL,'Changement pneus','LY-228-EY','224.21','2009-12-30',1);
insert into reparations values(NULL,'Changement pneus','DS-865-KT','227.00','2011-05-06',1);
insert into reparations values(NULL,'Remplacement plaq. de frein','XG-554-DD','150','2010-03-01',1);
insert into reparations values(NULL,'Tambour freins arr.','CD-665-GZ','180','2012-05-06',3);
insert into reparations values(NULL,'Remplacement plaq. de frein','KU-458-VX','100','2007-04-13',1);
insert into reparations values(NULL,'Changement des cardans','LY-228-EY','1300','2009-12-30',3);
insert into reparations values(NULL,'Changement boite de vitesse','DS-865-KT','1400','2011-05-06',3);
insert into reparations values(NULL,'Remplac. courroie distribution','XG-554-DD','440','2010-03-01',3);
insert into reparations values(NULL,'Remplac. courroie distribution','JK-103-DG','460','2001-05-06',3);



########################################################### Sujet 8

INSERT INTO auteurs VALUES (1, 'Goscinny-Uderzo');
INSERT INTO auteurs VALUES (2, 'Roba-Rosy');
INSERT INTO auteurs VALUES (3, 'Herge');
INSERT INTO auteurs VALUES (4, 'Franquin - Delporte');

INSERT INTO bandeDessinees  VALUE (1,'Ast�rix et Ob�lix',1,'La serpe d or','tome 1','2005-10-09','7');
INSERT INTO bandeDessinees  VALUE (2,'Ast�rix et Ob�lix',1,'Asterix et les Goths','tome 2', '2011-10-10','10');
INSERT INTO bandeDessinees  VALUE (3,'Ast�rix et Ob�lix',1,'Asterix et les gladiateurs','tome 3', '2004-10-11','5');
INSERT INTO bandeDessinees  VALUE (4,'Ast�rix et Ob�lix',1,'Tour de Gaule d ast�rix','tome 4', '2005-09-10','8');
INSERT INTO bandeDessinees  VALUE (5,'Ast�rix et Ob�lix',1,'La zizanie','tome 15', '2014-09-10','15');
INSERT INTO bandeDessinees  VALUE (6,'Boule et Bill',2,'60 gags de Boule et Bill','tome 1','2010-10-11','10');
INSERT INTO bandeDessinees  VALUE (7,'Boule et Bill',2,'Papa, maman, Boule et... moi','tome 8','2005-10-11','10');
INSERT INTO bandeDessinees  VALUE (8,'Boule et Bill',2,'Une vie de chien !','tome 9','2012-10-11','20');
INSERT INTO bandeDessinees  VALUE (9,'Boule et Bill',2,'Attention chien marrant !','tome 10','2013-10-11','10');
INSERT INTO bandeDessinees  VALUE (10,'Boule et Bill',2,'Jeux de Bill','tome 11','2014-10-11 12:20','20');
INSERT INTO bandeDessinees  VALUE (11,'Tintin',3,'Tintin au pays des Soviets','tome 1','2005-10-11','10');
INSERT INTO bandeDessinees  VALUE (12,'Tintin',3,'Tintin au Congo','tome 2','2011-07-11','10');
INSERT INTO bandeDessinees  VALUE (13,'Tintin',3,'Tintin en Am�rique','tome 3','2012-10-11','10');
INSERT INTO bandeDessinees  VALUE (14,'Tintin',3,'Les Cigares du pharaon','tome 4','2005-10-13','20');
INSERT INTO bandeDessinees  VALUE (15,'Tintin',3,'Le lotus bleu','tome 5','2014-10-13','20');
INSERT INTO bandeDessinees  VALUE (16,'Gaston Lagaffe',4,'Gare aux gaffes','tome 1','2010-12-03','10');
INSERT INTO bandeDessinees  VALUE (17,'Gaston Lagaffe',4,'Gala de gaffes','tome 2','2012-09-06','10');
INSERT INTO bandeDessinees  VALUE (18,'Gaston Lagaffe',4,'Gaffes � gogo','tome 3','2014-08-06','8');
INSERT INTO bandeDessinees  VALUE (19,'Gaston Lagaffe',4,'Gaffes en gros','tome 4','2013-04-06','10');
INSERT INTO bandeDessinees  VALUE (20,'Gaston Lagaffe',4,'Les gaffes d un gars gonfl�','tome 5','2005-03-06','8');

########################################################### Sujet 9


INSERT INTO salles VALUES (1, 'Alpha');
INSERT INTO salles VALUES (2, 'Mac');
INSERT INTO salles VALUES (3, 'DEC');

INSERT INTO ordinateurs  VALUES (1,'HP','HP-1','4','2012-02-15',1);
INSERT INTO ordinateurs  VALUES (2,'HP','HP-2','4','2012-02-15',1);
INSERT INTO ordinateurs  VALUES (3,'HP','HP-3','4','2012-02-15',1);
INSERT INTO ordinateurs  VALUES (4,'HP','HP-4','4','2012-02-15',1);
INSERT INTO ordinateurs  VALUES (5,'HP','HP-5','4','2014-02-15',1);
INSERT INTO ordinateurs  VALUES (6,'HP','HP-6','4','2014-02-15',1);
INSERT INTO ordinateurs  VALUES (7,'Apple','iMac3','4','2010-10-16',2);
INSERT INTO ordinateurs  VALUES (8,'Apple','iMac1','4','2010-10-16',2);
INSERT INTO ordinateurs  VALUES (9,'Apple','iMac2','4','2010-10-16',2);
INSERT INTO ordinateurs  VALUES (10,'Apple','iMac4','16','2013-01-30',2);
INSERT INTO ordinateurs  VALUES (11,'Apple','MacPro2','32','2015-01-30',2);
INSERT INTO ordinateurs  VALUES (12,'Apple','MacPro1','32','2015-01-30',2);
INSERT INTO ordinateurs  VALUES (13,'Apple','iMac7','16','2013-01-30',2);
INSERT INTO ordinateurs  VALUES (14,'Apple','iMac8','8','2013-01-30',2);
INSERT INTO ordinateurs  VALUES (17,'Dell','Dell-1','4','2012-07-10',3);
INSERT INTO ordinateurs  VALUES (18,'Dell','Dell-2','4','2012-07-10',3);
INSERT INTO ordinateurs  VALUES (19,'Dell','Dell-3','4','2012-07-10',3);
INSERT INTO ordinateurs  VALUES (20,'Dell','Dell-4','4','2012-07-10',3);
INSERT INTO ordinateurs  VALUES (21,'Asus','Asus-6','8','2013-11-02',3);
INSERT INTO ordinateurs  VALUES (22,'Asus','Asus-7','8','2014-11-02',3);
INSERT INTO ordinateurs  VALUES (23,'Asus','Asus-8','8','2014-11-02',3);
INSERT INTO ordinateurs  VALUES (24,'Asus','Asus-9','8','2014-11-02',3);
INSERT INTO ordinateurs  VALUES (25,'MSI','MSI-1','8','2013-02-18',3);
INSERT INTO ordinateurs  VALUES (26,'MSI','MSI-2','8','2013-02-18',3);
INSERT INTO ordinateurs  VALUES (27,'MSI','MSI-3','8','2013-02-18',3);
INSERT INTO ordinateurs  VALUES (28,'MSI','MSI-4','8','2013-02-18',3);

########################################################### Sujet 10

INSERT INTO type_commercants VALUES (1, 'Boucherie');
INSERT INTO type_commercants VALUES (2, 'Boulangerie');
INSERT INTO type_commercants VALUES (3, 'Maraicher');
INSERT INTO type_commercants VALUES (4, 'Fromagerie');

insert into commercants values (1,'Boucherie Rousselet','2010-1-1','500',1);
insert into commercants values (2,'Boulanger Peslier','2009-1-1','600',2);
insert into commercants values (3,'Patisserie Perez','2014-1-1','600',2);
insert into commercants values (4,'Maraicher Ravier','2014-1-1','600',3);
insert into commercants values (5,'Bon Pain Woltz','2013-1-1','700',2);
insert into commercants values (6,'Caly Maraicher','2014-1-1','600',3);
insert into commercants values (7,'Boucherie Caly','2013-1-1','600',1);
insert into commercants values (8,'Fromagerie mervant','2013-1-1','600',4);
insert into commercants values (9,'Boulangerie Laure','2013-1-1','800',2);
insert into commercants values (10,'Boucherie Laurent','2013-1-1','800',1);
insert into commercants values (11,'Fromagerie dupuis','2014-1-1','600',4);

########################################################### Sujet  11

INSERT INTO categorieDepenses  VALUES (1, 'Autoroute');
INSERT INTO categorieDepenses  VALUES (2, 'Carburant');
INSERT INTO categorieDepenses  VALUES (3, 'Repas');
INSERT INTO categorieDepenses  VALUES (4, 'Hebergement');


INSERT INTO depenses  VALUES (1, '35', 'P�ages Belfort-Lyon', '2014-04-20', 1);
INSERT INTO depenses  VALUES (2, '410.47', 'Comit� de direction', '2014-07-03', 3);
INSERT INTO depenses  VALUES (3, '120', 'rencontre Acrobtic', '2014-08-18', 3);
INSERT INTO depenses  VALUES (4, '25.5', 'P�ages Paris-Nantes', '2014-07-28', 1);
INSERT INTO depenses  VALUES (5, '45', 'Sans plomb 95 35L', '2014-04-14', 2);
INSERT INTO depenses  VALUES (6, '842', 'Hotel Hilton Paris', '2014-01-06', 4);
INSERT INTO depenses  VALUES (7, '42.00', 'P�ages Belfort-Paris', '2014-12-07', 4);
INSERT INTO depenses  VALUES (8, '75', 'Diezel 60L', '2014-10-31', 2);

########################################################### Sujet  12

insert into theatres values (NULL,"Le Granit","1 faubourg de Montb�liard 90000 Belfort","0384586767");
insert into theatres values (NULL,"Akt�on","11 rue du G�n�ral-Blaise 70000 Paris","0143387462");
insert into theatres values (NULL,"Th��tre National de Strasbourg","1 Avenue de la Marseillaise 67005 Strasbourg","0388248800");
insert into theatres values (NULL,"Les deux sc�nes","49 Rue Megevand 25000 Besan�on","0381878197");

insert into spectacles values (1,"LE PRINCE (Tous les hommes sont m�chants)","2014-10-14","9",1);
insert into spectacles values (2,"Le chemin du sepent","2014-10-18","8",1);
insert into spectacles values (3,"Le cabinet des curiosit�s","2014-11-13","12",2);
insert into spectacles values (4,"Trois actrice dont une","2014-11-16","10",2);
insert into spectacles values (5,"Ainsi se laissa t-il vivre","2014-11-08","13",3);
insert into spectacles values (6,"Lancelot du lac","2014-12-02","15",3);
insert into spectacles values (7,"Si oui, oui, sinon, non","2014-11-04","12",3);
insert into spectacles values (8,"Tiger tiger burning bright","2014-10-16","15",4);

########################################################### Sujet  13
INSERT INTO stations (idStation, nomStation, altitude) VALUES
(1, 'OZAN', 206),
(NULL, 'CORMORANCHE-SUR-SAONE', 211),
(NULL, 'PLAGNE', 922),
(NULL, 'TOSSIAT', 501),
(NULL, 'POUILLAT', 770);

INSERT INTO hotels VALUES (1, 'Le saint joseph ', 16, 2, '2017-02-03', 1);
INSERT INTO hotels VALUES (NULL, 'La castana', 83, 3, '2017-04-28', 2);
INSERT INTO hotels VALUES (NULL, 'Grand Baraille', 46, 3, '2017-04-05', 3);
INSERT INTO hotels VALUES (NULL, 'Pershing hall', 26, 4, '2017-04-29', 4);
INSERT INTO hotels VALUES (NULL, 'Villa Gallici', 470, 1, '2017-04-30', 5);
INSERT INTO hotels VALUES (NULL, 'Mandarin oriental party', 14, 4, '2017-04-29', 1);
INSERT INTO hotels VALUES (NULL, 'Roch hotel et spa', 71, 4, '2017-04-30', 2);
INSERT INTO hotels VALUES (NULL, 'Villa lara', 570, 1, '2017-04-23', 3);
INSERT INTO hotels VALUES (NULL, 'La reserve', 6, 5, '2017-04-24', 4);
INSERT INTO hotels VALUES (NULL, 'residence de france', 65, 5, '2017-04-29', 1);
INSERT INTO hotels VALUES (NULL, 'antibes les beau pr�s', 36, 4, '2017-04-21', 2);
INSERT INTO hotels VALUES (NULL, 'le savoie', 585, 1, '2017-04-18', 3);
INSERT INTO hotels VALUES (NULL, 'hotel juana', 68, 3, '2017-04-16', 4);
INSERT INTO hotels VALUES (NULL, 'le sereno', 455, 3, '2017-04-14', 5);

########################################################### Sujet  14

INSERT INTO types VALUES (1, 'Pantalon');
INSERT INTO types VALUES (NULL, 'Short');
INSERT INTO types VALUES (NULL, 'Chemise');
INSERT INTO types VALUES (NULL, 'Veste');
INSERT INTO types VALUES (NULL, 'Tee-Shirt');
INSERT INTO types VALUES (NULL, 'Chaussette');
INSERT INTO types VALUES (NULL, 'Sous-vetements');

INSERT INTO vetements VALUES (1, 'Jeans noir Lee' , 55, 40, '2017-01-15',1);
INSERT INTO vetements VALUES (NULL, 'Pantalon velour bleu NafNaf' , 65, 38, '2017-01-15',1);
INSERT INTO vetements VALUES (NULL, 'Bermuda Rouge Puma' , 35, 38, '2017-01-15',2);
INSERT INTO vetements VALUES (NULL, 'Veste Cuir Noir' , 235, 38, '2017-01-15',4);
INSERT INTO vetements VALUES (NULL, 'Chaussette Montagne Salomon ' , 15, 40, '2017-01-15',6);
INSERT INTO vetements VALUES (NULL, 'Slip arena' , 15, 40, '2017-01-15',7);

########################################################### Sujet  15

INSERT INTO typeOutils (libelle) VALUES
	('mecanique'),
	('jardin'),
	('plomberie');

INSERT INTO outils (nomOutil, poid, electrique, idTypeOutil) VALUES
	('tournevis', 200, 'n', 1),
	('perceuse', 1500, 'o', 1),
	('tondeuse', 15000, 'o', 2),
	('d�broussailleuse', 5000, 'o', 2),
	('tuyau', 250, 'n', 3),
	('chalumeau', 1500, 'n', 3);