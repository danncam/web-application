create database if not exists SIGADB;
use SIGADB;

create table USERS (UID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
					USRNAME VARCHAR(20) NOT NULL,
					PSWD VARCHAR(10) NOT NULL);

create table REGISTER (ID INTEGER NOT NULL PRIMARY KEY,
					NAME VARCHAR(120),
					DOCID VARCHAR(11),
					TEL VARCHAR(11),
					BIRTHDATE DATE,
					GENRE CHAR(1),
					ADDRESS VARCHAR(200),
					ZIPCODE VARCHAR(11),
					CITY VARCHAR(80),
					FOREIGN KEY (ID) REFERENCES USERS(UID),
					CONSTRAINT CHK_GENRE CHECK(GENRE = 'F' OR GENRE = 'M'));