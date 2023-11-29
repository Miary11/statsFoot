
CREATE TABLE Ligue (
    idLigue INT PRIMARY KEY,
    nom VARCHAR(255)
);

CREATE TABLE Equipe (
    idEquipe INT PRIMARY KEY,
    nom VARCHAR(255),
    idLigue INT,
    FOREIGN KEY (idLigue) REFERENCES Ligue(idLigue)
);

-- Table pour les Catégories de statistiques
CREATE TABLE Categorie (
    idCategorie INT PRIMARY KEY,
    nom VARCHAR(255)
);

CREATE TABLE General (
    idGeneral INT PRIMARY KEY,
    Nom VARCHAR(255),
    idEquipe INT,
    idCategorie INT,
    idLigue INT,
    Buts INT,
    Tirspm INT,
    Discipline INT,
    Possession DECIMAL(5, 2),
    PasseReussies DECIMAL(5, 2),
    AeriensGagnes INT,
    Note DECIMAL(5, 2),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie),
    FOREIGN KEY (idLigue) REFERENCES Ligue(idLigue)
);

CREATE TABLE Defense (
    IdDefense INT PRIMARY KEY,
    idCategorie INT,
    Nom VARCHAR(255),
    idEquipe INT,
    idLigue INT,
    Tirspm INT,
    Taclespm INT,
    Fautespm INT,
    HorsJeuxpm INT,
    Note DECIMAL(5, 2),
    FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (idLigue) REFERENCES Ligue(idLigue)
);

