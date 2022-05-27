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
# sql "Localisation de film"
=======ce projet consiste à créer une base de donnée pour le stockage des renseignements sur les clients et les films =======


# création de table
les cinq tables à savoir InfoClients, InfoFilms, CatégorieFilms, FilmLoués et paymentClient sont crées à la même manière.

============create table 'rental' clients (id primary key (auto_increment(INT)), nom Varchar(25),email Varchar(25))==========

# ajouter les données

============= INSERT INTO 'rental'. clients (nom, prénom, email)
values (Akakpo, dorothee,dakakpoyawa@gmail.com)=========


# Modifier les données
====== ALTER TABLE 'rental' client;======

# sélectionner les données

======== select * from 'rental' clients;=====

