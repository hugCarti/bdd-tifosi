
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

CREATE TABLE client (
    id_client INT AUTO_INCREMENT PRIMARY KEY,
    nom_client VARCHAR(45),
    age INT,
    cp_client INT
);

CREATE TABLE focaccia (
    id_focaccia INT AUTO_INCREMENT PRIMARY KEY,
    nom_focaccia VARCHAR(45),
    prix_focaccia FLOAT
);

CREATE TABLE ingredient (
    id_ingredient INT AUTO_INCREMENT PRIMARY KEY,
    nom_ingredient VARCHAR(45)
);

-- relation entre focaccia et ingredient (focaccia_comprend_ingredient)
CREATE TABLE comprend (
    id_focaccia INT,
    id_ingredient INT,
    PRIMARY KEY (id_focaccia, id_ingredient),
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE CASCADE,
    FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient) ON DELETE CASCADE
);

CREATE TABLE boisson (
    id_boisson INT AUTO_INCREMENT PRIMARY KEY,
    nom_boisson VARCHAR(45),
    id_marque INT,
    FOREIGN KEY (id_marque) REFERENCES marque(id_marque) ON DELETE CASCADE
);

CREATE TABLE marque (
    id_marque INT AUTO_INCREMENT PRIMARY KEY,
    nom_marque VARCHAR(45)
);

CREATE TABLE menu (
    id_menu INT AUTO_INCREMENT PRIMARY KEY,
    nom_menu VARCHAR(45),
    prix_menu FLOAT,
    id_focaccia INT,
    id_boisson INT,
    FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia) ON DELETE SET NULL,
    FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson) ON DELETE SET NULL
);

CREATE TABLE paye (
    jour DATE,
    id_client INT,
    PRIMARY KEY (jour, id_client),
    FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE
);

CREATE TABLE achete (
    jour DATE,
    id_client INT,
    id_menu INT,
    PRIMARY KEY (jour, id_client, id_menu),
    FOREIGN KEY (jour, id_client) REFERENCES paye(jour, id_client) ON DELETE CASCADE,
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu) ON DELETE CASCADE
);
