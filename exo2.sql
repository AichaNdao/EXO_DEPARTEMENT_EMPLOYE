create database DEP;
use DEP;

create table departement (
DNO int, 
DNOM varchar(32), 
DIR varchar(32),
 VILLE varchar(32));
 
 create table employe (
 ENO int,
 ENOM varchar(32),
 PROF varchar(32),
 DATEEMB varchar(32), 
 SAL int, 
 COMM varchar(32),
 DNO int);
insert into departement (DNO, DNOM, DIR, VILLE) values
(1,'finance','mermoz','dakar'),
(2,'vente','almadies','dakar'),
(3,'production','bargny','Rufisque'),
(4,'logistique','Yvelynes','paris'),
(5,'informatique','manhattan','newyork');


insert into employe (ENO, ENOM, PROF, DATEEMB, SAL, COMM, DNO)values
(10,'fatou','assistante','01/01/2023',200000,'10%',1),
(20,'arame','vendeur','01/02/2023',150000,'',2),
(30,'aicha','chef de projet','01/03/2023',500000,'',3),
(40,'babacar','consultant','01/04/2023',300000,'5%',4),
(50,'mohamed','analyste de données','01/05/2023',800000,'9%',5);

--question1
SELECT ENOM, COMM
FROM employe
 WHERE COMM IS NOT NULL;

--question2
SELECT ENOM, PROF, SAL 
FROM employe 
ORDER BY PROF, SAL DESC;

--question3
SELECT SAL 
FROM employe;

--question4
SELECT AVG(SAL) 
FROM employe 
WHERE DNO = (SELECT DNO FROM departement WHERE DNOM = 'production');

--question5
  SELECT DNO AS NumDep, MAX(SAL) AS SalMax
  FROM employe ;

--question6
SELECT  AVG(SAL) AS SalMoy
FROM employe;

--question7
SELECT  PROF AS prof, MIN(SAL) AS SalMin 
 FROM employe;
 

