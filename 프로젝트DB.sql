--------------------------------------------------------
--  ������ ������ - �ݿ���-10��-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence ADDRESS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ADDRESS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence AD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence DOG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DOG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ESTIMATE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ESTIMATE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 29 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence HAIRSTYLIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "HAIRSTYLIST_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 9 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "MEMBER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 31 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence PAY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PAY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 48 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence REVIEW_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "REVIEW_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 18 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TRAINER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TRAINER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 12 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table AD
--------------------------------------------------------

  CREATE TABLE "AD" 
   (	"AD_NO" NUMBER, 
	"AD_IMG" VARCHAR2(1000 BYTE), 
	"AD_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table ADDRESS
--------------------------------------------------------

  CREATE TABLE "ADDRESS" 
   (	"A_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_ROAD" VARCHAR2(150 BYTE), 
	"A_DETAILS" VARCHAR2(150 BYTE), 
	"A_ZONECODE" NUMBER, 
	"A_NAME" VARCHAR2(150 BYTE), 
	"A_ADDR" VARCHAR2(1000 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table AUTH
--------------------------------------------------------

  CREATE TABLE "AUTH" 
   (	"M_NO" NUMBER, 
	"AUTH" VARCHAR2(200 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DOG
--------------------------------------------------------

  CREATE TABLE "DOG" 
   (	"D_NO" NUMBER, 
	"M_NO" NUMBER, 
	"D_NAME" VARCHAR2(100 BYTE), 
	"D_AGE" NUMBER, 
	"D_IMG" VARCHAR2(500 BYTE), 
	"D_WEIGHT" NUMBER, 
	"D_TYPE" VARCHAR2(30 BYTE), 
	"D_GENDER" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ESTIMATE
--------------------------------------------------------

  CREATE TABLE "ESTIMATE" 
   (	"E_NO" NUMBER, 
	"M_NO_PUPPY" NUMBER, 
	"E_NOTE" VARCHAR2(2000 BYTE), 
	"E_SERVICE" VARCHAR2(50 BYTE), 
	"M_NO_MANAGER" NUMBER, 
	"E_TRAINNING" VARCHAR2(2000 BYTE), 
	"E_EXTRAPRICE" NUMBER, 
	"E_EXTRA_REASON" VARCHAR2(2000 BYTE), 
	"E_TOTAL_PRICE" NUMBER, 
	"E_CON" NUMBER, 
	"E_REJECT" VARCHAR2(2000 BYTE), 
	"D_NO" NUMBER, 
	"A_NO" NUMBER, 
	"E_DATE" DATE DEFAULT sysdate, 
	"E_BASICPRICE" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table HAIRSTYLIST
--------------------------------------------------------

  CREATE TABLE "HAIRSTYLIST" 
   (	"H_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_NO" NUMBER, 
	"H_PRICE" NUMBER, 
	"H_SELF" VARCHAR2(2000 BYTE), 
	"H_SEL" VARCHAR2(2000 BYTE), 
	"H_LICENSE" VARCHAR2(500 BYTE), 
	"H_BUSINESSNO" VARCHAR2(200 BYTE), 
	"H_BEST" NUMBER DEFAULT 0, 
	"H_CAREER" NUMBER, 
	"H_SALARY" NUMBER, 
	"H_DATE" DATE DEFAULT sysdate, 
	"H_RAVG" NUMBER DEFAULT 0, 
	"H_RTOTAL" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"M_NO" NUMBER, 
	"M_ID" VARCHAR2(20 CHAR), 
	"M_PW" VARCHAR2(200 BYTE), 
	"M_NAME" VARCHAR2(100 BYTE), 
	"M_EMAIL" VARCHAR2(100 BYTE), 
	"M_PHONE" VARCHAR2(15 CHAR), 
	"M_NICK" VARCHAR2(200 BYTE), 
	"M_TYPE" NUMBER, 
	"M_STATUS" NUMBER DEFAULT 0, 
	"M_IMG" VARCHAR2(200 BYTE), 
	"M_DATE" DATE DEFAULT sysdate
   ) ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"N_NO" NUMBER, 
	"N_TITLE" VARCHAR2(100 BYTE), 
	"N_CONTENT" VARCHAR2(2000 BYTE), 
	"N_DATE" DATE DEFAULT sysdate, 
	"N_READCOUNT" NUMBER DEFAULT 0, 
	"N_IMG" VARCHAR2(300 BYTE), 
	"M_ID" VARCHAR2(20 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table PAY
--------------------------------------------------------

  CREATE TABLE "PAY" 
   (	"P_ORDER" VARCHAR2(100 BYTE), 
	"M_NO" NUMBER, 
	"T_NO" NUMBER, 
	"P_NAME_USER" VARCHAR2(40 BYTE), 
	"P_STATUS" NUMBER DEFAULT 0, 
	"P_OKNO" NUMBER, 
	"P_TIME" DATE DEFAULT sysdate, 
	"T_NO_NAME" VARCHAR2(200 BYTE), 
	"P_AMOUNT" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGIN
--------------------------------------------------------

  CREATE TABLE "PERSISTENT_LOGIN" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSISTENT_LOGINS
--------------------------------------------------------

  CREATE TABLE "PERSISTENT_LOGINS" 
   (	"USERNAME" VARCHAR2(64 BYTE), 
	"SERIES" VARCHAR2(64 BYTE), 
	"TOKEN" VARCHAR2(64 BYTE), 
	"LAST_USED" TIMESTAMP (6)
   ) ;
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"Q_NO" NUMBER, 
	"Q_IMG" VARCHAR2(300 BYTE), 
	"Q_TITLE" VARCHAR2(100 BYTE), 
	"Q_CONTENT" VARCHAR2(2000 BYTE), 
	"Q_DATE" DATE DEFAULT sysdate, 
	"Q_READCOUNT" NUMBER DEFAULT 0, 
	"M_ID" VARCHAR2(20 CHAR)
   ) ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"R_NO" NUMBER, 
	"M_NO" NUMBER, 
	"R_TEXT" VARCHAR2(2000 BYTE), 
	"R_SCORE" NUMBER, 
	"R_DATE" DATE DEFAULT sysdate, 
	"R_IMG" VARCHAR2(200 BYTE), 
	"T_NO" NUMBER DEFAULT 0, 
	"H_NO" NUMBER DEFAULT 0, 
	"E_NO" NUMBER DEFAULT 0
   ) ;
--------------------------------------------------------
--  DDL for Table TRAINER
--------------------------------------------------------

  CREATE TABLE "TRAINER" 
   (	"T_NO" NUMBER, 
	"M_NO" NUMBER, 
	"A_NO" NUMBER, 
	"T_PRICE" NUMBER, 
	"T_SELF" VARCHAR2(2000 BYTE), 
	"T_SEL" VARCHAR2(2000 BYTE), 
	"T_LICENSE" VARCHAR2(500 BYTE), 
	"T_BUSINESSNO" VARCHAR2(200 BYTE), 
	"T_BEST" NUMBER DEFAULT 0, 
	"T_CAREER" NUMBER, 
	"T_SALARY" NUMBER, 
	"T_DATE" DATE DEFAULT sysdate, 
	"T_RAVG" NUMBER DEFAULT 0, 
	"T_RTOTAL" NUMBER DEFAULT 0
   ) ;
REM INSERTING into AD
SET DEFINE OFF;
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (4,'DCB611C6C40140CB96D300135E3B08AD.png',to_date('22/10/19 15:20:20','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (5,'29CD93E4CD9941DAB43F0596572E1FFB.png',to_date('22/10/19 16:17:19','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (6,'1F9F10A10FA5441DAFCE9E618CBB4FB7.png',to_date('22/10/19 16:17:14','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (1,'EB5FF21F036E43DBB5BBBED75E33368B.png',to_date('22/10/19 15:20:07','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (2,'33ADCC4DED9D446CBF19BC6DAE27B524.png',to_date('22/10/21 14:45:09','RR/MM/DD HH24:MI:SS'));
Insert into AD (AD_NO,AD_IMG,AD_DATE) values (3,'570B847FD08A433BB95AA5B6A5665996.png',to_date('22/10/19 16:17:07','RR/MM/DD HH24:MI:SS'));
REM INSERTING into ADDRESS
SET DEFINE OFF;
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (27,27,'��� ���� ���籸 �����86���� 8','401',10540,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (5,5,'��� ������ �д籸 �Ǳ����� 4','1664',13536,'��','0013_0014_0103_0104');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (6,6,'��� ������ �д籸 ������ 54','5645',13607,'��','0000');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (8,8,'��� ������ �д籸 �Ǳ����� 235','101ȣ',13494,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (10,10,'��� ������ �д籸 �ó��� 8','201ȣ',13550,'��','0017_0021');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (13,13,'�λ� ������ ��ɱ� 9','214-65',49073,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (14,14,'���� ������ ������42�� 2','107�� 1502ȣ',4154,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (18,18,'���� ������ ������42�� 2','107�� 1502ȣ',4154,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (28,28,'�뱸 ���� ����� 139','101�� 1111ȣ',42444,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (30,30,'��� ���� ���籸 �����86���� 76-23','401',10540,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (1,1,'��� ���� ���籸 �����86���� 76-23','b�� 401',10540,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (2,2,'��� ������ �д籸 �Ǳ�����10���� 3','�����',13536,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (3,3,'��� ������ �д籸 ����Ǳ��� 579','777ȣ',13487,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (4,4,'���� ������ ������ 1','1234',3900,'��','0004_0013_0014_0101_0103');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (7,7,'���� ��õ�� ������� 70','1234',8500,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (9,9,'��� ���� ������ ������� 1','�޸��� ���',12427,'��','0001_0005_0102_0106');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (11,11,'���� ���빮�� ����ø���� 5','11ȣ',2592,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (12,12,'��� ����� ����� 439','�����п�',18103,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (15,15,'��� ����� ������ 9','1234',18125,'��','0000');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (16,16,'���� ������ ������� 404','�Ҹ���',6153,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (17,17,'���� ���빮�� ������2�� 10-2','1234',3721,'��','0001_0015');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (19,19,'��� ���ֽ� ���� ���ǻ�� 16','1234',11409,'��','0105_0106');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (20,20,'���� ���α� ���η� 577','1234',8212,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (21,21,'��� ����õ�� ����õ�� 222','1234',11333,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (22,22,'���� �������� ���η� 701','1234',7289,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (23,23,'���� ���Ǳ� �����45�� 17','1234',8864,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (26,26,'��� ���� ���籸 �����86���� 76-23','302',10540,'��','0001_0002');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (29,29,'��� ���� ���籸 �����86���� 76-23','300',10540,'��','0001_0002_0101');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (24,24,'��� ���� ���籸 �����86���� 76-3','301ȣ',10540,'��','null');
Insert into ADDRESS (A_NO,M_NO,A_ROAD,A_DETAILS,A_ZONECODE,A_NAME,A_ADDR) values (25,25,'��� ���� ���籸 �����86���� 76-3','111',10540,'��','0001_0102_0105');
REM INSERTING into AUTH
SET DEFINE OFF;
Insert into AUTH (M_NO,AUTH) values (27,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (5,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (6,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (8,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (10,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (13,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (14,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (18,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (28,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (30,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (1,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (2,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (3,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (4,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (3,'ROLE_ADMIN');
Insert into AUTH (M_NO,AUTH) values (7,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (9,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (11,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (12,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (15,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (16,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (17,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (19,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (20,'ROLE_HAIR');
Insert into AUTH (M_NO,AUTH) values (21,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (22,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (23,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (26,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (29,'ROLE_TRAINER');
Insert into AUTH (M_NO,AUTH) values (24,'ROLE_MEMBER');
Insert into AUTH (M_NO,AUTH) values (25,'ROLE_TRAINER');
REM INSERTING into DOG
SET DEFINE OFF;
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (5,22,'GD',7,'B5E37F3D6DB344FD8ED3F0855208F34D.jpg',4,'����','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (4,21,'������',4,'C57AFE62233C405FB8CC371C34BDE35B.jpg',3,'Ǫ��','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (1,18,'������',4,'E0D295AB71764B239AD542B8D23DB7C1.jpg',5,'Ǫ��','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (2,18,'���',3,'AA32A2FDAA6144E99654342D506300C2.jpg',6,'���','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (8,28,'�ζ�',4,'0BDC7BE23BD24D38985264A9C80ED44B.png',5,'����','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (3,1,'�ζ�',14,'AE12D941E85246FBAE8031ABE62ABCC9.jpg',6,'�ð��ں���','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (7,27,'�ζ�',7,'C04CCDDDF1204659ABC4C7B323F46BEC.jpg',1,'����','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (6,24,'�ζ�',4,'21A7FEFB97674041969A1D6E7C385CCB.jpg',6,'����','��');
Insert into DOG (D_NO,M_NO,D_NAME,D_AGE,D_IMG,D_WEIGHT,D_TYPE,D_GENDER) values (9,30,'�ζ�',4,'9DB5D94B0A04459F834F4B8AD5B76ACC.png',5,'�ð��ں���','��');
REM INSERTING into ESTIMATE
SET DEFINE OFF;
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (4,18,'��ȸ���� �����ؿ�.','��ȸ������',6,null,50000,'����',200000,1,null,1,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),150000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (5,18,'�㸸 �Ǹ� ¢��� �ФФ�','�����ൿ����',5,null,50000,'�߰� ����',300000,1,null,2,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),250000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (12,22,'��� �ߵ��ؿ�','���� �̿�',19,null,0,'����',120,4,null,5,22,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (13,22,'�ǰ� ������ ����������','���� �̿�',19,null,30,'����',150,4,null,5,22,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (15,18,'��ȸ���� ����� !','��ȸ������',8,null,0,'����',100,5,null,2,18,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (1,18,'���� �� �� �Ծ��.','�⺻����',7,null,0,'����',0,3,null,1,18,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),250000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (3,18,'������ ħ�뿡 �ο�','�躯����',8,null,10000,'���ܳ���',210000,5,null,2,18,to_date('22/10/18 12:30:00','RR/MM/DD HH24:MI:SS'),200000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (10,21,'�����̰� ���� ���� ������ �ֽ��ϴ�.','��ü�̿�',19,null,30,'���� ����',150,5,null,4,21,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (19,1,'���䰡 ���Ƽ� ��Ź�غ���','��ȸ������',6,null,0,'����',200,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),200);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (11,21,'��ü �̿� ��Ź�����','��ü�̿�',19,null,30,'����',150,4,null,4,21,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),120);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (16,1,'�����̿��� �ʿ��ؿ�','���� �̿�',20,null,50,'��ġ �߰� ���',150,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (25,28,'�������� ����� �������մϴ�.','�⺻����',12,null,0,'����',111,5,null,8,28,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (2,1,'�ζǰ� �ľ �Ҹ��� �ΰ��ؿ�','��ȸ������',4,null,null,null,null,0,null,3,1,to_date('22/10/13 12:30:00','RR/MM/DD HH24:MI:SS'),890000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (23,27,'�ʹ� �Ϳ�����','�⺻����',25,null,0,'����',100,5,null,7,27,to_date('22/10/20 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (24,27,'ȸ�縦 ��������','�⺻����',25,null,1,'����',101,4,null,7,27,to_date('22/10/20 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (17,1,'������ �̿��� ���ؿ�','���� �̿�',20,null,0,'����',100,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (20,1,'����� ������','�⺻����',12,null,9,'������',120,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (9,1,'�������� ����� �������ؿ�','�⺻����',8,null,0,'����',100,5,null,3,1,to_date('22/10/19 12:30:00','RR/MM/DD HH24:MI:SS'),100);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (22,24,'�������� ������ ���ؿ�','�⺻����',12,null,100,'������ ���ҋ���',211,5,null,6,24,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),111);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (26,30,'�������� �ʹ� �糪����','�⺻����',12,null,100,'����������',5100,4,null,9,30,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),5000);
Insert into ESTIMATE (E_NO,M_NO_PUPPY,E_NOTE,E_SERVICE,M_NO_MANAGER,E_TRAINNING,E_EXTRAPRICE,E_EXTRA_REASON,E_TOTAL_PRICE,E_CON,E_REJECT,D_NO,A_NO,E_DATE,E_BASICPRICE) values (28,30,'�Ÿ��� �ʹ� �־��','�⺻����',12,null,100,'����',5100,5,null,9,30,to_date('22/10/22 12:30:00','RR/MM/DD HH24:MI:SS'),5000);
REM INSERTING into HAIRSTYLIST
SET DEFINE OFF;
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (7,11,0,50000,'�ְ��� ���̻� �ְ��� �ƴ� ����� �Բ��� �ݷ����̸� �����Դϴ�.
�������� �����ϰ� ���ϰڽ��ϴ�.','<p><span style="color:#e74c3c"><span style="font-size:24px"><span style="font-family:Georgia,serif">���� �̺�Ʈ�� ��� �ְ߹̿뿡 �߰������ ���� �ʽ��ϴ�</span></span></span></p>
','KKF �ѱ��ְ߿��� �̿�� �������� 2��',null,0,7,null,to_date('22/10/19 14:52:49','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (8,16,0,250000,'�ְ߹̿��� ù ���� ��������� 20�� �̻��� �ְ߼� ���� ����� �ְ߹̿� �п��� ��ϸ� õ �� �̻��� ���ڸ� �����߽��ϴ�.','<p>�ְ߹̿��� ù ���� ��������� 20�� �̻��� �ְ߼� ���� ����� �ְ߹̿� �п��� ��ϸ� õ �� �̻��� ���ڸ� �����߽��ϴ�. ���ڵ鿡�� �ڽ��� ����� �Ѱ��ֱ⸦ ������ �ʾҰ� �Ĺ���� ������ �Ѿ� ���������� �� ���� ������ ����� �� ���� ����ϸ� �� ���� ������ �Ȱڽ��ϴ�.</p>
','KKC �ѱ��ְ���ȸ �̿� �ɻ��ǿ�',null,0,15,null,to_date('22/10/19 10:45:57','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (2,13,0,130,'�׻� ���������� ������� �������ִ� �̿�� ��ȭ���Դϴ�.','<p>�׻� ���������� ������� �������ִ� �̿�� ��ȭ���Դϴ�.</p>
','�ְ߹̿���ڰ���',null,0,5,null,to_date('22/10/19 16:55:02','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (3,14,0,750000,'����ó�� ������ ���ڰԸ� �ϴ� �̿�簡 �ƴ϶� �ֿϵ����� ���� ����ϴ� �������� �������� ������ �� �� �ִ� ���� ������ �ְ� �̿���Դϴ�.','<p>������ �̿� �źΰ� ���� ���̴� �̿��� �ߴ� �� �� ������ ����� �ް� �˴ϴ�.</p>

<p>��û�Ͻ� �� ��ü ������, ������ �ϸ� ������, ��ü ������ ���Ͻô� �̿��� ��Ȯ�ϰ� �˷��ּ���</p>
','�ݷ��߽�Ÿ�ϸ���Ʈ 3��',null,0,4,null,to_date('22/10/19 15:09:02','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (4,19,0,80000,'������ �ڰ������� �ְ߹̿��μ� ����� �̿��� å�����ϴ�.','<h5>�ְ߹̿�� 2���ڰ��� ���</h5>

<p>�湮�ְ߹̿��� 5�� �ٹ������� ������������ 1�� �ٹ��߽��ϴ�</p>

<p>. ����� �̹̻����� ��Ʈ�ʼҼ� �湮�̿��� ���ϰ� �ְ� ����ߺ�ȣ�ҳ� ��Ź��ȣ�� �̿�����ϰ� �ֽ��ϴ�</p>

<p>. ������ �̿��� �ްԵǸ� ��κ��� ���̵��� ������������ ��� �νð� �̻� ���ΰ� ������ �־�� �ϰ� �Ⱦ��ϴ� �̿�� ������ �ϰԵǸ鼭 �ؽ��� ��Ʈ������ �ް� �˴ϴ�.</p>

<p>�̿븸 �ϰ� ���� ���� ���� �ʰų� �� �����ʴ� ���̵��� �׷� ��Ʈ������ ���� ��Ÿ���� �ൿ���� �������ϴ�.</p>

<p>���ÿ��� �̿��� �ް� �Ǹ� �̷� ��Ʈ������ ���� �ٿ��� �� �ֽ��ϴ�.</p>

<p>(�̿��� ������ �ٷ� �پ��ƿ�^^) ���ݹ̿�(ù�̿�)�̳� ���¾��� Ȥ�� ��ɰߵ� ���ÿ��� �������� �̿��� ������ �ֽ��ϴ�. ������ �⺻�̿�(�߹ٴ� �׹� ���ı� ���� �׹��� ����) ���������մϴ� �׷췹�� ���η��� �����ּ���.</p>
','�ְ߹̿�� 2�� ',null,0,5,null,to_date('22/10/20 09:50:08','RR/MM/DD HH24:MI:SS'),3.33,3);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (5,17,0,80000,'�̿��� �ְ��� ������ �ְ����� �Ǵ� �ڽ�ó�� �����ϸ� �̿��ϰ� �ֽ��ϴ�.

','<p>�̿��� �ְ��� ������ �ְ����� �Ǵ� �ڽ�ó�� �����ϸ� �̿��ϰ� �ֽ��ϴ�.</p>
','�ְ���ȸ  3��',null,0,7,null,to_date('22/10/19 10:31:49','RR/MM/DD HH24:MI:SS'),0,0);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (6,20,0,50000,'�ܼ��� ���� ��� �̿�簡 �ƴ� �ݷ����� �پ��� ��Ÿ���� �������ϴ� �̿���Դϴ�.','<p>�ܼ��� ���� ��� �̿�簡 �ƴ� �ݷ����� �پ��� ��Ÿ���� �������ϴ� �̿���Դϴ�.</p>
','�ְ���ȸ3��2��',null,0,2,null,to_date('22/10/20 09:48:50','RR/MM/DD HH24:MI:SS'),5,1);
Insert into HAIRSTYLIST (H_NO,M_NO,A_NO,H_PRICE,H_SELF,H_SEL,H_LICENSE,H_BUSINESSNO,H_BEST,H_CAREER,H_SALARY,H_DATE,H_RAVG,H_RTOTAL) values (1,10,0,80000,'kkf �ѱ��ְ߿��Ϳ��� �����ϴ� �ְ߹̿� ��ȸ���� �ټ��� ������ �ϰ� ���� �ְ߹̿��','<p>kkf&nbsp;�ѱ��ְ߿��Ϳ��� �����ϴ� �ְ߹̿� ��ȸ���� �ټ��� ������ �ϰ�&nbsp;���� �ְ߹̿��</p>
','�ְ߹̿���ڰ���',null,0,5,null,to_date('22/10/19 09:49:21','RR/MM/DD HH24:MI:SS'),0,0);
REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (27,'ex2','$2a$10$cThj0EqRygionWKIKdpe9uIdDb38cl8SRsNrEx30bwoqtxRM6splu','������','wings12345@naver.com','01027001761','����¯',0,0,'default.png',to_date('22/10/20 11:22:07','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (5,'bum11','$2a$10$AaG6fnobOIEgW7mRZ9uiP.oQRPVZpYSKWChlVffgRhHKZ3L8Hxnv6','�迹��','java@java.com','01012341234','�迹��',0,0,'35B2E0F157F44480B72FF2848EB22DB3.png',to_date('22/10/18 15:13:30','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (6,'bum22','$2a$10$U84szTB1.kHLGFlv1.bkwuYZHSiGkoKwkCW3n7kK08c0F3ZiHHLzG','������','java1@java.com','01098746542','����ī��',0,0,'FA493ACCE2F2474EA8F9EFF921A8F707.png',to_date('22/10/18 15:15:22','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (8,'bum33','$2a$10$fP7hPdxjMc.HRAzfCfbOl.FNpajUkvQOmpiXuswMOfATmYg/DEuUC','���ð�','tlriu@gmail.com','01045673258','��赿������',0,0,'3C20CABD30E54D72AC364F6A6A51C6BB.png',to_date('22/10/18 15:16:19','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (10,'bum44','$2a$10$ZMqrl7tAQScMdX7kj.gGue1jUOatz1Wfktj47Co6YjjTGDyy/jmwG','�½ù�','ewqfeqw@daum.net','01054839852','����̾���',0,0,'8E081534AAEA41BC8610AFE4A1F749B9.png',to_date('22/10/18 15:17:19','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (13,'bum55','$2a$10$.37tuim.cbjtFx.ZUzH27etNvgkdSV4e9asLo6IHawctPRKQjN2Ii','��ȭ��','awwfws@naver.com','01098140024','ȭ��',0,0,'8DA01438FA8A4EDDA6151C9828730F5F.png',to_date('22/10/18 15:18:25','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (14,'bum66','$2a$10$BMjbLeZbqN7qSs5GBusJdOSn1iKrGExMLfCmhhdihwqftfoMEXWfC','������','qdfqw@naver.com','01066818432','������',0,0,'4D0C8AA47AAA447B93EF1F49B4C524E0.png',to_date('22/10/18 15:19:05','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (18,'cqt95','$2a$10$UMBs654W4Q59MJbAZ5p9P.8GmO/S.p7uFHwzg4jHqhum5GwohlxgC','��¯��','cqt@naver.com','01032149845','�׼ǰ���',0,0,'8F3F8C13BD9F4846A4941E75FD9F40BF.png',to_date('22/10/18 15:21:52','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (28,'ja','$2a$10$cRZNuW5gt3WkzveO/JYe3uGlRJBtNC3EDynqeucTt7Do7gHjkqPY2','������','wings123123@naver.com','01027001761','����',0,0,'default.png',to_date('22/10/20 19:14:41','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (30,'golddog','$2a$10$I4R2aKycUleKkz3ju6cuAuryw2irwqLz/k24wmFF1wjqknSonYDDa','������','wings425@naver.com','01027001761','�ݴ���',0,0,'B57B9F3D165A4212B7157B042DAE8A0C.png',to_date('22/10/21 14:34:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (1,'wings425','$2a$10$ulfPCfmVJt.EdoVaN4VaZOzYGGDQYJO8c40/VdfMzjNowhy9cjtRS','������','wings45@naver.com','01027001761','��Ű',0,0,'default.png',to_date('22/10/18 15:06:45','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (2,'wings123','$2a$10$30l1rRHhNXAmxL/ObtX6/ekFvkmTg0VDcbkk88vrucJNvtFTjwHBy','������','wings123@naver.com','01027001761','Ŀ��',0,0,'default.png',to_date('22/10/18 15:10:00','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (3,'admin','$2a$10$GX1lMLmRCZ4u1WHkB7U8juq/HK3LGORHfZVeDw0GeRVXigqeaT6Gq','������','wings2530@gmail.com','01011112222','������',0,0,'default.png',to_date('22/10/18 15:11:29','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (4,'a1234','$2a$10$LfVv0IqhOtBHFDIFPIHBoOifsMuv1jRRWLUU4.8n0RhUcFBa5YE0i','��Ʃ�����ƿ�ͱ���','yjk100k@naver.com','01024244355','������Ʃ��',0,0,'23013DD4FE16405E9F21747AC78338CA.png',to_date('22/10/18 15:13:09','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (7,'b1234','$2a$10$kkw0TJBcvi9VA2FscNv9lez8lb/qx80rJfN1/mWWOd4lPK02tF.wm','����','heroof@gmail.com','01099251348','������',0,0,'8C89335243554BB3B6D6D9229FD391B9.png',to_date('22/10/18 15:16:07','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (9,'java10','$2a$10$J9anDvTHe0Ca7b9nMaIL/uh1Ju/KCwKaFOXYwNZOBM75WEKxFH.C.','������','wings1@naver.com','01027001761','���۵�',0,0,'2B5FB589B60743A19B4A45984434E252.png',to_date('22/10/18 15:16:33','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (11,'java11','$2a$10$Km2TRZW.W3D18wjG4ZZ8ged.XlqqYJgWBA7zML0NYlKw52ZnMoB4W','������','wings12121@naver.com','01087971111','�¾��Ǽ�',0,0,'88697290BCCE45058CE025E93C284785.png',to_date('22/10/18 15:17:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (12,'java12','$2a$10$O2sjgH5pijlUwiS9eU3QMu9LWevHUID2jJZ.g/2vdKEY9T2lS77ge','������','wings11@naver.com','01012123131','������',0,0,'E226EBD6724F452F8AAEA7F5D2E34A04.png',to_date('22/10/18 15:18:21','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (15,'c1234','$2a$10$63oljdR60j712Q8CqbCvq..JmyPcM7lxfFs5vDAPBIvuQLGz9WHly','������','yakjsStrongJGH@hanmail.net','01033212567','ģ���ѱ��ھ�',0,0,'2681366B6B344C7CA489203B30BEC3FA.png',to_date('22/10/18 15:19:21','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (16,'java13','$2a$10$lWyGE11VXgWpzvOM0Ajppe.TabGgZd3wClaaN9H2eogWjKHo2SJUK','������','wings1234@naver.com','0102222','�߰��Բ�',0,0,'EF21773614BA4768B2377C065D8C9C78.png',to_date('22/10/18 15:19:24','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (17,'aa1234','$2a$10$sjdshyL3K0Dmn65L59Krbea/EzzATz.D7hBd9ZRt/k79qHPMYzy0a','���ں���','kamja@gamja.ka','11144441111','���ʱ��̿��',0,0,'885C04CCAAB948EA9E4A3768139DDF12.png',to_date('22/10/18 15:21:28','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (19,'bb1234','$2a$10$/J0DcscHe7c2oQ0eOefImOlkbFBafT9lEV7U7k08zIDi6yvsAlvu2','������','rearcarStillJSM@stilling.do','01023346658','���ھƺ�',0,0,'958EC7E3B00B419483B3F9FD2B2B0326.png',to_date('22/10/18 15:24:01','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (20,'cc','$2a$10$/vEGZ7UVT.KknhJNgcEQr.uDeEpTuhT7SH/yoAOXCiJFQtj/gEzqS','�ֹ���','1korailDarkloadCBS@kakao.com','01022234456','��ȣ��',0,0,'9C96773B8ED84F249F5CF2934FB9A7FB.png',to_date('22/10/18 15:25:58','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (21,'aaa1234','$2a$10$6x61RVQiLpP0q4IdRhC1Deg0SpOgphHke4lNyp48Y9Btj8gF/F1pq','�̹���','seniorCitizenNo1@meaning.com','01039563321','��δ������̹���',0,0,'default.png',to_date('22/10/18 15:29:34','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (22,'bbb1234','$2a$10$RBgItTZ99ozAsplagxj9zu3Yz9JMdHbJS83us.3UKMaDhhRPy.qfC','������','clichSpoilerJSM@naver.com','01064978256','Ŭ���ν�����������',0,0,'default.png',to_date('22/10/18 15:32:46','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (23,'ccc1234','$2a$10$GLnsBSAO0H40HvKTdia5Gu4S2G2Mnd/wwmbm5iCW7bvhUU8hK9FqC','�ֹ���','DestroyGranmaRearcarBS@yahoo.com','01042687931','�ҸӴϸ���ī�ı�����',0,0,'default.png',to_date('22/10/18 15:35:24','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (26,'ex1','$2a$10$JhyE4OW67MJTkp6nQhH6z.BTIkOHWVXPqWjs.DkT8c9mwG7rnsNpm','������','wings1761@naver.com','01027001761','�ҿ����Ʈ',0,0,'default.png',to_date('22/10/20 09:31:15','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (29,'trainer','$2a$10$UHJo4UYkl2iDp6QTbVQW4uDoBmQBMWRFkQgPzRPjrDrNIcOfzE23e','������','wings1010@naver.com','01027001761','�Ʒû缺��',0,0,'96972E4DC5CF42A69917328DDD4D31A8.png',to_date('22/10/21 10:18:36','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (24,'java77','$2a$10$rc9o5dLIZnRuTDbrgwfZ8elmkGaTkE9bEsqS1L4/Y5ukTwGiL509m','������','wings1111@naver.com','01027001761','�Ƹ޸�ī��',0,0,'566B0566F08B4603A2ADF14937F139B7.png',to_date('22/10/19 21:26:16','RR/MM/DD HH24:MI:SS'));
Insert into MEMBER (M_NO,M_ID,M_PW,M_NAME,M_EMAIL,M_PHONE,M_NICK,M_TYPE,M_STATUS,M_IMG,M_DATE) values (25,'wiwi','$2a$10$nzHPqhSXZZTYm30KgppMhulAYNWe8o3p1Gdvl.W5ydsBM6/YOd75y','������','qweqwe1@naver.com','01027001761','wiwi',0,0,'46BC162BBBE14A33940D7CC117DF7FAD.png',to_date('22/10/19 21:44:12','RR/MM/DD HH24:MI:SS'));
REM INSERTING into NOTICE
SET DEFINE OFF;
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (1,'�������� ����� ���ÿ� ���� �����Ѱ���?','���� �ݷ��� �̿�, �Ʒ� ���� ���� �������Դϴ�.

���� �ݷ��� ���񽺵� ������ ���� �����߿� ������, ���� ���� ��Ź�帳�ϴ�.',to_date('22/10/19 19:18:33','RR/MM/DD HH24:MI:SS'),1,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (2,'���� �̿���(��� VAT ���� �ݾ�)','1�Ⱓ ���� ���� ���Դϴ�.',to_date('22/10/19 19:42:01','RR/MM/DD HH24:MI:SS'),13,'10DCB072795B4168A839B86CEA1BBBAB.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (3,'���� ��������','����� ���� ������ �Ʒû�& �̿�� �е��� ������Դϴ�.',to_date('22/10/19 19:42:29','RR/MM/DD HH24:MI:SS'),7,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (5,'���ο� ����','����Ʈ�� 10-21�� �����մϴ�',to_date('22/10/20 09:37:04','RR/MM/DD HH24:MI:SS'),15,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (6,'������ ȣ�� ����','������ ȣ�ڰ� ������ ������ ���ݿ� �̿��Ҽ� �ִ� ���񽺸� �����ϰ� �ֽ��ϴ�.',to_date('22/10/20 09:38:17','RR/MM/DD HH24:MI:SS'),3,'default.png','admin');
Insert into NOTICE (N_NO,N_TITLE,N_CONTENT,N_DATE,N_READCOUNT,N_IMG,M_ID) values (4,'�ݴ����� �湮 �ְ߹̿� �Ŵ���/�Ʒ� �Ŵ����� ���� �� �ֳ���?','���� �ְ߹̿��(Ȥ�� �����)�μ� ��ٷο� �ſ� ���� ���, �ּ� 3�� �̻� �ݷ� ���� ����,���� �̷� �� �ǽ� ������ ��� �̼��� �������Դϴ� 

''������������''�� �����Ͽ� �ڼ��� ������ �Ʒ� ��ũ�� �������ּ���.

https://www.dogcare33.com/content/safe ',to_date('22/10/19 21:10:32','RR/MM/DD HH24:MI:SS'),15,'default.png','admin');
REM INSERTING into PAY
SET DEFINE OFF;
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813080632',32,0,'1234',0,null,to_date('22/10/18 13:09:06','RR/MM/DD HH24:MI:SS'),'�ڹ���',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813132932',32,1,'1234',0,null,to_date('22/10/18 13:14:15','RR/MM/DD HH24:MI:SS'),'�ڹ���',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818263718',18,5,'�׼ǰ���',0,null,to_date('22/10/18 18:27:12','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818284118',18,5,'�׼ǰ���',0,null,to_date('22/10/18 18:29:19','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818310318',18,7,'�׼ǰ���',0,null,to_date('22/10/18 18:31:41','RR/MM/DD HH24:MI:SS'),'������',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918485422',22,0,'Ŭ���ν�����������',0,null,to_date('22/10/19 18:49:23','RR/MM/DD HH24:MI:SS'),'�ҸӴ�����������������',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918513422',22,0,'Ŭ���ν�����������',0,null,to_date('22/10/19 18:51:58','RR/MM/DD HH24:MI:SS'),'�ҸӴ�����������������',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101813064732',32,0,'1234',0,null,to_date('22/10/18 13:07:29','RR/MM/DD HH24:MI:SS'),'�ڹ���',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101817570818',18,7,'�׼ǰ���',0,null,to_date('22/10/18 17:57:42','RR/MM/DD HH24:MI:SS'),'������',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818004718',18,7,'�׼ǰ���',0,null,to_date('22/10/18 18:01:27','RR/MM/DD HH24:MI:SS'),'������',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818044418',18,7,'�׼ǰ���',0,null,to_date('22/10/18 18:05:19','RR/MM/DD HH24:MI:SS'),'������',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818133218',18,5,'�׼ǰ���',0,null,to_date('22/10/18 18:14:01','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101818252918',18,5,'�׼ǰ���',0,null,to_date('22/10/18 18:26:45','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192040001',1,3,'��Ű',0,null,to_date('22/10/19 20:41:14','RR/MM/DD HH24:MI:SS'),'����ī���',200);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918402121',21,0,'��δ������̹���',0,null,to_date('22/10/19 18:40:48','RR/MM/DD HH24:MI:SS'),'�ҸӴ�����������������',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101919383018',18,5,'�׼ǰ���',0,null,to_date('22/10/19 19:39:17','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192022111',1,6,'��Ű',0,null,to_date('22/10/19 20:22:43','RR/MM/DD HH24:MI:SS'),'1ȣ����ũ�ε��ֹ���',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102011252324',24,4,'�Ƹ޸�ī��',0,null,to_date('22/10/20 11:26:25','RR/MM/DD HH24:MI:SS'),'������',211);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102019250928',28,4,'����',0,null,to_date('22/10/20 19:26:32','RR/MM/DD HH24:MI:SS'),'������',111);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101918314421',21,0,'��δ������̹���',0,null,to_date('22/10/19 18:32:18','RR/MM/DD HH24:MI:SS'),'�ҸӴ�����������������',150);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102015404227',27,9,'����¯',0,null,to_date('22/10/20 15:41:24','RR/MM/DD HH24:MI:SS'),'wiwi',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102017521527',27,9,'����¯',0,null,to_date('22/10/20 17:52:53','RR/MM/DD HH24:MI:SS'),'wiwi',101);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210191802351',1,5,'��Ű',0,null,to_date('22/10/19 18:03:14','RR/MM/DD HH24:MI:SS'),'���ڿ�',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192031391',1,6,'��Ű',0,null,to_date('22/10/19 20:32:01','RR/MM/DD HH24:MI:SS'),'1ȣ����ũ�ε��ֹ���',100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('202210192111481',1,4,'��Ű',0,null,to_date('22/10/19 21:12:47','RR/MM/DD HH24:MI:SS'),'������',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022101921385724',24,4,'�Ƹ޸�ī��',0,null,to_date('22/10/19 21:39:58','RR/MM/DD HH24:MI:SS'),'������',120);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102114390830',30,4,'�ݴ���',0,null,to_date('22/10/21 14:40:00','RR/MM/DD HH24:MI:SS'),'������',5100);
Insert into PAY (P_ORDER,M_NO,T_NO,P_NAME_USER,P_STATUS,P_OKNO,P_TIME,T_NO_NAME,P_AMOUNT) values ('2022102115581230',30,4,'�ݴ���',0,null,to_date('22/10/21 15:59:23','RR/MM/DD HH24:MI:SS'),'������',5100);
REM INSERTING into PERSISTENT_LOGIN
SET DEFINE OFF;
REM INSERTING into PERSISTENT_LOGINS
SET DEFINE OFF;
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (2,'default.png','���ϴ� �ְ߹̿��(�����)�� ���� ������ �� �ֳ���?','����',to_date('22/10/19 19:24:14','RR/MM/DD HH24:MI:SS'),2,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (3,'default.png','���� ����� ������ ��� ����Ǵ��� �˰� �;��.','���� ����� ������ ��� ����Ǵ��� �˰� �;��.',to_date('22/10/19 19:24:53','RR/MM/DD HH24:MI:SS'),1,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (4,'default.png','���� ���������� ����ΰ���?','���� ���������� ����ΰ���?',to_date('22/10/19 19:26:43','RR/MM/DD HH24:MI:SS'),1,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (5,'default.png','��å(����)���� �̿�� �湮�� ���� ��й�ȣ �� ���� ������ �����˴ϴ�','��å(����)���� �̿�� �湮�� ���� ��й�ȣ �� ���� ������ �����˴ϴ�',to_date('22/10/19 19:27:30','RR/MM/DD HH24:MI:SS'),2,'bbb1234');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (1,'default.png','�ݷ��� �̿�/���� ���񽺴� ������?','�ݷ��� �̿�/���� ���񽺴� ������?',to_date('22/10/19 19:17:16','RR/MM/DD HH24:MI:SS'),3,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (6,'default.png','�湮���� �̿� ���� ����','�湮���� �̿� ���� ����',to_date('22/10/19 19:35:15','RR/MM/DD HH24:MI:SS'),1,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (7,'default.png','�湮 ��Ҵ� ��� �ϳ���?','�湮 ��Ҵ� ��� �ϳ���?',to_date('22/10/19 19:35:39','RR/MM/DD HH24:MI:SS'),2,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (8,'default.png','�湮���� ���� ����','�湮���� ���� ������ �����Ѱ���??',to_date('22/10/19 19:36:50','RR/MM/DD HH24:MI:SS'),1,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (9,'default.png','�������� �߰������� �ֳ���?','�������� �߰������� �ֳ���?',to_date('22/10/19 19:40:10','RR/MM/DD HH24:MI:SS'),2,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (10,'default.png','���ִ� ���ó���?','�ʹ� �ֱ��?',to_date('22/10/19 19:40:26','RR/MM/DD HH24:MI:SS'),3,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (11,'default.png','�湮���� �̿� ���� ����','����ΰ���?',to_date('22/10/19 19:40:39','RR/MM/DD HH24:MI:SS'),5,'wings425');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (13,'default.png','ä���� ������?','ä���� ������?',to_date('22/10/20 10:11:17','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (15,'default.png','ä���� ������?','ä���� ������?',to_date('22/10/20 10:11:23','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (33,'default.png','���� ��й�ȣ �� ���� ������ ������ ��','���� ��й�ȣ �� ���� ������ ������ ��',to_date('22/10/20 10:24:28','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (34,'default.png','���� ��й�ȣ �� ���� ������ ������ ��','���� ��й�ȣ �� ���� ������ ������ ��',to_date('22/10/20 10:24:30','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (25,'default.png','���� �Ǵ� �����Ͽ��� ���� �߰� ����� �߻��ϳ���?','���� �Ǵ� �����Ͽ��� ���� �߰� ����� �߻��ϳ���?',to_date('22/10/20 10:13:24','RR/MM/DD HH24:MI:SS'),13.5,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (39,'default.png','���� ��й�ȣ �� ���� ������ ������ ��','���� ��й�ȣ �� ���� ������ ������ ��',to_date('22/10/20 10:24:43','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (40,'default.png','���� ��й�ȣ �� ���� ������ ������ ��','���� ��й�ȣ �� ���� ������ ������ ��',to_date('22/10/20 10:24:45','RR/MM/DD HH24:MI:SS'),1,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (41,'default.png','���� ��й�ȣ �� ���� ������ ������ ��','���� ��й�ȣ �� ���� ������ ������ ��',to_date('22/10/20 10:24:48','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (43,'default.png','�ݷ��� �̿�/���� ���񽺴� ������?','����̵� ����ϳ���?',to_date('22/10/20 10:25:22','RR/MM/DD HH24:MI:SS'),2,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (44,'default.png','���ϴ� �ְ߹̿��(�����)�� ���� ������ �� �ֳ���?','���ϴ� �ְ߹̿��(�����)�� ���� ������ �� �ֳ���?',to_date('22/10/20 10:25:29','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (45,'default.png','���� ����� ������ ��� ����Ǵ��� �˰� �;��.','���� ����� ������ ��� ����Ǵ��� �˰� �;��.',to_date('22/10/20 10:25:34','RR/MM/DD HH24:MI:SS'),5,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (14,'default.png','ä���� ������?','ä���� ������?',to_date('22/10/20 10:11:20','RR/MM/DD HH24:MI:SS'),0,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (23,'default.png','���񽺴� ��� �ް� �ǳ���?','������ �޳���??',to_date('22/10/20 10:13:00','RR/MM/DD HH24:MI:SS'),7,'wiwi');
Insert into QNA (Q_NO,Q_IMG,Q_TITLE,Q_CONTENT,Q_DATE,Q_READCOUNT,M_ID) values (24,'default.png','����� 2�����ε� ���ÿ� ���񽺸� ���� �� �ֳ���?','�����ұ��?',to_date('22/10/20 10:13:15','RR/MM/DD HH24:MI:SS'),8,'wiwi');
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (2,22,'���� ����̿���',2,to_date('22/10/19 18:50:58','RR/MM/DD HH24:MI:SS'),'8849C6E03FB2410B8E97F486EA543464.png',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (16,28,'�ʹ����� �Ʒ��̿����ϴ�.',5,to_date('22/10/20 19:28:48','RR/MM/DD HH24:MI:SS'),'BF668EA80FB14414B7008C65632888F6.png',4,0,25);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (4,22,'��û�� ó�������',3,to_date('22/10/19 18:59:03','RR/MM/DD HH24:MI:SS'),'0827FDC286534983907AA1D8EC9E8CCA.jpg',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (6,18,'��ȸ���� ��������� !',3,to_date('22/10/19 19:49:57','RR/MM/DD HH24:MI:SS'),'E18DE076BF1449F5BD713F9A7D4A708F.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (11,1,'�����̶��� �񱳵� �ȵǰ� ����',5,to_date('22/10/19 20:42:11','RR/MM/DD HH24:MI:SS'),'BEFA886C0A9046C2B785720AD1C8B980.png',3,0,19);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (1,21,'��¥ ���� �Ʒ��� ���� �� ���ƿ�',5,to_date('22/10/19 18:41:23','RR/MM/DD HH24:MI:SS'),'D8D8D68BF6FE41BDA9A52E62DCE36864.png',0,19,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (5,18,'���� ������ ������',5,to_date('22/10/19 19:45:26','RR/MM/DD HH24:MI:SS'),'D16505ED765A4AFDA7803F7574B146B4.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (7,18,'���� �����ϴ� ~',5,to_date('22/10/19 20:05:23','RR/MM/DD HH24:MI:SS'),'59160102D6BA4BF6A1FE5F34B9FE3C99.png',8,0,0);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (8,18,'���� �ְ��� !',5,to_date('22/10/19 20:20:02','RR/MM/DD HH24:MI:SS'),'E577BA39CD1247BCB0B0EB667135FAA9.png',8,0,15);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (9,1,'�ʹ� ���� �Ʒ��̿����ϴ�.',5,to_date('22/10/19 20:23:18','RR/MM/DD HH24:MI:SS'),'D3B62D4E3AE245DFA943853C2B0048AB.png',0,20,16);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (14,24,'�ʹ� ���� �Ʒû翴���',4,to_date('22/10/20 11:28:38','RR/MM/DD HH24:MI:SS'),'dog.jpg',4,0,22);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (15,27,'�ʹ� ���ƿ�',5,to_date('22/10/20 15:42:37','RR/MM/DD HH24:MI:SS'),'dog.jpg',9,0,23);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (10,1,'���аŰ��ƿ�',4,to_date('22/10/19 20:32:27','RR/MM/DD HH24:MI:SS'),'3151241D5E1F415581204CF4D0B44AB2.png',0,6,17);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (12,1,'��������',5,to_date('22/10/19 21:19:27','RR/MM/DD HH24:MI:SS'),'5CF8E38B35AC4819A5AED72926B5E4C9.png',4,0,20);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (13,24,'���� ���������̾�',5,to_date('22/10/19 21:41:25','RR/MM/DD HH24:MI:SS'),'7D9A0F7C3E844B8B8D35965A5E0F8FF5.jpg',4,0,21);
Insert into REVIEW (R_NO,M_NO,R_TEXT,R_SCORE,R_DATE,R_IMG,T_NO,H_NO,E_NO) values (17,30,'�ʹ� ���� �Ʒ��Դϴ�.',5,to_date('22/10/21 16:01:40','RR/MM/DD HH24:MI:SS'),'0FEC755196A24949BEB9F969A77DF8A9.jpg',4,0,28);
REM INSERTING into TRAINER
SET DEFINE OFF;
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (1,9,0,100000,'���� �������Ʒ��� �׽�Ʈ','<p>?�̵��Ǵ� ����� ���� �����غôµ� �����̾ȵǽó���??</p>

<p>�ʹ� �������İ� ������ �η��־ ��� ��������? ������ ������ �ֽ��ϴ�</p>

<p>Super Dog (���۵�) ?�������߿伺? ���� ���ϰ� (��ȣ���Ǹ���)���� �Ҽ��־�� �����Ʒ��Դϴ�.</p>

<p>?-�и��Ҿ�- -��������-?</p>

<p>?-���ݼ�(����)- -��Ƽ�Ϲٷξ˱�-?</p>

<p>?-�躯����- -�츮���ٷξ˱�-?</p>

<p>?-��å����- -����Ʈ���̴�-?</p>

<p>������ ���ϴ� �������⿡ ���� �����ؾ��մϴ� ������ Ű��� ��İ� ��� �׸��� ȯ�� ��� �κ��� �� ���� �� �����ϴ�. ���� �ݷ����� ���ϴ°� ���ִ� ��ȣ�ڰ� �Ǿ��ּ���^^</p>
','������ �ڰ���',null,0,5,null,to_date('22/10/19 15:06:09','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (4,12,0,5000,'5���� �Ʒû��Դϴ�.','<p>&nbsp;-�����ε�- �����ൿ���� �������������� �ݷ��߰� ��ȣ���� ??����?�ȿ��� ���� ��������ϴ�</p>
','�������',null,0,4,10311,to_date('22/10/19 21:37:07','RR/MM/DD HH24:MI:SS'),4.8,5);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (2,5,0,250000,'�ݷ��� ����.�ൿ.�ɸ�.����.����.����
15���� �ְ߿��� ����1��ְ��Ʒû� ����ȣ ','<p><span style="color:#e74c3c"><span style="font-size:26px">�ݷ��� ���� ����</span></span></p>

<p><span style="color:#e74c3c"><span style="font-size:26px">�ൿ : �⺻����</span></span></p>

<p><span style="color:#d35400"><span style="font-size:26px">�ɸ� : 3ȸ�� ����</span></span></p>

<p><span style="color:#f1c40f"><span style="font-size:26px">���� : �������� �ɾ� ���� ����</span></span></p>

<p><span style="color:#1abc9c"><span style="font-size:26px">���İ��� : ���ϸԴ� �Ĵܰ��� �Ѵ� 3���� ����</span></span><br />
&nbsp;</p>
','������ �����ڰ���',null,0,15,null,to_date('22/10/19 14:57:18','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (3,6,0,120000,'�ݷ����� �ൿ���� �е����� ���͵帮�ڽ��ϴ�.','<p>&lt;���� �̺�Ʈ&gt; �ϳ�. �湮 ��� ����! �湮 ��� �� 2ȸ�� ���� ���� �� �湮 ��� ����� ����� �ص帳�ϴ�.</p>

<p>�湮 ����� ���� Ƚ���� ���Ե��� �ʽ��ϴ�. (������ �������� ���� �� �湮 ����� ������ ����� �߻� �մϴ�.)</p>
','�ݷ������ൿ������ �ڰ���',null,0,5,null,to_date('22/10/20 09:38:22','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (5,8,0,200000,'��ȣ�ڿ� �ݷ����� �ູ�� �����ࡱ �����湮����','<h5>�ȳ��ϼ���, ���� 3������ �ݷ����� �Բ� �������Դϴ�.</h5>

<p>�ݷ��� ��å�� ���Ҿ� ���� ����� �ϴ� ��Ȳ��</p>

<p>���� ������ �����(������,�����) ���Ͻø� �������� ����û</p>

<p>��Ź�����~</p>
','�ݷ������ൿ������ �ڰ���',null,0,8,null,to_date('22/10/20 09:44:03','RR/MM/DD HH24:MI:SS'),4.5,4);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (6,4,0,150000,'������ ��ȸ���� �ð�� �ڶ�� �� �ݷ��߿��� ������ ������ �ƴ� �ʼ��Դϴ�.','<p>������ ��ȸ���� �ð�� �ڶ�� �� �ݷ��߿��� ������ ������ �ƴ� �ʼ��Դϴ�.</p>
','�ݷ������ൿ������ �ڰ���',null,0,3,null,to_date('22/10/20 09:42:06','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (7,7,0,250000,'�� [KPA-CTP] �̱� ī�������̾� ��ī���� ���� Ʈ���̳� �Դϴ�. ������ ���� �̱� �ټ��� ���� ���α������ �ڰ��� ����߽��ϴ�.','<p>�� [KPA-CTP] �̱� ī�������̾� ��ī���� ���� Ʈ���̳� �Դϴ�. ������ ���� �̱� �ټ��� ���� ���α������ �ڰ��� ����߽��ϴ�.</p>
','KPA-CTP',null,0,10,null,to_date('22/10/18 16:20:08','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (8,15,0,100000,'���̹� ������ ������Ʈ �ݷ��� ���� ���ι� �ִ� ���. ��ȣ�ڿ� �ݷ����� �Բ� ��ư� �� �ִ� ����� �˷��帳�ϴ�!','<p>��ȣ�ڴԲ��� ���డ�ðų� �����ϽǶ� ȥ���ִ� �ݷ����� ����,</p>

<p>����Ͱ� ã�ư� ��ȣ�ڴԲ��� ���Ͻô� ��û����&nbsp;������ �̷�����ϴ�~</p>
',null,null,0,3,null,to_date('22/10/20 09:40:45','RR/MM/DD HH24:MI:SS'),5,11);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (10,26,0,100,'3�������ֽ��ϴ�','<p><span style="color:#1abc9c"><span style="font-size:22px">�ǸŴ� �� �̷�� ���ϴ�</span></span></p>
','�������μ���',null,0,1,null,to_date('22/10/20 11:30:16','RR/MM/DD HH24:MI:SS'),0,0);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (9,25,0,100,'ó�� ����� �Ʒû� �Դϴ�.','<p>ó�� ����� �Ʒû� �Դϴ�.</p>
','�������μ���',null,0,1,101,to_date('22/10/20 09:29:16','RR/MM/DD HH24:MI:SS'),5,1);
Insert into TRAINER (T_NO,M_NO,A_NO,T_PRICE,T_SELF,T_SEL,T_LICENSE,T_BUSINESSNO,T_BEST,T_CAREER,T_SALARY,T_DATE,T_RAVG,T_RTOTAL) values (11,29,0,10000,'3�����Դϴ�.','<p>??����� ��ǥ�� �ص帮�⿡ ���� �������� �־��??<br />
? ���� �߻� �ְ��Ʒüҿ�����<br />
��ǥ�� ���� �湮�Ͽ� ������ �����ϰ��ֽ��ϴ�.? ?<br />
?���11������ ���׶� �Ʒû� �̸�??<br />
�ݷ����� �ൿ �ɸ������� �Դϴ�.?<br />
�湮�Ʒð��� ?��:2000ȸ �̻�??�� ������ ����ϰ��ֽ��ϴ�.?<br />
? ���� �湮 ���� ���� ����?</p>
','�ְ߰����ڰ���',null,0,3,null,to_date('22/10/21 14:42:59','RR/MM/DD HH24:MI:SS'),0,0);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" MODIFY ("Q_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA" ADD PRIMARY KEY ("Q_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table DOG
--------------------------------------------------------

  ALTER TABLE "DOG" MODIFY ("D_NAME" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_AGE" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_IMG" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_WEIGHT" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_TYPE" NOT NULL ENABLE);
  ALTER TABLE "DOG" MODIFY ("D_GENDER" NOT NULL ENABLE);
  ALTER TABLE "DOG" ADD PRIMARY KEY ("D_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRAINER
--------------------------------------------------------

  ALTER TABLE "TRAINER" MODIFY ("T_SELF" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" MODIFY ("T_SEL" NOT NULL ENABLE);
  ALTER TABLE "TRAINER" ADD PRIMARY KEY ("T_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTIMATE
--------------------------------------------------------

  ALTER TABLE "ESTIMATE" ADD PRIMARY KEY ("E_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("R_TEXT" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("R_SCORE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("R_IMG" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD PRIMARY KEY ("R_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGINS
--------------------------------------------------------

  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" MODIFY ("LAST_USED" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGINS" ADD PRIMARY KEY ("SERIES")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table ADDRESS
--------------------------------------------------------

  ALTER TABLE "ADDRESS" ADD PRIMARY KEY ("A_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table HAIRSTYLIST
--------------------------------------------------------

  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SELF" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" MODIFY ("H_SEL" NOT NULL ENABLE);
  ALTER TABLE "HAIRSTYLIST" ADD PRIMARY KEY ("H_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("M_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PW" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("M_PHONE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD PRIMARY KEY ("M_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSISTENT_LOGIN
--------------------------------------------------------

  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" MODIFY ("LAST_USED" NOT NULL ENABLE);
  ALTER TABLE "PERSISTENT_LOGIN" ADD PRIMARY KEY ("SERIES")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table AD
--------------------------------------------------------

  ALTER TABLE "AD" MODIFY ("AD_IMG" NOT NULL ENABLE);
  ALTER TABLE "AD" ADD PRIMARY KEY ("AD_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" ADD PRIMARY KEY ("N_NO")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table PAY
--------------------------------------------------------

  ALTER TABLE "PAY" ADD PRIMARY KEY ("P_ORDER")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table AUTH
--------------------------------------------------------

  ALTER TABLE "AUTH" ADD CONSTRAINT "M_NO_FK" FOREIGN KEY ("M_NO")
	  REFERENCES "MEMBER" ("M_NO") ENABLE;
