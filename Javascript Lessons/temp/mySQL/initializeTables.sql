 CREATE SCHEMA mydata1;
 CREATE TABLE mydata1.Vanzator (ID CHARACTER(6) PRIMARY KEY, Nume CHARACTER(20));
 CREATE TABLE mydata1.Cumparator (ID_vanz CHAR VARYING(6), ID INT NOT NULL PRIMARY KEY, Nume CHAR VARYING(20) UNIQUE, Ramura CHAR VARYING(3) NULL, FOREIGN KEY (ID_vanz) REFERENCES mydata1.vanzator(ID));
