create database if not exists itdirectory;
use itdirectory;
create table stdlogin (
	uid int primary key not null auto_increment,
	usrname varchar(32) not null,
	pswd varchar(255) not null,
	utype int not null,
	valid boolean not null,
	constraint FK_UTYPE foreign key ()
	constraint CHK_USR check (DATALENGTH(usrname) >= 4 and DATALENGTH(usrname) <= 32),
	constraint CHK_PWD check (DATALENGTH(pwsd) >= 4 and DATALENGTH(pwsd) <= 255)
);

create table uclass (
	utcode int primary key not null auto_increment,
	utdescr 
);