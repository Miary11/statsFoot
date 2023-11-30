CREATE USER statsFoot WITH PASSWORD 'statsFoot';
ALTER USER statsFoot WITH SUPERUSER;
createdb -O statsFoot statsFoot;
\c statsFoot;

CREATE SEQUENCE ligueSeq START WITH 1 INCREMENT BY 1 CACHE 1 NO CYCLE;

CREATE TABLE Ligue(
	idLigue varchar(10) PRIMARY KEY,
	nom varchar(300)
);

INSERT INTO Ligue VALUES ('L' || nextval('ligueSeq'),'Bundesliga');
INSERT INTO Ligue VALUES ('L' || nextval('ligueSeq'),'Ligue 1');
INSERT INTO Ligue VALUES ('L' || nextval('ligueSeq'),'Premier League');
INSERT INTO Ligue VALUES ('L' || nextval('ligueSeq'),'LaLiga');
INSERT INTO Ligue VALUES ('L' || nextval('ligueSeq'),'Serie A');

CREATE SEQUENCE equipeSeq START WITH 4 INCREMENT BY 1 CACHE 1 NO CYCLE;

CREATE TABLE Equipe(
	idEquipe varchar(10) PRIMARY KEY,
	nom varchar(300),
	idLigue varchar(10),
	FOREIGN KEY (idLigue) REFERENCES Ligue(idLigue)
);

INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Bayern Munich','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Paris Saint-Germain','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Bayer Leverkusen','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Manchester City','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Real Madrid','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Inter','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'VfB Stuttgart','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Atletico Madrid','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Barcelona','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Newcastle','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Tottenham','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Arsenal','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Liverpool','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Monaco','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'RB Leipzig','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Napoli','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Aston Villa','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Juventus','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Lille','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Girona','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Marseille','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Roma','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Real Betis','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Nice','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Manchester United','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Everton','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Chelsea','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Crystal Palace','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Hoffenheim','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Brest','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Sheffield United','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Valencia','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Sevilla','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Mallorca','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Strasbourg','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Las Palmas','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Wolves','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Reims','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Bochum','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Montpellier','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Nottingham Forest','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Bournemouth','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'FC Koln','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Clermont Foot','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Lorient','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Lyon','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Luton','L3');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Mainz 05','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Udinese','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Eintracht Frankfurt','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'AC Milan','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Empoli','L5');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Freiburg','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Lens','L2');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Granada','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Bayer Leverkusen','L1');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'Villarreal','L4');
INSERT INTO Equipe VALUES ('E' || nextval('equipeSeq'),'West Ham','L3');

CREATE SEQUENCE categorieSeq START WITH 1 INCREMENT BY 1 CACHE 1 NO CYCLE;

CREATE TABLE Categorie(
	idCategorie varchar(10) PRIMARY KEY,
	nom varchar(300)
);

INSERT INTO Categorie VALUES ('CAT' || nextval('categorieSeq'),'Domicile');
INSERT INTO Categorie VALUES ('CAT' || nextval('categorieSeq'),'Exterieur');

CREATE TABLE StatsEquipeGeneral(
	idEquipe varchar(10),
	buts numeric,
	tirMatch numeric,
	cartonJaune numeric,
	cartonRouge numeric,
	possession numeric,
	passesReussies numeric,
	aerienGagnes numeric,
	note numeric,
	idCategorie varchar(10),
	FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
	FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
);

