# repositoire-SQ
ce projet est une création de base de donnée 
pour une entreprise de localisation de film dans le but 
de rendre facile la gestion de la clientèle puis les entres et les sorties du film.
==================création d'une base de donnée===================================
*  j'ai crée les tables elles sont quatre plus une table intermediaire çà fait cinq
j'ai utulisé "create table" pour créer une table  qui contient des identifiant(nom, prénom, email) des clients
une autre table contenant les noms des films
troisieme table pour cathégories des films
quatrième table pour les payments des clients
et une table intermédiaire qui est le cinquième.
origin

Creer ; 
====================comment créer un utilisateur==========================
 create user 'someuse '@' localhost ' identified by ' somepassword' ;
====================comment créer une base de données====================
 creer base de donnée acme;
===================comment supprimer l'utilisateur=======================
  ' someuser ' @ ' localhost ' ;
===================comment supprimer une base données===================
  drop database acmé;
====================comment créer un tableau===========================
1.  infoclients varchar(100); auto_increment; not null,
     nom varchar(25) ;not null,
     prenom varchar(25) ; not null ,
     email varchar(25) ; not null ,
 2. Infofilms varchar (25); auto_increment; not null,
     titre varchar (25); not null
     DateSortie date (25); not null,
     Duree varchar (25); not null,
     realisateur varchar (25); not null
3.  categoriesfilms varchar(25); auto_increment; not null
     action varchar(25) ; not null ,
     comedie varchar(25) ; not null ,
     aventure varchar(25) ; not null ,
     drame  varchar(25) ; not null ,
     horreur varchar(25) ; not null ,
4.  FilmLoue  varchar(25); auto_increment; not null,
      dateLocation date; not null ,
      dateSortie   date ; not null ,
5.  paymentClients varchar(25); auto_increment; not null,
      datepayment  date ; not null ,
      description  varchar(25) ; not null ,
      montant     varchar(25) ; not null ,
=============================comment modifier une colone=============
alter table utilisateurs add age varchar(3);
=============================comment supprimer une ligne===========
supprimer des utilisateurs where id = 6;  
======================= afficher les tableaux======================
afficher les tableaux
========================inserer une ligne==========================
insert into users
=======================inserer plusieurs ligne=====================
insert into users
======================supprimer le tableau==========================
 nomtable  
======================modifier la colonne==========================
alter table utilisateurs modify column age int (3);   
            
      
