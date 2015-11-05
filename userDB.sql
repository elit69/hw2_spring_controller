/*
Navicat PGSQL Data Transfer

Source Server         : asdf
Source Server Version : 90303
Source Host           : localhost:5432
Source Database       : userDB
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90303
File Encoding         : 65001

Date: 2015-11-05 14:07:13
*/


-- ----------------------------
-- Sequence structure for tbuser_id_seq
-- ----------------------------
DROP SEQUENCE "tbuser_id_seq";
CREATE SEQUENCE "tbuser_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 100
 CACHE 1;
SELECT setval('"public"."tbuser_id_seq"', 100, true);

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS "tbuser";
CREATE TABLE "tbuser" (
"id" int4 DEFAULT nextval('tbuser_id_seq'::regclass) NOT NULL,
"username" varchar(100) COLLATE "default",
"email" varchar(100) COLLATE "default",
"password" varchar(100) COLLATE "default",
"birthdate" timestamp(6),
"registerdate" timestamp(6),
"image" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
BEGIN;
INSERT INTO "tbuser" VALUES ('1', 'Carlos', 'erat.Etiam.vestibulum@Cumsociis.edu', '31-480', '2015-09-27 18:11:24', '2016-04-04 01:52:49', 'Wade Parker');
INSERT INTO "tbuser" VALUES ('2', 'Isaac', 'parturient@adipiscinglobortisrisus.ca', '1169', '2015-07-10 04:20:22', '2015-04-28 00:24:12', 'Raymond Cotton');
INSERT INTO "tbuser" VALUES ('3', 'Alec', 'Integer@consequat.edu', '70863', '2016-10-01 17:23:19', '2016-10-30 00:38:43', 'Edan Jacobson');
INSERT INTO "tbuser" VALUES ('4', 'Bruno', 'mattis.semper@arcuvel.ca', 'D42 4MR', '2016-06-15 21:28:26', '2015-06-22 20:33:38', 'Nehru Campbell');
INSERT INTO "tbuser" VALUES ('5', 'Simon', 'nulla.In@egestasadui.net', 'K0Q 2UM', '2016-07-12 04:21:53', '2016-09-05 02:11:01', 'Joshua Dudley');
INSERT INTO "tbuser" VALUES ('6', 'Ross', 'molestie.dapibus.ligula@euismod.ca', 'N9T 5L6', '2015-03-30 21:48:34', '2015-06-12 22:50:07', 'Michael Spears');
INSERT INTO "tbuser" VALUES ('7', 'Steel', 'Nulla.facilisi@quisdiamluctus.com', '524899', '2015-02-22 16:21:27', '2016-10-14 15:23:23', 'Byron Aguilar');
INSERT INTO "tbuser" VALUES ('8', 'Keaton', 'Vivamus.sit@id.edu', 'G4L 5V3', '2016-06-05 20:59:26', '2016-09-28 18:13:59', 'Honorato Best');
INSERT INTO "tbuser" VALUES ('9', 'Stewart', 'et.libero@eumetus.co.uk', '54642', '2015-06-18 00:31:04', '2016-07-18 18:08:21', 'Bruno Preston');
INSERT INTO "tbuser" VALUES ('10', 'Ezra', 'volutpat.Nulla.facilisis@DonecfringillaDonec.com', '84-259', '2015-10-28 01:52:05', '2015-01-24 14:21:46', 'Blake Holcomb');
INSERT INTO "tbuser" VALUES ('11', 'Duncan', 'Nulla@mi.org', '51008', '2015-02-26 07:09:26', '2016-07-16 00:42:46', 'Adam Franklin');
INSERT INTO "tbuser" VALUES ('12', 'Eric', 'ipsum.porta.elit@Aeneaneget.edu', '41309', '2015-11-14 09:44:52', '2015-07-24 04:21:18', 'Malik Johnston');
INSERT INTO "tbuser" VALUES ('13', 'Wesley', 'tincidunt@nuncidenim.edu', '40214', '2015-07-19 22:49:15', '2014-12-31 08:26:17', 'Tucker Clark');
INSERT INTO "tbuser" VALUES ('14', 'Channing', 'lectus.sit@dignissimmagnaa.ca', '71-588', '2016-04-06 23:17:22', '2015-01-29 06:13:29', 'Armando Holmes');
INSERT INTO "tbuser" VALUES ('15', 'Reed', 'accumsan.neque.et@convallis.net', '4001XB', '2015-11-20 02:22:27', '2015-05-16 13:28:12', 'Mannix Nash');
INSERT INTO "tbuser" VALUES ('16', 'Kermit', 'Donec.vitae@etmagnisdis.ca', 'S9 3KU', '2015-12-02 11:33:36', '2016-04-29 23:10:10', 'Blaze Randall');
INSERT INTO "tbuser" VALUES ('17', 'Timon', 'nibh@nibhPhasellus.ca', '01740', '2015-09-28 14:10:13', '2016-10-23 21:24:53', 'Kamal Perez');
INSERT INTO "tbuser" VALUES ('18', 'Gary', 'sapien@ametfaucibusut.ca', 'S2E 7P4', '2016-02-14 02:41:08', '2016-03-07 17:43:26', 'Kaseem Lott');
INSERT INTO "tbuser" VALUES ('19', 'Ira', 'malesuada.vel@maurisidsapien.com', '6935TU', '2014-11-25 08:47:49', '2016-03-30 15:04:24', 'Kadeem Sanders');
INSERT INTO "tbuser" VALUES ('20', 'Alfonso', 'non@ultricesposuerecubilia.ca', '14077', '2015-05-20 15:24:02', '2015-06-10 01:59:41', 'Gray Winters');
INSERT INTO "tbuser" VALUES ('21', 'Christian', 'aliquet.odio.Etiam@egestaslaciniaSed.net', 'DP77 4UX', '2015-01-11 03:21:29', '2016-06-11 05:01:32', 'Tucker Atkinson');
INSERT INTO "tbuser" VALUES ('22', 'Leonard', 'taciti.sociosqu@luctusfelispurus.org', '314000', '2016-03-22 03:13:13', '2015-11-09 00:52:14', 'Kadeem Good');
INSERT INTO "tbuser" VALUES ('23', 'Amery', 'porta.elit@afelis.org', '01108', '2015-04-05 03:30:20', '2015-10-13 03:29:16', 'Jared Mack');
INSERT INTO "tbuser" VALUES ('24', 'Knox', 'urna@montesnasceturridiculus.com', '54822', '2015-11-06 02:14:58', '2015-07-18 20:55:23', 'Gary Owen');
INSERT INTO "tbuser" VALUES ('25', 'Merrill', 'venenatis@Etiamvestibulummassa.org', '9107SD', '2016-01-07 08:19:36', '2016-10-21 20:43:08', 'Louis Roberson');
INSERT INTO "tbuser" VALUES ('26', 'Vance', 'tortor.dictum@Nullaeu.net', '2722', '2016-02-08 04:52:53', '2015-09-24 17:28:39', 'Raymond Logan');
INSERT INTO "tbuser" VALUES ('27', 'Fulton', 'egestas.Aliquam.nec@nonummy.com', '55-444', '2015-11-21 06:31:17', '2016-07-06 15:08:51', 'Emmanuel Austin');
INSERT INTO "tbuser" VALUES ('28', 'Samson', 'a.arcu@dolornonummyac.com', '6365', '2014-12-04 14:49:54', '2015-07-25 12:38:59', 'Lawrence Coleman');
INSERT INTO "tbuser" VALUES ('29', 'Wyatt', 'nec@elitAliquamauctor.org', '5313', '2016-04-19 20:04:00', '2015-06-25 18:09:38', 'Lamar Meyer');
INSERT INTO "tbuser" VALUES ('30', 'Dante', 'ornare@tinciduntnibh.co.uk', '92-082', '2016-03-18 22:09:52', '2015-03-28 14:10:37', 'Ashton Yang');
INSERT INTO "tbuser" VALUES ('31', 'Gareth', 'non@senectuset.net', '49351', '2015-07-23 11:00:37', '2014-11-16 18:20:45', 'Nigel Rodgers');
INSERT INTO "tbuser" VALUES ('32', 'Ciaran', 'tristique.neque@erosNam.com', '88932', '2015-02-06 03:03:06', '2016-09-09 05:11:16', 'Basil Compton');
INSERT INTO "tbuser" VALUES ('33', 'Barclay', 'et@ornarefacilisiseget.com', '40018', '2015-05-23 08:01:19', '2015-02-15 01:43:31', 'Curran Russo');
INSERT INTO "tbuser" VALUES ('34', 'Rigel', 'lectus.pede.ultrices@parturientmontesnascetur.co.uk', '54921', '2016-05-05 15:30:29', '2016-07-24 19:09:41', 'Graiden Wyatt');
INSERT INTO "tbuser" VALUES ('35', 'Colin', 'ultricies.ligula@tellusimperdiet.ca', '8728', '2014-11-12 19:46:01', '2015-12-01 04:23:33', 'Allistair Sampson');
INSERT INTO "tbuser" VALUES ('36', 'Keegan', 'aliquam.iaculis.lacus@Aliquamultricesiaculis.com', '8194', '2014-12-18 21:45:10', '2015-07-23 19:09:57', 'Uriah Reese');
INSERT INTO "tbuser" VALUES ('37', 'Kevin', 'purus.Maecenas.libero@luctus.com', '3472', '2016-08-26 10:56:39', '2015-11-24 13:06:35', 'Erich Hill');
INSERT INTO "tbuser" VALUES ('38', 'Philip', 'Duis.dignissim@Maurisquisturpis.edu', '73869', '2015-07-04 12:48:17', '2014-12-16 12:09:13', 'Barrett Frederick');
INSERT INTO "tbuser" VALUES ('39', 'Barry', 'dolor.sit@aliquet.edu', '8031', '2016-10-27 21:59:31', '2014-12-21 06:10:44', 'Tanner Meyer');
INSERT INTO "tbuser" VALUES ('40', 'Addison', 'faucibus.ut@vitaeposuere.co.uk', 'XV71 8BY', '2016-08-18 08:10:32', '2016-10-06 07:16:42', 'Reed Hardy');
INSERT INTO "tbuser" VALUES ('41', 'Thor', 'fringilla@acurna.ca', '23761', '2016-01-08 10:20:05', '2015-03-17 07:37:44', 'Erich Valencia');
INSERT INTO "tbuser" VALUES ('42', 'Channing', 'faucibus@sit.org', '25385', '2015-02-28 07:43:32', '2016-09-11 11:52:32', 'Drake Richardson');
INSERT INTO "tbuser" VALUES ('43', 'Anthony', 'ac.mattis@nullaDonecnon.edu', '3120KU', '2016-03-19 13:00:56', '2016-05-02 05:49:09', 'Ulric Russo');
INSERT INTO "tbuser" VALUES ('44', 'Quentin', 'sed@tortorIntegeraliquam.net', '83476', '2015-02-17 04:50:40', '2015-04-12 17:35:18', 'Aristotle Nelson');
INSERT INTO "tbuser" VALUES ('45', 'Oscar', 'mi@purusinmolestie.org', '80093', '2015-08-17 03:40:36', '2016-03-11 13:03:49', 'Kirk Brooks');
INSERT INTO "tbuser" VALUES ('46', 'Hedley', 'tristique@malesuadaiderat.org', '0281', '2016-06-22 16:24:36', '2015-01-11 12:25:06', 'Ferris Mendoza');
INSERT INTO "tbuser" VALUES ('47', 'Boris', 'arcu.ac.orci@acrisus.com', 'L6Y 3A8', '2014-11-16 11:06:39', '2016-10-20 20:06:17', 'Gil Perez');
INSERT INTO "tbuser" VALUES ('48', 'Shad', 'amet.metus@senectus.org', '3114', '2016-02-23 06:00:33', '2015-12-09 23:01:06', 'Steel Dawson');
INSERT INTO "tbuser" VALUES ('49', 'Kenneth', 'scelerisque.lorem@lorem.edu', '21596', '2015-09-04 07:37:08', '2016-09-16 03:37:43', 'Uriel Morris');
INSERT INTO "tbuser" VALUES ('50', 'Wallace', 'Cras@diam.ca', 'A3Y 6K4', '2015-08-12 21:54:25', '2016-07-13 10:46:35', 'Leo Mckay');
INSERT INTO "tbuser" VALUES ('51', 'Zahir', 'Cras@dignissimtemporarcu.com', '21512', '2015-07-04 15:20:51', '2015-05-05 13:07:32', 'Brenden Lewis');
INSERT INTO "tbuser" VALUES ('52', 'Hector', 'laoreet.libero.et@eliterat.com', '11197', '2015-04-11 02:02:33', '2015-03-04 21:41:06', 'Brandon Beard');
INSERT INTO "tbuser" VALUES ('53', 'Mason', 'est@sit.co.uk', '50893', '2015-05-23 21:38:07', '2015-08-07 16:23:36', 'Holmes Acevedo');
INSERT INTO "tbuser" VALUES ('54', 'Chandler', 'Sed.malesuada@Quisquefringillaeuismod.org', '48672', '2015-09-13 08:29:49', '2015-06-08 08:11:52', 'Vaughan Rivers');
INSERT INTO "tbuser" VALUES ('55', 'Ivan', 'fermentum.metus.Aenean@sedconsequat.edu', '109508', '2015-12-04 15:35:40', '2015-07-19 17:48:33', 'Eagan Forbes');
INSERT INTO "tbuser" VALUES ('56', 'Barry', 'turpis.non.enim@ut.ca', '68614-993', '2015-04-17 10:36:18', '2015-06-01 08:26:37', 'Tyler Dodson');
INSERT INTO "tbuser" VALUES ('57', 'Tate', 'enim.consequat.purus@sedestNunc.ca', '01879-764', '2015-02-07 16:03:42', '2015-01-22 02:57:10', 'Ezra Ellison');
INSERT INTO "tbuser" VALUES ('58', 'Coby', 'magna.a.neque@ametdapibus.ca', '02341-271', '2016-06-12 04:56:01', '2016-04-14 18:14:33', 'Orlando Black');
INSERT INTO "tbuser" VALUES ('59', 'Cain', 'inceptos.hymenaeos.Mauris@disparturient.ca', '48024', '2015-09-04 11:41:17', '2015-10-03 19:19:56', 'Wallace Schmidt');
INSERT INTO "tbuser" VALUES ('60', 'Timothy', 'vel@congue.net', '66309', '2016-02-18 14:41:39', '2015-04-15 07:19:31', 'Len Harvey');
INSERT INTO "tbuser" VALUES ('61', 'Ali', 'sed.facilisis.vitae@ProinvelitSed.edu', '550116', '2016-03-13 17:14:36', '2014-12-12 12:55:20', 'Silas Newton');
INSERT INTO "tbuser" VALUES ('62', 'George', 'sem@necleo.ca', '496441', '2015-03-20 00:04:39', '2015-12-26 02:44:03', 'Lev French');
INSERT INTO "tbuser" VALUES ('63', 'Fritz', 'Sed.eget.lacus@hendreritDonecporttitor.ca', '87162', '2015-09-01 12:41:17', '2016-03-18 10:15:11', 'Kuame Puckett');
INSERT INTO "tbuser" VALUES ('64', 'Melvin', 'Sed.nunc@tempuseuligula.ca', '8389', '2015-10-11 12:37:45', '2015-11-29 02:41:51', 'Hakeem Eaton');
INSERT INTO "tbuser" VALUES ('65', 'Edward', 'elementum.dui@velest.ca', '571550', '2015-06-28 19:14:23', '2015-03-26 20:35:38', 'Alan Simpson');
INSERT INTO "tbuser" VALUES ('66', 'Jarrod', 'neque@risusMorbi.co.uk', '1231', '2015-04-28 20:39:02', '2016-06-28 00:12:22', 'Maxwell Kramer');
INSERT INTO "tbuser" VALUES ('67', 'Aladdin', 'aliquam@placeratCrasdictum.edu', '94690', '2014-12-26 18:47:19', '2016-07-19 17:54:37', 'Geoffrey Bell');
INSERT INTO "tbuser" VALUES ('68', 'Colton', 'tortor@Suspendissenon.net', '170961', '2014-12-19 12:58:26', '2015-03-05 23:42:58', 'Rajah Dominguez');
INSERT INTO "tbuser" VALUES ('69', 'Jason', 'Cras.lorem.lorem@tempus.ca', '547626', '2015-07-13 10:30:38', '2015-05-12 15:14:36', 'Nasim Olson');
INSERT INTO "tbuser" VALUES ('70', 'Jin', 'cursus@euplacerat.com', '197751', '2016-04-26 13:48:11', '2016-05-03 14:46:03', 'Dante Harris');
INSERT INTO "tbuser" VALUES ('71', 'Geoffrey', 'mattis@adipiscingelit.org', 'NL5Y 8TN', '2015-12-18 21:29:32', '2016-08-10 06:46:55', 'Plato Sanchez');
INSERT INTO "tbuser" VALUES ('72', 'Tyrone', 'euismod.est@atortorNunc.net', '98954', '2016-08-15 21:10:32', '2015-02-24 08:41:29', 'Upton Frank');
INSERT INTO "tbuser" VALUES ('73', 'Jonah', 'libero@etlaciniavitae.co.uk', '986164', '2016-02-07 15:10:32', '2016-07-14 09:20:43', 'Vladimir Witt');
INSERT INTO "tbuser" VALUES ('74', 'Stuart', 'mi.ac@malesuadaiderat.ca', '96815', '2014-12-27 03:00:32', '2014-11-13 10:20:27', 'Fuller Lang');
INSERT INTO "tbuser" VALUES ('75', 'Jameson', 'at.nisi@nunc.org', '10953', '2016-06-16 23:40:08', '2016-09-30 18:19:55', 'Erich Carver');
INSERT INTO "tbuser" VALUES ('76', 'Gareth', 'condimentum.Donec.at@Maurisnondui.edu', '93299', '2016-10-02 15:45:41', '2014-12-16 06:12:26', 'Plato Reilly');
INSERT INTO "tbuser" VALUES ('77', 'Justin', 'a.felis@arcu.edu', '787296', '2014-12-06 13:03:20', '2016-09-07 21:24:39', 'Aquila Craft');
INSERT INTO "tbuser" VALUES ('78', 'Caldwell', 'eu@massanonante.edu', 'B2W 1Z7', '2016-09-06 02:20:32', '2016-08-16 04:55:22', 'Cullen Wong');
INSERT INTO "tbuser" VALUES ('79', 'Micah', 'tempor.lorem.eget@nequeseddictum.net', '16717', '2016-10-29 01:48:18', '2015-06-23 15:10:53', 'Dante Petty');
INSERT INTO "tbuser" VALUES ('80', 'Quinn', 'eget.dictum.placerat@ultricies.com', '61412', '2015-05-23 00:00:49', '2015-04-14 06:28:04', 'Victor Reed');
INSERT INTO "tbuser" VALUES ('81', 'Dante', 'iaculis@conubia.com', '5659', '2015-08-03 15:37:20', '2016-02-13 01:27:42', 'Cooper Walsh');
INSERT INTO "tbuser" VALUES ('82', 'Mannix', 'ornare.lectus@molestiedapibus.org', 'N5K 7Z3', '2014-12-03 04:33:31', '2016-05-12 23:00:11', 'Forrest Booker');
INSERT INTO "tbuser" VALUES ('83', 'Orson', 'Nunc.lectus.pede@blanditNam.edu', '44532', '2015-03-08 10:34:33', '2015-01-15 13:47:28', 'Tucker Craig');
INSERT INTO "tbuser" VALUES ('84', 'Benjamin', 'lectus@urna.net', '173585', '2016-08-27 09:18:23', '2015-07-10 12:02:17', 'Axel Moon');
INSERT INTO "tbuser" VALUES ('85', 'Zane', 'nisi.Cum@parturientmontes.edu', '761855', '2016-03-27 00:04:18', '2015-09-28 22:29:49', 'Sebastian Shepherd');
INSERT INTO "tbuser" VALUES ('86', 'Ulric', 'nulla@urna.com', '21710-639', '2015-09-19 22:58:10', '2015-03-01 08:07:43', 'Wylie Sharp');
INSERT INTO "tbuser" VALUES ('87', 'Brody', 'morbi.tristique.senectus@in.co.uk', '52458', '2014-12-14 22:09:47', '2015-03-11 03:52:05', 'Hakeem Roberts');
INSERT INTO "tbuser" VALUES ('88', 'Chase', 'eu.enim@Namacnulla.org', '4991', '2016-07-13 19:49:57', '2015-08-01 05:21:02', 'Dale Griffith');
INSERT INTO "tbuser" VALUES ('89', 'Merritt', 'scelerisque.dui@eu.ca', '70215', '2015-09-12 15:47:39', '2015-07-11 21:48:36', 'Hakeem Blevins');
INSERT INTO "tbuser" VALUES ('90', 'Jakeem', 'aliquet.lobortis@ligulaAliquamerat.co.uk', '4463', '2016-10-16 08:37:13', '2016-04-30 19:07:51', 'Bevis Myers');
INSERT INTO "tbuser" VALUES ('91', 'Dennis', 'libero.dui@nec.org', 'L3J 4N1', '2014-11-20 18:09:59', '2015-05-12 06:32:41', 'Garth Bryan');
INSERT INTO "tbuser" VALUES ('92', 'Rudyard', 'diam.nunc@MorbimetusVivamus.net', '07643', '2016-08-06 18:00:44', '2014-12-20 23:02:30', 'Elvis Mckee');
INSERT INTO "tbuser" VALUES ('93', 'Lane', 'ultrices@risusNuncac.ca', '13930', '2016-02-02 06:17:05', '2015-12-07 18:45:48', 'Emerson Foley');
INSERT INTO "tbuser" VALUES ('94', 'Victor', 'vitae.sodales@molestie.net', '87-132', '2016-08-06 01:50:27', '2015-02-09 11:44:52', 'Noah Silva');
INSERT INTO "tbuser" VALUES ('95', 'Joel', 'vel@augueid.com', '02554', '2016-03-12 21:37:34', '2016-03-26 06:25:54', 'Kibo Hunter');
INSERT INTO "tbuser" VALUES ('96', 'Ahmed', 'tristique.aliquet@eros.net', 'X3 5GL', '2016-01-18 17:23:30', '2015-05-28 12:02:38', 'Sylvester Strickland');
INSERT INTO "tbuser" VALUES ('97', 'Nasim', 'nunc.risus.varius@laciniaorci.co.uk', 'E4N 3L7', '2015-07-01 01:23:16', '2014-11-05 23:58:10', 'Wesley Donovan');
INSERT INTO "tbuser" VALUES ('98', 'Fulton', 'luctus.felis.purus@enimnon.net', '19584', '2016-09-27 16:30:55', '2015-01-28 14:44:31', 'Bevis Fuentes');
INSERT INTO "tbuser" VALUES ('99', 'Price', 'sagittis@pedeacurna.edu', '36287-569', '2015-10-31 21:34:17', '2015-11-16 15:47:20', 'Dennis Wyatt');
INSERT INTO "tbuser" VALUES ('100', 'Warren', 'arcu@sapienimperdietornare.org', '47261', '2015-03-31 17:00:12', '2015-03-02 02:17:58', 'Judah Colon');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "tbuser_id_seq" OWNED BY "tbuser"."id";
