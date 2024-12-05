
-- Script pour créer la base de données tifosi et ses tables
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    cp_client INT NOT NULL
);

CREATE TABLE paye (
    jour DATE NOT NULL,
    id_client INT NOT NULL,
    PRIMARY KEY (jour, id_client),
    FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE
);

CREATE TABLE achete (
    jour DATE NOT NULL,
    id_client INT NOT NULL,
    id_menu INT,
    id_focaccia INT,
    id_boisson INT,
    PRIMARY KEY (jour, id_client, id_menu, id_focaccia, id_boisson),
    FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE,
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE SET NULL,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE SET NULL,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson) ON DELETE SET NULL
);

CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom_menu VARCHAR(45) NOT NULL,
    prix_menu FLOAT NOT NULL
);

CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(45) NOT NULL,
    prix_focaccia FLOAT NOT NULL
);

CREATE TABLE comprend (
    id_focaccia INT NOT NULL,
    id_ingredient INT NOT NULL,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ON DELETE CASCADE
);

CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(45) NOT NULL
);

CREATE TABLE contient (
    id_menu INT NOT NULL,
    id_boisson INT NOT NULL,
    PRIMARY KEY (id_menu, id_boisson),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE CASCADE,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson) ON DELETE CASCADE
);

CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(45) NOT NULL,
    id_marque INT NOT NULL,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque) ON DELETE CASCADE
);

CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(45) NOT NULL
);
