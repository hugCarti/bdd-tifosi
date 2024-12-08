
INSERT INTO focaccia (nom_focaccia, prix_focaccia) VALUES
('Mozaccia', 9.8),
('Gorgonzollaccia', 10.8),
('Raclaccia', 8.9),
('Emmentalaccia', 9.8),
('Tradizione', 8.9),
('Hawaienne', 11.2),
('Américaine', 10.8),
('Paysanne', 12.8);

INSERT INTO ingredient (nom_ingredient) VALUES
('Base tomate'),
('Mozarella'),
('cresson'),
('jambon fumé'),
('ail'),
('artichaut'),
('champignon'),
('parmesan'),
('poivre'),
('olive noire'),
('Gorgonzola'),
('raclette'),
('Base crème'),
('Emmental'),
('oignon'),
('jambon cuit'),
('olive verte'),
('bacon'),
('ananas'),
('piment'),
('pomme de terre'),
('Chèvre'),
('œuf');

-- Insertion des relations entre focaccia et ingredient (comprend)
INSERT INTO comprend (id_focaccia, id_ingredient)
SELECT 1, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'Mozarella', 'cresson', 'jambon fumé', 'ail', 'artichaut', 'champignon', 'parmesan', 'poivre', 'olive noire')
UNION ALL
SELECT 2, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'Gorgonzola', 'cresson', 'ail', 'champignon', 'parmesan', 'poivre', 'olive noire')
UNION ALL
SELECT 3, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'raclette', 'cresson', 'ail', 'champignon', 'parmesan', 'poivre')
UNION ALL
SELECT 4, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base crème', 'Emmental', 'cresson', 'champignon', 'parmesan', 'poivre', 'oignon')
UNION ALL
SELECT 5, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'Mozarella', 'cresson', 'jambon cuit', 'champignon', 'parmesan', 'poivre', 'olive noire', 'olive verte')
UNION ALL
SELECT 6, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'Mozarella', 'cresson', 'bacon', 'ananas', 'piment', 'parmesan', 'poivre', 'olive noire')
UNION ALL
SELECT 7, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base tomate', 'Mozarella', 'cresson', 'bacon', 'pomme de terre', 'parmesan', 'poivre', 'olive noire')
UNION ALL
SELECT 8, id_ingredient FROM ingredient WHERE nom_ingredient IN 
('Base crème', 'Chèvre', 'cresson', 'pomme de terre', 'jambon fumé', 'ail', 'artichaut', 'champignon', 'parmesan', 'poivre', 'olive noire', 'œuf');

INSERT INTO marque (nom_marque) VALUES
('Coca-cola'),
('Pepsico'),
('Monster'),
('Cristalline');

INSERT INTO boisson (id_boisson, nom_boisson, id_marque)
SELECT 1, 'Coca-cola zéro', id_marque FROM marque WHERE nom_marque = 'Coca-cola'
UNION ALL
SELECT 2, 'Coca-cola original', id_marque FROM marque WHERE nom_marque = 'Coca-cola'
UNION ALL
SELECT 3, 'Fanta citron', id_marque FROM marque WHERE nom_marque = 'Coca-cola'
UNION ALL
SELECT 4, 'Fanta orange', id_marque FROM marque WHERE nom_marque = 'Coca-cola'
UNION ALL
SELECT 5, 'Capri-sun', id_marque FROM marque WHERE nom_marque = 'Coca-cola'
UNION ALL
SELECT 6, 'Pepsi', id_marque FROM marque WHERE nom_marque = 'Pepsico'
UNION ALL
SELECT 7, 'Pepsi Max Zéro', id_marque FROM marque WHERE nom_marque = 'Pepsico'
UNION ALL
SELECT 8, 'Lipton zéro citron', id_marque FROM marque WHERE nom_marque = 'Pepsico'
UNION ALL
SELECT 9, 'Lipton Peach', id_marque FROM marque WHERE nom_marque = 'Pepsico'
UNION ALL
SELECT 10, 'Monster energy ultra gold', id_marque FROM marque WHERE nom_marque = 'Monster'
UNION ALL
SELECT 11, 'Monster energy ultra blue', id_marque FROM marque WHERE nom_marque = 'Monster'
UNION ALL
SELECT 12, 'Eau de source', id_marque FROM marque WHERE nom_marque = 'Cristalline';