INSERT INTO StatsEquipeGeneral VALUES ('E4',27,21.7,4,1,61.9,88.8,13,7.21,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E6',21,19.3,8,0,65.5,90.2,11.7,7.05,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E20',23,15.3,17,0,57.6,86.8,9.5,7.04,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E16',17,21.5,5,1,66.9,87.9,9.5,7.04,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E7',17,12.5,9,2,60.6,90.4,7.5,7.03,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E10',20,18.5,8,0,59.5,87.0,16.2,7.01,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E5',20,15.6,5,0,70.8,91.0,6.4,7.01,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E8',15,20.2,11,0,59.6,88.9,8.8,7.00,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E13',18,14.6,20,0,54.0,83.6,12.6,6.93,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E18',19,15.5,9,0,56.9,86.4,9.5,6.91,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E12',15,16,16,0,65.7,89.1,10,6.89,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E9',17,17.7,9,0,52,86.2,13,6.89,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E24',7,15,5,0,52,85.5,10.4,6.89,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E17',13,13.2,14,0,55.4,83.1,11.5,6.87,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E11',17,16,11,0,53.4,85.8,13.1,6.84,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E25',18,14.1,11,0,54.3,84.4,13.4,6.84,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E22',8,12.3,9,1,56.8,83.4,13.2,6.83,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E15',18,15,9,1,61.6,88.3,13.1,6.82,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E26',10,15.3,14,0,53,86,12.3,6.82,'CAT1');
INSERT INTO StatsEquipeGeneral VALUES ('E27',7,12.9,11,1,52,86.8,9.7,6.78,'CAT1');

INSERT INTO StatsEquipeGeneral VALUES ('E4',16,18.2,13,0,63.9,88.8,12.5,7.12,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E5',14,17.8,12,0,64.9,89.9,7.7,7.07,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E6',16,13.2,15,0,55.7,87.5,7.5,6.91,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E9',13,14.7,8,0,59.8,86.6,17.8,6.89,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E7',16,19.9,14,0,63.8,90.1,8.3,6.89,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E8',16,15.5,15,1,55.6,90.3,8,6.88,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E19',16,16,17,0,57.2,85.7,11.7,6.86,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E14',15,14.3,19,1,62.1,88.2,9.6,6.84,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E32',15,11.5,19,0,48.8,77.5,17.7,6.84,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E11',13,10.5,14,1,52,83.5,12.2,6.83,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E21',9,10.8,17,0,48.1,83.2,13.7,6.79,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E28',8,13,11,0,48.6,80.5,15.3,6.77,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E15',9,14,8,1,60.5,85.9,13.5,6.75,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E23',16,13.4,19,0,54.8,85.6,13,6.75,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E12',12,14.7,17,1,67.8,89.2,14.3,6.74,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E31',7,12.9,14,0,42,78,16.4,6.74,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E10',11,13.3,8,0,55.9,84.2,15.7,6.72,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E30',12,12.5,25,1,59,87.8,10,6.71,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E29',9,11.2,14,1,37.8,74.7,18.7,6.70,'CAT2');
INSERT INTO StatsEquipeGeneral VALUES ('E17',14,16,17,0,54.9,83.6,11,6.70,'CAT2');

create or replace view statsEquipeGeneralDomicile as (select Equipe.nom as equipe,Ligue.nom as ligue,buts,tirMatch,cartonJaune,cartonRouge,possession,passesReussies,aerienGagnes,note
	from StatsEquipeGeneral
	join Equipe on StatsEquipeGeneral.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT1' 
	order by note desc
);

create or replace view statsEquipeGeneralExterieur as (select Equipe.nom as equipe,Ligue.nom as ligue,buts,tirMatch,cartonJaune,cartonRouge,possession,passesReussies,aerienGagnes,note
	from StatsEquipeGeneral
	join Equipe on StatsEquipeGeneral.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT2' 
	order by note desc
);

create or replace view statsEquipeGeneralGeneral as (select Equipe.nom as equipe,Ligue.nom as ligue,sum(buts) as buts,avg(tirMatch) as tirMatch,sum(cartonJaune) as cartonJaune,sum(cartonRouge) as cartonRouge,avg(possession) as possession,avg(passesReussies) as passesReussies,avg(aerienGagnes) as aerienGagnes,avg(note) as note
	from StatsEquipeGeneral
	join Equipe on StatsEquipeGeneral.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	group by Equipe.nom,Ligue.nom 
	order by avg(note) desc limit 20
);

CREATE TABLE StatsEquipeDefense(
	idEquipe varchar(10),
	tirMatch numeric,
	tacleMatch numeric,
	interceptionMatch numeric,
	fauteMatch numeric,
	horsJeuxMatch numeric,
	note numeric,
	idCategorie varchar(10),
	FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
	FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
);

