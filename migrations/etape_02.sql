CREATE TABLE categorie(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(200) NOT NULL
);

ALTER TABLE plat ADD COLUMN id_categorie INTEGER;
ALTER TABLE plat ADD CONSTRAINT fk_categorie FOREIGN KEY (id_categorie) REFERENCES categorie(id);

INSERT INTO categorie (libelle) VALUES 
('plats malagasy'),
('plats chinois'),
('soupes'),
('desserts'),
('boissons');

UPDATE plat SET id_categorie = 1 WHERE id = 1 OR id = 2 OR id = 3;
UPDATE plat SET id_categorie = 2 WHERE id = 4;
UPDATE plat SET id_categorie = 3 WHERE id = 5;
UPDATE plat SET id_categorie = 4 WHERE id = 6;
UPDATE plat SET id_categorie = 5 WHERE id = 7;

ALTER TABLE plat ALTER COLUMN id_categorie SET NOT NULL;

-- Vérifications
INSERT INTO categorie(libelle) VALUES('pain');
SELECT c.libelle AS categorie, COUNT(p) as total FROM categorie c LEFT JOIN plat p ON c.id = p.id_categorie GROUP BY categorie;
DELETE FROM categorie WHERE libelle = 'pain';