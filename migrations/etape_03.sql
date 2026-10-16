CREATE TABLE commande(
    id SERIAL PRIMARY KEY,
    date_commande DATE NOT NULL
);

CREATE TABLE ligne_commande(
    id SERIAL PRIMARY KEY,
    id_commande INTEGER,
    id_plat INTEGER,
    quantite INTEGER,
    FOREIGN KEY (id_commande) REFERENCES commande(id),
    FOREIGN KEY (id_plat) REFERENCES plat(id)
);

INSERT INTO commande (date_commande) VALUES('2026-10-16');
INSERT INTO commande (date_commande) VALUES('2026-10-17');
INSERT INTO commande (date_commande) VALUES('2026-10-18');

INSERT INTO ligne_commande(id_commande, id_plat, quantite) VALUES
(1, 2, 2),
(1, 7, 4),
(2, 5, 5);

-- Vérifications
SELECT c.id as id_commande, SUM(p.prix * cl.quantite) AS montant_total FROM commande c LEFT JOIN ligne_commande cl ON c.id = cl.id_commande JOIN plat p ON p.id = cl.id_plat GROUP BY c.id; 