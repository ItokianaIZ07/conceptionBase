CREATE TABLE client(
    id SERIAL PRIMARY KEY,
    nom VARCHAR(150)
);

ALTER TABLE commande ADD COLUMN id_client INTEGER;
ALTER TABLE commande ADD CONSTRAINT fk_commande_client FOREIGN KEY (id_client) REFERENCES client(id);

INSERT INTO client (nom) VALUES 
('Jean');

UPDATE commande SET id_client = 1 WHERE id = 1;

-- Vérifications
SELECT c.id AS id_commande, 
    CASE 
        WHEN c.id_client ISNULL THEN 'client de passage'
        ELSE cl.nom
    END AS client
FROM commande c LEFT JOIN client cl ON c.id_client = cl.id;