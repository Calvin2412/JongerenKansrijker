create database JongerenKansrijker;
USE JongerenKansrijker;

create table Jongere(
jongerecode int NOT NULL AUTO_INCREMENT,
roepnaam varchar(20) NOT NULL,
tussenvoegsel varchar(7) NOT NULL,
achternaam varchar(25) NOT NULL,
inschrijfdatum date NOT NULL,
PRIMARY KEY (jongerecode)
);

create table Activiteit(
activiteitscode int NOT NULL AUTO_INCREMENT,
activiteit varchar(40) NOT NULL,
PRIMARY KEY (activiteitscode)
);

create table Instituut(
instituutscode int NOT NULL AUTO_INCREMENT,
instituut varchar(40) NOT NULL,
telefooninstituut varchar(11) NOT NULL,
PRIMARY KEY (instituutscode)
);

create table Jongereinstituut(
jongereinstituutscode int NOT NULL AUTO_INCREMENT,
jongerecode int NOT NULL, 
instituutscode int NOT NULL,
startdatum date NOT NULL,
PRIMARY KEY (jongereinstituutscode),
FOREIGN KEY (jongerecode) REFERENCES Jongere(jongerecode),
FOREIGN KEY (instituutscode) REFERENCES Instituut(instituutscode)
);

create table Jongereactiviteit(
jongereactiviteitscode int NOT NULL AUTO_INCREMENT,
jongerecode int NOT NULL,
activiteitscode int NOT NULL,
startdatum date NOT NULL,
afgerond date NOT NULL,
PRIMARY KEY (jongereactiviteitscode),
FOREIGN KEY (jongerecode) REFERENCES Jongere(jongerecode),
FOREIGN KEY (activiteitscode) REFERENCES Activiteit(activiteitscode)
);