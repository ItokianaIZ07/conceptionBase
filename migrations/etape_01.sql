CREATE TABLE plat(
    id SERIAL PRIMARY KEY,
    libelle VARCHAR(200) NOT NULL,
    prix INT DEFAULT(0)
);

INSERT INTO plat(libelle, prix) VALUES
('Romazava', 7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanjo', 8500),
('Mi sao', 6000),
('Soupe chinois', 5000),
('Mofo gasy (les 4)', 1000),
-- asiana dollar @le echapement ny quote
($$Ranon'ampango$$, 500);

-- Vérifications
SELECT * FROM plat ORDER BY prix DESC;