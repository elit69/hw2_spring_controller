/*
Navicat PGSQL Data Transfer

Source Server         : Postgres
Source Server Version : 90305
Source Host           : localhost:5432
Source Database       : userDB
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90305
File Encoding         : 65001

Date: 2015-11-15 17:23:48
*/


-- ----------------------------
-- Sequence structure for tbuser_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "tbuser_id_seq" CASCADE;
CREATE SEQUENCE "tbuser_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;
SELECT setval('"public"."tbuser_id_seq"', 15, true);

-- ----------------------------
-- Table structure for tbuser
-- ----------------------------
DROP TABLE IF EXISTS "tbuser" CASCADE;
CREATE TABLE "tbuser" (
"id" int4 DEFAULT nextval('tbuser_id_seq'::regclass) NOT NULL,
"username" varchar(25) COLLATE "default" NOT NULL,
"email" varchar(30) COLLATE "default",
"password" varchar(25) COLLATE "default",
"birthdate" timestamp(6),
"registerdate" timestamp(6),
"image" varchar COLLATE "default",
"role" varchar COLLATE "default" NOT NULL,
"enable" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
BEGIN;
INSERT INTO "tbuser" VALUES ('1', 'author', 'erat.Etiam@Cumsociis.edu', '1', '2015-09-27 18:11:24', '2016-04-04 01:52:49', 'Wade Parker', 'ROLE_AUTHOR', 't');
INSERT INTO "tbuser" VALUES ('2', 'admin', 'parturien@adipisrisus.ca', '1', '2015-07-10 04:20:22', '2015-04-28 00:24:12', 'Raymond Cotton', 'ROLE_ADMIN', 't');
INSERT INTO "tbuser" VALUES ('3', 'user', 'Integer@consequat.edu', '1', '2016-10-01 17:23:19', '2016-10-30 00:38:43', 'Edan Jacobson', 'ROLE_USER', 't');
INSERT INTO "tbuser" VALUES ('4', 'Bruno', 'mattis.semper@arcuvel.ca', 'D42 4MR', '2016-06-15 21:28:26', '2015-06-22 20:33:38', 'Nehru Campbell', 'ROLE_ADMIN', 't');
INSERT INTO "tbuser" VALUES ('5', 'Simon', 'nulla.In@egestasadui.net', 'K0Q 2UM', '2016-07-12 04:21:53', '2016-09-05 02:11:01', 'Joshua Dudley', 'ROLE_AUTHOR', 'f');
INSERT INTO "tbuser" VALUES ('6', 'Ross', 'molestieligula@euismod.ca', 'N9T 5L6', '2015-03-30 21:48:34', '2015-06-12 22:50:07', 'Michael Spears', 'ROLE_ADMIN', 't');
INSERT INTO "tbuser" VALUES ('7', 'Steel', 'Nulla.ilisi@quisdiaus.com', '524899', '2015-02-22 16:21:27', '2016-10-14 15:23:23', 'Byron Aguilar', 'ROLE_USER', 'f');
INSERT INTO "tbuser" VALUES ('8', 'Keaton', 'Vivamus.sit@id.edu', 'G4L 5V3', '2016-06-05 20:59:26', '2016-09-28 18:13:59', 'Honorato Best', 'ROLE_ADMIN', 'f');
INSERT INTO "tbuser" VALUES ('9', 'Stewart', 'et.libero@eumetus.co.uk', '54642', '2015-06-18 00:31:04', '2016-07-18 18:08:21', 'Bruno Preston', 'ROLE_AUTHOR', 't');
INSERT INTO "tbuser" VALUES ('10', 'Ezra', 'volutpaisis@Donecec.com', '84-259', '2015-10-28 01:52:05', '2015-01-24 14:21:46', 'Blake Holcomb', 'ROLE_ADMIN', 't');
INSERT INTO "tbuser" VALUES ('11', 'Duncan', 'Nulla@mi.org', '51008', '2015-02-26 07:09:26', '2016-07-16 00:42:46', 'Adam Franklin', 'ROLE_AUTHOR', 't');
INSERT INTO "tbuser" VALUES ('12', 'Eric', 'ipsum.porta.elit@Aet.edu', '41309', '2015-11-14 09:44:52', '2015-07-24 04:21:18', 'Malik Johnston', 'ROLE_ADMIN', 't');
INSERT INTO "tbuser" VALUES ('13', 'Wesley', 'tincidunt@nuncidenim.edu', '40214', '2015-07-19 22:49:15', '2014-12-31 08:26:17', 'Tucker Clark', 'ROLE_AUTHOR', 'f');
INSERT INTO "tbuser" VALUES ('14', 'Chang1', 'lectus.sit@dignagnaa.ca', '71-588', '2016-04-06 23:17:22', '2015-01-29 06:13:29', 'Armando Holmes', 'ROLE_ADMIN', 'f');
INSERT INTO "tbuser" VALUES ('15', 'Reed', 'accumque.et@convallis.net', '4001XB', '2015-11-20 02:22:27', '2015-05-16 13:28:12', 'Mannix Nash', 'ROLE_AUTHOR', 't');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "tbuser_id_seq" OWNED BY "tbuser"."id";

-- ----------------------------
-- Uniques structure for table tbuser
-- ----------------------------
ALTER TABLE "tbuser" ADD UNIQUE ("username");