CREATE TABLE Attaque (
    IdAttaque INT PRIMARY KEY,
    idCategorie INT,
    IdEquipe INT,
    IdLigue INT,
    Tirspm INT,
    TirsCApm INT,
    Dribblespm INT,
    FautesSubiespm INT,
    Note DECIMAL(5, 2),
    FOREIGN KEY (idCategorie) REFERENCES Categorie(idCategorie),
    FOREIGN KEY (IdEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (IdLigue) REFERENCES Ligue(idLigue)
);


-- Insertion des données dans la table "Ligue"
INSERT INTO Ligue (idLigue, nom) VALUES
(1, 'Bundesliga'),
(2, 'Ligue 1'),
(3, 'Premier League'),
(4, 'LaLiga'),
(5, 'Serie A');

-- Insertion des données dans la table "Equipe" 
INSERT INTO Equipe (idEquipe, nom, idLigue) VALUES
(1, 'Bayern Munich', 1),
(2, 'Paris Saint-Germain', 2),
(3, 'Bayer Leverkusen', 1),
(4, 'Manchester City', 3),
(5, 'Real Madrid', 4),
(6, 'Inter', 5),
(7, 'VfB Stuttgart', 1),
(8, 'Atletico Madrid', 4),
(9, 'Barcelona', 4),
(10, 'Newcastle', 3),
(11, 'Tottenham', 3),
(12, 'Arsenal', 3),
(13, 'Liverpool', 3),
(14, 'Monaco', 2),
(15, 'RB Leipzig', 1),
(16, 'Napoli', 5),
(17, 'Aston Villa', 3),
(18, 'Juventus', 5),
(19, 'Lille', 2),
(20, 'Girona', 4);
(21, 'Marseille', 2);
(22, 'Roma', 5);
(23, 'Real Betis', 4);
(24, 'Nice', 2);
(25, 'Manchester United', 3);
(27, 'Everton', 3);
(28, 'Chelsea', 3);
(29, 'Crystal Palace', 3);
(30, 'Hoffenheim', 1);
(31, 'Brest', 2),
(32, 'Sheffield United', 3),
(33, 'Valencia', 4),
(34, 'Sevilla', 4),
(35, 'Mallorca', 4),
(36, 'Strasbourg', 2),
(37, 'Las Palmas', 4),
(38, 'Wolves', 3),
(39, 'Reims', 2),
(40, 'Bochum', 1),
(41, 'Montpellier', 2),
(42, 'Nottingham Forest', 3),
(43, 'Bournemouth', 3),
(44, 'FC Koln', 1),
(45, 'Clermont Foot', 2),
(46, 'Lorient', 2),
(47, 'Lyon', 2),
(48, 'Luton', 3),
(49, 'Mainz 05', 1),
(50, 'Udinese', 5),
(51, 'Eintracht Frankfurt', 1),
(52, 'AC Milan', 5),
(53, 'Empoli', 5),
(54, 'Freiburg', 1),
(55, 'Lens', 2),
(56, 'Granada', 4),
(57, 'Bayer Leverkusen', 1),
(58, 'Villarreal', 4),
(59, 'West Ham', 3);



-- Insertion des données dans la table "Categorie"
INSERT INTO Categorie (idCategorie, nom) VALUES
(1, 'General'),
(2, 'Domicile'),
(3, 'Exterieur');

-- Insertion des données dans la table "General" pour la catégorie "Général"
INSERT INTO General (Nom, idEquipe, idCategorie, idLigue, Buts, Tirspm, Discipline, Possession, PasseReussies, AeriensGagnes, Note) VALUES
('Bayern Munich', 1, 1, 1, 43, 19.9, '12,1', 62.9, 88.8, 12.8, 7.16),
('Paris Saint-Germain', 2, 1, 2, 34, 16.6, '7,0', 68.0, 90.6, 7, 7.04),
('Bayer Leverkusen', 3, 1, 1, 37, 16.3, '9.6,0', 60.6, 88.9, 9.6, 6.98),
('Manchester City', 4, 1, 3, 33, 16.5, '7.9,0', 62.3, 90.2, 7.9, 6.96),
('Real Madrid', 5, 1, 4, 31, 17.5, '8.4,0', 57.3, 89.7, 8.4, 6.93),
('Inter', 6, 1, 5, 30, 16.3, '15.2,0', 55.6, 86.4, 15.2, 6.89),
('VfB Stuttgart', 7, 1, 1, 31, 15.9, '15.9,0', 57.7, 85.7, 15.9, 6.86),
('Atletico Madrid', 8, 1, 4, 30, 13.5, '12.7,0', 52.8, 84.7, 12.7, 6.84),
('Barcelona', 9, 1, 4, 27, 15.4, '12.1,0', 66.7, 89.2, 12.1, 6.81),
('Newcastle', 10, 1, 3, 31, 13.2, '10.8,0', 53.3, 84.4, 10.8, 6.80),
('Tottenham', 11, 1, 3, 25, 16.2, '8.8,0', 60.3, 88.0, 8.8, 6.80),
('Arsenal', 12, 1, 3, 27, 14.5, '13.3,0', 61.1, 87.2, 13.3, 6.79),
('Liverpool', 13, 1, 3, 28, 17.3, '14.4,0', 57.1, 86.1, 14.4, 6.79),
('Monaco', 14, 1, 2, 27, 14.7, '11.2,0', 55.2, 83.4, 11.2, 6.78),
('RB Leipzig', 15, 1, 1, 29, 14.5, '12.8,0', 57.9, 84.4, 12.8, 6.78),
('Napoli', 16, 1, 5, 26, 17.9, '11.1,0', 58.5, 86.8, 11.1, 6.77),
('Aston Villa', 17, 1, 3, 31, 14.9, '8.2,0', 52.3, 86.2, 8.2, 6.76),
('Juventus', 18, 1, 5, 20, 13.8, '13.6,0', 47.5, 83.5, 13.6, 6.76),
('Lille', 19, 1, 2, 17, 12.5, '11.7,0', 57.1, 85.4, 11.7, 6.76),
('Girona', 20, 1, 4, 32, 13.7, '11.8,0', 56.8, 87.0, 11.8, 6.75);


-- Insertion des données dans la table "General" pour la catégorie "Domicile"
INSERT INTO General (Nom, idEquipe, idCategorie, idLigue, Buts, Tirspm, Discipline, Possession, PasseReussies, AeriensGagnes, Note) VALUES
('Bayern Munich', 1, 2, 1, 27, 21.7, '13,0', 61.9, 88.8, 13, 7.21),
('Bayer Leverkusen', 3, 2, 1, 21, 19.3, '11.7,0', 65.5, 90.2, 11.7, 7.05),
('Aston Villa', 17, 2, 3, 23, 15.3, '9.5,0', 57.6, 86.8, 9.5, 7.04),
('Liverpool', 13, 2, 3, 17, 21.5, '19.5,0', 66.9, 87.9, 19.5, 7.04),
('Manchester City', 4, 2, 3, 17, 12.5, '7.5,0', 60.6, 90.4, 7.5, 7.03),
('VfB Stuttgart', 7, 2, 1, 20, 18.5, '16.2,0', 59.5, 87.0, 16.2, 7.01),
('Paris Saint-Germain', 2, 2, 2, 20, 15.6, '6.4,0', 70.8, 91.0, 6.4, 7.01),
('Real Madrid', 5, 2, 4, 15, 20.2, '8.8,0', 59.6, 88.9, 8.8, 7.00),
('Newcastle', 10, 2, 3, 18, 14.6, '12.6,0', 54.0, 83.6, 12.6, 6.93),
('RB Leipzig', 15, 2, 1, 19, 15.5, '9.5,0', 56.9, 86.4, 9.5, 6.91),
('Barcelona', 9, 2, 4, 15, 16, '10,0', 65.7, 89.1, 10, 6.89),
('Inter', 6, 2, 5, 17, 17.7, '13,0', 52.0, 86.2, 13, 6.89),
('Marseille', 21, 2, 2, 7, 15, '10.4,0', 52.0, 85.5, 10.4, 6.89),
('Monaco', 14, 2, 2, 13, 13.2, '11.5,0', 55.4, 83.1, 11.5, 6.87),
('Atletico Madrid', 8, 2, 4, 17, 16, '13.1,0', 53.4, 85.8, 13.1, 6.84),
('Roma', 22, 2, 5, 18, 14.1, '13.4,0', 54.3, 84.4, 13.4, 6.84),
('Lille', 19, 2, 2, 8, 12.3, '13.2,0', 56.8, 83.4, 13.2, 6.83),
('Arsenal', 12, 2, 3, 18, 15, '13.1,0', 61.6, 88.3, 13.1, 6.82),
('Real Betis', 23, 2, 4, 10, 15.3, '12.3,0', 53.0, 86.0, 12.3, 6.82),
('Nice', 24, 2, 2, 7, 12.9, '9.7,0', 52.0, 86.8, 9.7, 6.78);

-- Insertion des données dans la table "General" pour la catégorie "Extérieure"
INSERT INTO General (Nom, idEquipe, idCategorie, idLigue, Buts, Tirspm, Discipline, Possession, PasseReussies, AeriensGagnes, Note) VALUES
('Bayern Munich', 1, 3, 1, 16, 18.2, '12.5,0', 63.9, 88.8, 12.5, 7.12),
('Paris Saint-Germain', 2, 3, 2, 14, 17.8, '7.7,0', 64.9, 89.9, 7.7, 7.07),
('Bayer Leverkusen', 3, 3, 1, 16, 13.2, '7.5,0', 55.7, 87.5, 7.5, 6.91),
('Inter', 6, 3, 5, 13, 14.7, '17.8,0', 59.8, 86.6, 17.8, 6.89),
('Manchester City', 4, 3, 3, 16, 19.9, '8.3,0', 63.8, 90.1, 8.3, 6.89),
('Real Madrid', 5, 3, 4, 16, 15.5, '8,0', 55.6, 90.3, 8, 6.88),
('Napoli', 16, 3, 5, 16, 16, '11.7,0', 57.2, 85.7, 11.7, 6.86),
('Tottenham', 11, 3, 3, 15, 14.3, '9.6,0', 62.1, 88.2, 9.6, 6.84),
('Hoffenheim', 30, 3, 1, 15, 11.5, '17.7,0', 48.8, 77.5, 17.7, 6.84),
('Atletico Madrid', 8, 3, 4, 13, 10.5, '12.2,0', 52.0, 83.5, 12.2, 6.83),
('Juventus', 18, 3, 5, 9, 10.8, '13.7,0', 48.1, 83.2, 13.7, 6.79),
('Manchester United', 25, 3, 3, 8, 13, '15.3,0', 48.6, 80.5, 15.3, 6.77),
('Arsenal', 12, 3, 3, 9, 14, '13.5,0', 60.5, 85.9, 13.5, 6.75),
('Girona', 20, 3, 4, 16, 13.4, '13,0', 54.8, 85.6, 13, 6.75),
('Barcelona', 9, 3, 4, 12, 14.7, '14.3,0', 67.8, 89.2, 14.3, 6.74),
('Crystal Palace', 29, 3, 3, 7, 12.9, '16.4,0', 42.0, 78.0, 16.4, 6.74),
('VfB Stuttgart', 7, 3, 1, 11, 13.3, '15.7,0', 55.9, 84.2, 15.7, 6.72),
('Chelsea', 28, 3, 3, 12, 12.5, '10,0', 59.0, 87.8, 10, 6.71),
('Everton', 27, 3, 3, 9, 11.2, '18.7,0', 37.8, 74.7, 18.7, 6.70),
('Monaco', 14, 3, 2, 14, 16, '11,0', 54.9, 83.6, 11, 6.70);

-- Insertion des données dans la table "Defense" pour la catégorie "Général"
INSERT INTO Defense (Nom, idEquipe, idCategorie, idLigue, Tirspm, Taclespm, Interceptionspm, Fautespm, Horsjeuxpm, Note) VALUES
('Tottenham', 11, 1, 3, 13.5, 20.2, 8.6, 11.6, 2.4, 6.80),
('Everton', 19, 1, 3, 12.2, 20.1, 9.3, 12, 1.7, 6.63),
('Brest', 31, 1, 2, 11.5, 19.9, 9.8, 13.3, 0.9, 6.67),
('Sheffield United', 32, 1, 3, 19, 19.8, 9.2, 11.8, 1.9, 6.34),
('Valencia', 33, 1, 4, 9.7, 19.6, 9.5, 13.8, 1.3, 6.57),
('Sevilla', 34, 1, 4, 12.4, 19.6, 8.5, 12.9, 2.7, 6.66),
('Mallorca', 35, 1, 4, 14.2, 19.5, 9.5, 16.7, 3.7, 6.49),
('Monaco', 14, 1, 2, 10.1, 19.5, 11.2, 15.2, 2.7, 6.78),
('Strasbourg', 36, 1, 2, 13.1, 19.5, 10.6, 13.8, 0.8, 6.50),
('Las Palmas', 37, 1, 4, 11.9, 19.5, 7.9, 11, 2.1, 6.57),
('Crystal Palace', 16, 1, 3, 12.3, 19.5, 8.7, 11.5, 1.2, 6.71),
('Wolves', 38, 1, 3, 14.5, 19.2, 8.7, 13.8, 2.2, 6.63),
('Reims', 39, 1, 2, 13.2, 19.2, 10.7, 14.6, 3.3, 6.67),
('Paris Saint-Germain', 2, 1, 2, 12.1, 18.9, 7.9, 9.8, 1.5, 7.04),
('Bochum', 40, 1, 1, 15.4, 18.5, 9.6, 13.5, 2.3, 6.51),
('Montpellier', 41, 1, 2, 14.7, 18.5, 8.9, 11.3, 2.4, 6.67),
('Nottingham Forest', 42, 1, 3, 13.7, 18.5, 9.4, 11, 2.5, 6.57),
('Bournemouth', 43, 1, 3, 16.4, 18.5, 8.4, 12.5, 1.3, 6.47),
('FC Koln', 44, 1, 1, 16.8, 18.2, 10.3, 11.8, 1.7, 6.46),
('Clermont Foot', 45, 1, 2, 13.3, 18.1, 10.3, 12, 1.8, 6.51);

-- Insertion des données dans la table "Defense" pour la catégorie "Domicile"
INSERT INTO Defense (Nom, idEquipe, idCategorie, idLigue, Tirspm, Taclespm, Interceptionspm, Fautespm, Horsjeuxpm, Note) VALUES
('Mallorca', 35, 2, 4, 11, 22.4, 9, 14, 5.6, 6.59),
('Lorient', 46, 2, 2, 17.3, 20.9, 12.1, 11.7, 1.9, 6.73),
('Sevilla', 34, 2, 4, 11, 20.7, 8.3, 14.4, 2.9, 6.71),
('Everton', 27, 2, 3, 9.9, 20, 9, 11.6, 2, 6.57),
('Roma', 22, 2, 5, 8.6, 20, 6.9, 12.9, 1.9, 6.84),
('Lyon', 47, 2, 2, 12.4, 20, 10.1, 16.1, 1.7, 6.47),
('Strasbourg', 36, 2, 2, 13, 19.9, 10, 13.9, 0.6, 6.62),
('Tottenham', 11, 2, 3, 13.8, 19.8, 8.2, 11, 3.2, 6.76),
('Wolves', 38, 2, 3, 15.3, 19.7, 9.3, 15.5, 2.7, 6.60),
('Bournemouth', 43, 2, 3, 13.9, 19.1, 9.3, 12.4, 1.3, 6.54),
('Clermont Foot', 45, 2, 2, 13, 19, 9.6, 12.4, 1.6, 6.49),
('Sheffield United', 32, 2, 3, 19.9, 18.9, 9.1, 11.9, 2, 6.34),
('Monaco', 14, 2, 2, 10, 18.8, 11.2, 16.2, 2.2, 6.87),
('Luton', 48, 2, 3, 13.5, 18.7, 9.2, 12, 1.7, 6.62),
('Crystal Palace', 16, 2, 3, 11.7, 18.7, 8, 11.8, 1.5, 6.67),
('Mainz 05', 49, 2, 1, 10.2, 18.6, 12, 14.6, 2.4, 6.47),
('Udinese', 50, 2, 5, 9.2, 18.5, 6.2, 12.7, 1.3, 6.43),
('Eintracht Frankfurt', 51, 2, 1, 9.3, 18.2, 7.8, 11.7, 1.5, 6.62),
('AC Milan', 52, 2, 5, 13, 17.8, 7.3, 12.2, 1, 6.70),
('Nottingham Forest', 42, 2, 3, 12, 17.8, 9.2, 9.5, 3, 6.69);

-- Insertion des données dans la table "Defense" pour la catégorie "Exterieur"
INSERT INTO Defense (Nom, idEquipe, idCategorie, idLigue, Tirspm, Taclespm, Interceptionspm, Fautespm, Horsjeuxpm, Note) VALUES
('Valencia', 5, 3, 4, 12.1, 22.1, 9, 13.1, 0.7, 6.50),
('Brest', 59, 3, 2, 13.1, 22.1, 10, 12.3, 1.4, 6.61),
('Montpellier', 19, 3, 2, 14.2, 21.7, 9.3, 12.2, 2.3, 6.65),
('Empoli', 55, 3, 5, 18.2, 21.3, 8.2, 11.2, 2.5, 6.44),
('Las Palmas', 20, 3, 4, 13.6, 21.3, 7.3, 10.6, 2, 6.54),
('Sheffield United', 32, 3, 3, 18, 20.8, 9.2, 11.8, 1.8, 6.34),
('Tottenham', 11, 3, 3, 13.3, 20.6, 9, 12.1, 1.7, 6.84),
('Paris Saint-Germain', 14, 3, 2, 15.5, 20.5, 7.8, 10.5, 1.3, 7.07),
('Reims', 13, 3, 2, 14, 20.3, 11, 16.4, 3.6, 6.65),
('Everton', 27, 3, 3, 14.8, 20.2, 9.7, 12.5, 1.3, 6.70),
('Bochum', 60, 3, 1, 16.6, 20.1, 8.1, 12.4, 2.3, 6.44),
('Crystal Palace', 16, 3, 3, 12.9, 20.1, 9.3, 11.3, 0.9, 6.74),
('Monaco', 14, 3, 2, 10.1, 20.1, 11.1, 14.4, 3.1, 6.70),
('Freiburg', 61, 3, 1, 16.8, 19.5, 9.8, 9, 2, 6.40),
('Lens', 21, 3, 2, 12.3, 19.4, 8.4, 14.3, 2.9, 6.54),
('Genoa', 56, 3, 5, 12.7, 19.3, 10.4, 11.3, 1, 6.45),
('Chelsea', 28, 3, 3, 11.2, 19.2, 7.7, 14.8, 2.8, 6.71),
('Strasbourg', 36, 3, 2, 13.2, 19, 11.4, 13.8, 1.2, 6.33),
('Nottingham Forest', 42, 3, 3, 15.1, 19, 9.6, 12.3, 2, 6.47),
('FC Koln', 62, 3, 1, 19.5, 19, 9.2, 12.5, 1.2, 6.39);

-- Insertion des données dans la table "Attaque" pour la catégorie "General"
INSERT INTO Attaque (Nom, idEquipe, idCategorie, idLigue, Tirspm, Tirscapta, Dribblespm, FautesSubiespm, Note) VALUES
('Bayern Munich', 1, 1, 1, 19.9, 8.3, 15.7, 9.3, 7.16),
('Wolves', 12, 1, 3, 12, 4, 13, 11.4, 6.63),
('Paris Saint-Germain', 2, 1, 2, 16.6, 6.8, 12.2, 12.2, 7.04),
('Barcelona', 9, 1, 4, 15.4, 6.1, 12.2, 14.3, 6.81),
('Bayer Leverkusen', 3, 1, 1, 16.3, 7.4, 11.6, 9.1, 6.98),
('Nice', 24, 1, 2, 13.2, 4.5, 11.5, 10.6, 6.74),
('Real Madrid', 8, 1, 4, 17.5, 6.9, 11.1, 13.7, 6.93),
('Lille', 19, 1, 2, 12.5, 5.2, 11, 14.1, 6.76),
('Lorient', 18, 1, 2, 8.7, 3.3, 10.9, 12.5, 6.62),
('Tottenham', 11, 1, 3, 16.2, 5.9, 10.8, 14.5, 6.80),
('Bournemouth', 13, 1, 3, 12.4, 4.8, 10.8, 10, 6.47),
('Brest', 59, 1, 2, 15.3, 4.7, 10.7, 12.1, 6.67),
('VfB Stuttgart', 7, 1, 1, 15.9, 6.7, 10.6, 11.7, 6.86),
('Reims', 13, 1, 2, 11.3, 4.5, 10.5, 8.7, 6.67),
('Manchester City', 5, 1, 3, 16.5, 7.2, 10.4, 11.2, 6.96),
('Real Betis', 23, 1, 4, 13.2, 3.9, 10.4, 14.4, 6.66),
('Monaco', 14, 1, 2, 14.7, 6.5, 10.2, 11.4, 6.78),
('Chelsea', 28, 1, 3, 13.8, 5, 10.2, 11.7, 6.66),
('Crystal Palace', 16, 1, 3, 12.4, 4.4, 10.2, 11.9, 6.71),
('Granada', 65, 1, 4, 11.2, 4.4, 10.1, 14, 6.39);

-- Insertion des données dans la table "Attaque" pour la catégorie "Domicile"
INSERT INTO Attaque (Nom, idEquipe, idCategorie, idLigue, Tirspm, Tirscapta, Dribblespm, FautesSubiespm, Note) VALUES
('Wolves', 12, 2, 3, 11, 3.5, 17.2, 10.7, 6.60),
('Bayern Munich', 1, 2, 1, 21.7, 9.8, 14.5, 8.3, 7.21),
('Nice', 24, 2, 2, 12.9, 3.1, 14.1, 11.3, 6.78),
('Reims', 13, 2, 2, 11.8, 4.8, 12.8, 9, 6.69),
('Bayer Leverkusen', 3, 2, 1, 19.3, 9, 12.3, 8.5, 7.05),
('VfB Stuttgart', 7, 2, 1, 18.5, 9, 12.2, 11.7, 7.01),
('Real Madrid', 8, 2, 4, 20.2, 8.3, 12.2, 13.2, 7.00),
('Manchester City', 5, 2, 3, 12.5, 5.3, 11.7, 11.7, 7.03),
('Barcelona', 9, 2, 4, 16, 6.4, 11.6, 13.9, 6.89),
('Lille', 19, 2, 2, 12.3, 5.3, 11.3, 14.2, 6.83),
('Bournemouth', 13, 2, 3, 12.1, 4.7, 11.3, 10.7, 6.54),
('Paris Saint-Germain', 2, 2, 2, 15.6, 6.3, 11.3, 13.1, 7.01),
('Napoli', 16, 2, 5, 20.2, 5.7, 11.2, 10, 6.66),
('Udinese', 21, 2, 5, 14.3, 5.2, 11, 11.3, 6.43),
('Brest', 59, 2, 2, 17.8, 5.6, 11, 13.4, 6.74),
('Lorient', 17, 2, 2, 9.3, 3.6, 10.9, 12, 6.73),
('Tottenham', 11, 2, 3, 18.3, 7, 10.8, 13.8, 6.76),
('Real Betis', 23, 2, 4, 15.3, 4.3, 10.7, 14.1, 6.82),
('Lyon', 23, 2, 2, 15.6, 5.6, 10.7, 9.1, 6.47),
('Granada', 65, 2, 4, 13, 5.6, 10.6, 13.1, 6.49);

-- Insertion des données dans la table "Attaque" pour la catégorie "Exterieur"
INSERT INTO Attaque (Nom, idEquipe, idCategorie, idLigue, Tirspm, Tirscapta, Dribblespm, FautesSubiespm, Note) VALUES
('Bayern Munich', 1, 3, 1, 18.2, 6.8, 16.8, 10.3, 7.12),
('Paris Saint-Germain', 2, 3, 2, 17.8, 7.3, 13.3, 11, 7.07),
('Barcelona', 9, 3, 4, 14.7, 5.9, 12.9, 14.7, 6.74),
('Monaco', 14, 3, 2, 16, 6.6, 11.1, 10.1, 6.70),
('Chelsea', 28, 3, 3, 12.5, 5.2, 11, 12.7, 6.71),
('Lorient', 17, 3, 2, 8, 3, 11, 13, 6.49),
('Tottenham', 11, 3, 3, 14.3, 5, 10.9, 15.1, 6.84),
('Bayer Leverkusen', 3, 3, 1, 13.2, 5.8, 10.8, 9.7, 6.91),
('Villarreal', 27, 3, 4, 9.2, 4, 10.8, 15.2, 6.57),
('Lille', 19, 3, 2, 12.7, 5.1, 10.7, 14, 6.70),
('Brest', 59, 3, 2, 13.4, 4, 10.4, 11.1, 6.61),
('Real Madrid', 8, 3, 4, 15.5, 5.8, 10.4, 14.1, 6.88),
('Bournemouth', 13, 3, 3, 12.7, 5, 10.3, 9.2, 6.39),
('Crystal Palace', 29, 3, 3, 12.9, 4.6, 10.3, 11.3, 6.74),
('West Ham', 26, 3, 3, 12.1, 3.7, 10.1, 9.6, 6.68),
('Real Betis', 23, 3, 4, 11.1, 3.6, 10, 14.7, 6.49),
('Clermont Foot', 20, 3, 2, 11.8, 3.6, 9.8, 13.4, 6.54),
('Valencia', 5, 3, 4, 9.6, 3.7, 9.7, 12.7, 6.50),
('Granada', 65, 3, 4, 9.4, 3.1, 9.7, 14.9, 6.30),
('Atletico Madrid', 10, 3, 4, 10.5, 4.8, 9.7, 11.8, 6.83);