INSERT INTO StatsEquipeDefense VALUES ('E37',11,22.4,9,14,5.6,6.59,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E48',17.3,20.9,12.1,11.7,1.9,6.73,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E36',11,20.7,8.3,14.4,2.9,6.71,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E29',9.9,20,9,11.6,2,6.57,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E25',8.6,20,6.9,12.9,1.9,6.84,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E49',12.4,20,10.1,16.1,1.7,6.47,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E38',13,19.9,10,13.9,0.6,6.62,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E14',13.8,19.8,8.2,11,3.2,6.76,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E40',15.3,19.7,9.3,15.5,2.7,6.60,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E45',13.9,19.1,9.3,12.4,1.3,6.54,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E47',13,19,9.6,12.4,1.6,6.49,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E34',19.9,18.9,9.1,11.9,2,6.34,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E17',10,18.8,11.2,16.2,2.2,6.87,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E50',13.5,18.7,9.2,12,1.7,6.62,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E42',11.7,18.7,8,11.8,1.5,6.67,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E51',10.2,18.6,12,14.6,2.4,6.47,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E52',9.2,18.5,6.2,12.7,1.3,6.43,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E53',9.3,18.2,7.8,11.7,1.5,6.62,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E54',13,17.8,7.3,12.2,1,6.70,'CAT1');
INSERT INTO StatsEquipeDefense VALUES ('E44',12,17.8,9.2,9.5,3,6.69,'CAT1');

INSERT INTO StatsEquipeDefense VALUES ('E35',12.1,22.1,9,13.1,0.7,6.50,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E33',13.1,22.1,10,12.3,1.4,6.61,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E43',14.2,21.7,9.3,12.2,2.3,6.65,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E55',18.2,21.3,8.2,11.2,2.5,6.44,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E39',13.6,21.3,7.3,10.6,2,6.54,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E34',18,20.8,9.2,11.8,1.8,6.34,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E14',13.3,20.6,9,12.1,1.7,6.84,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E5',15.5,20.5,7.8,10.5,1.3,7.07,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E41',14,20.3,11,16.4,3.6,6.65,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E29',14.8,20.2,9.7,12.5,1.3,6.7,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E42',16.6,20.1,8.1,12.4,2.3,6.44,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E31',12.9,20.1,9.3,11.3,0.9,6.74,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E17',10.1,20.1,11.1,14.4,3.1,6.7,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E56',16.8,19.5,9.8,9,2,6.4,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E57',12.3,19.4,8.4,14.3,2.9,6.54,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E23',12.7,19.3,10.4,11.3,1,6.45,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E30',11.2,19.2,7.7,14.8,2.8,6.71,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E38',13.2,19,11.4,13.8,1.2,6.33,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E44',15.1,19,9.6,12.3,2,6.47,'CAT2');
INSERT INTO StatsEquipeDefense VALUES ('E46',19.5,19,9.2,12.5,1.2,6.39,'CAT2');

create or replace view statsEquipeDefenseDomicile as (select Equipe.nom as equipe,Ligue.nom as ligue,tirMatch,tacleMatch,interceptionMatch,fauteMatch,horsJeuxMatch,note
	from StatsEquipeDefense
	join Equipe on StatsEquipeDefense.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT1' 
	order by tacleMatch desc
);

create or replace view statsEquipeDefenseExterieur as (select Equipe.nom as equipe,Ligue.nom as ligue,tirMatch,tacleMatch,interceptionMatch,fauteMatch,horsJeuxMatch,note
	from StatsEquipeDefense
	join Equipe on StatsEquipeDefense.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT2' 
	order by tacleMatch desc
);

create or replace view statsEquipeDefenseGeneral as (select Equipe.nom as equipe,Ligue.nom as ligue,avg(tirMatch) as tirMatch,avg(tacleMatch) as tacleMatch,avg(interceptionMatch) as interceptionMatch,avg(fauteMatch) as fauteMatch,avg(horsJeuxMatch) as horsJeuxMatch,avg(note) as note
	from StatsEquipeDefense
	join Equipe on StatsEquipeDefense.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	group by Equipe.nom,Ligue.nom 
	order by avg(tacleMatch) desc limit 20
);

