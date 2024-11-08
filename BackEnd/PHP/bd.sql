CREATE TABLE Joueurs(
   NumeroLicence VARCHAR(50),
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Date_de_naissance VARCHAR(50),
   Taille_ VARCHAR(50),
   Poids VARCHAR(50),
   Statut VARCHAR(10),
   CommentairesSup VARCHAR(50),
   PRIMARY KEY(NumeroLicence)
);

CREATE TABLE Matchs(
   DateMatch DATE,
   HeureMatch TIME,
   NomEquipeAdverse VARCHAR(50),
   Lieu VARCHAR(50),
   Statut VARCHAR(10),
   ScoreAdverse INT,
   Score INT,
   PRIMARY KEY(DateMatch, HeureMatch)
);

CREATE TABLE Contient(
   DateMatch DATE,
   HeureMatch TIME,
   NumeroLicence VARCHAR(50),
   poste VARCHAR(20),
   titulaire LOGICAL,
   PRIMARY KEY(DateMatch, HeureMatch, NumeroLicence),
   FOREIGN KEY(DateMatch, HeureMatch) REFERENCES Matchs(DateMatch, HeureMatch),
   FOREIGN KEY(NumeroLicence) REFERENCES Joueurs(NumeroLicence)
);
