# Schéma de conception

## Niveau1

### Etape 1

- **Schema relationnel**:
  - Plat(**id**, libelle, prix)

- **Réponses**:
- J'ai choisi INTEGER pour la colonne prix parce que le montant des plat est en ariary et sans centime.
- J'ai choisi id SERIAL pour son idenitifiant.

### Etape 2

- **Schema relationnel**:
  - Plat(**id**, libelle, prix, #id_categorie)
  - Categorie(**id**, libelle)

- **Réponses**:
  - La création d'une colonne categorie directement dans la table plat pourrait faussé les stats utilisant cette colonne s'il y a une faute d'ortographe dans la colonne vu que c'est un champ libre.

### Etape 3

- **Schéma relationnel**:
  - commande(**id**, date)
  - ligne_commande(**id**, #id_commande, #id_plat, quantite)

- **Réponses**:
  - Je place quantite dans une table ligne_commande qui contient les détals de chaque commande.