CREATE TABLE StatsEquipeAttaque(
	idEquipe varchar(10),
	tirMatch numeric,
	tirCadreMatch numeric,
	dribbleMatch numeric,
	fauteSubieMatch numeric,
	note numeric,
	idCategorie varchar(10),
	FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
	FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie)
);

INSERT INTO StatsEquipeAttaque VALUES ('E40',11,3.5,17.2,10.7,6.60,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E4',21.7,9.8,14.5,8.3,7.21,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E27',12.9,3.1,14.1,11.3,6.78,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E41',11.8,4.8,12.8,9,6.69,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E6',19.3,9,12.3,8.5,7.05,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E10',18.5,9,12.2,11.7,7.01,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E8',20.2,8.3,12.2,13.2,7,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E7',12.5,5.3,11.7,11.7,7.03,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E12',16,6.4,11.6,13.9,6.89,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E22',12.3,5.3,11.3,14.2,6.83,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E45',12.1,4.7,11.3,10.7,6.54,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E5',15.6,6.3,11.3,13.1,7.01,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E19',20.2,5.7,11.2,10,6.66,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E52',14.3,5.2,11,11.3,6.43,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E33',17.8,5.6,11,13.4,6.74,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E48',9.3,3.6,10.9,12,6.73,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E14',18.3,7,10.8,13.8,6.76,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E26',15.3,4.3,10.7,14.1,6.82,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E49',15.6,5.6,10.7,9.1,6.47,'CAT1');
INSERT INTO StatsEquipeAttaque VALUES ('E58',13,5.6,10.6,13.1,6.49,'CAT1');

INSERT INTO StatsEquipeAttaque VALUES ('E4',18.2,6.8,16.8,10.3,7.12,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E5',17.8,7.3,13.3,11,7.07,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E12',14.7,5.9,12.9,14.7,6.74,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E17',16,6.6,11.1,10.1,6.70,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E30',12.5,5.2,11,12.7,6.71,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E48',8,3,11,13,6.49,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E14',14.3,5,10.9,15.1,6.84,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E6',13.2,5.8,10.8,15.2,6.91,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E60',9.2,4,10.8,14,6.57,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E22',12.7,5.1,10.7,14,6.7,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E33',13.4,4,10.4,14.1,6.61,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E8',15.5,5.8,10.4,14.1,6.88,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E45',12.7,5,10.3,9.2,6.39,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E31',12.9,4.6,10.3,11.3,6.74,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E61',12.1,3.7,10.1,9.6,6.68,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E26',11.1,3.6,10,14.7,6.49,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E47',11.8,3.6,9.8,13.4,6.54,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E35',9.6,3.7,9.7,12.7,6.5,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E58',9.4,3.1,9.7,14.9,6.3,'CAT2');
INSERT INTO StatsEquipeAttaque VALUES ('E11',10.5,4.8,9.7,11.8,6.83,'CAT2');

create or replace view statsEquipeAttaqueDomicile as (select Equipe.nom as equipe,Ligue.nom as ligue,tirMatch,tirCadreMatch,dribbleMatch,fauteSubieMatch,note
	from StatsEquipeAttaque
	join Equipe on StatsEquipeAttaque.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT1' 
	order by dribbleMatch desc
); 

create or replace view statsEquipeAttaqueExterieur as (select Equipe.nom as equipe,Ligue.nom as ligue,tirMatch,tirCadreMatch,dribbleMatch,fauteSubieMatch,note
	from StatsEquipeAttaque
	join Equipe on StatsEquipeAttaque.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	where idCategorie = 'CAT2' 
	order by dribbleMatch desc
); 

create or replace view statsEquipeAttaqueGeneral as (select Equipe.nom as equipe,Ligue.nom as ligue,avg(tirMatch) as tirMatch,avg(tirCadreMatch) as tirCadreMatch,avg(dribbleMatch) as dribbleMatch,avg(fauteSubieMatch) as fauteSubieMatch,avg(note) as note
	from StatsEquipeAttaque
	join Equipe on StatsEquipeAttaque.idEquipe = Equipe.idEquipe
	join Ligue on Equipe.idLigue = Ligue.idLigue
	group by Equipe.nom,Ligue.nom 
	order by avg(dribbleMatch) desc limit 20
); 