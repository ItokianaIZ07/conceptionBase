# Schéma de conception

## Niveau1

### Etape 1

- **Schema relationnel**:
  - Plat(**id**, libelle, prix) : nouveau

- **Réponses**:
- J'ai choisi INTEGER pour la colonne prix parce que le montant des plat est en ariary et sans centime.
- J'ai choisi id SERIAL pour son idenitifiant.

### Etape 2

- **Schema relationnel**:
  - Plat(**id**, libelle, prix, #id_categorie) : modifiée
  - Categorie(**id**, libelle): nouveau

- **Réponses**:
  - La création d'une colonne categorie directement dans la table plat pourrait faussé les stats utilisant cette colonne s'il y a une faute d'ortographe dans la colonne vu que c'est un champ libre.

### Etape 3

- **Schéma relationnel**:
  - commande(**id**, date) : nouveau
  - ligne_commande(**id**, #id_commande, #id_plat, quantite) : modifiée

- **Réponses**:
  - Je place quantite dans une table ligne_commande qui contient les détals de chaque commande.

### Etape 4

- **Schéma relationnel**:
  - client(**id**, nom) : nouveau
  - commande(**id**, date, #id_client) : modifiée

- **Réponses**:
  - la clé étrangère est NOT NULL.
  - Pour ne pas perdre aucune commande il faut utiliser les jointures soit LEFT ou RIGHT(dépend dans l'ordre comment fait la jointure)
