# LOLDLE

**LOLDLE** est un site web de mini-jeu où le but est de deviner le champion de *League of Legends* à l'aide d'indices.  
À chaque champion proposé, le joueur reçoit des informations sur la validité de sa réponse : correcte, partiellement correcte ou incorrecte.

Le projet comprend également une interface d'administration permettant :
- De modifier les informations sur un champion.
- D'ajouter de nouveaux champions.

Les utilisateurs peuvent se connecter pour profiter de fonctionnalités supplémentaires, comme l'ajout d'amis.

---

## Fonctionnalités principales
- **Mode Joueur :** 
  - Devinez le champion grâce à des indices.
  - Indicateurs pour savoir si votre proposition est correcte ou non.
- **Mode Admin :**
  - Modification et ajout de champions via une interface dédiée.
- **Système de connexion :**
  - Inscription et connexion sécurisées.
  - Possibilité d'ajouter des amis.

---

## Installation et Configuration

### Pré-requis
- Un serveur web (comme **Apache** ou **Nginx**).
- **PHP** (version 7.4 ou supérieure).
- **MySQL** ou un autre gestionnaire de base de données compatible.

### Étapes d'installation
1. **Base de données :**
   - Importez les fichiers `projetweb.sql` et `loldle.sql` dans votre serveur MySQL pour configurer les bases de données nécessaires.
2. **Images du site :**
   - Décompressez le dossier `images.zip` dans le répertoire du projet pour permettre l'affichage des visuels des champions.

---

## Utilisation
1. Lancez le site sur votre serveur local ou hébergé.
2. Connectez-vous ou inscrivez-vous pour accéder à toutes les fonctionnalités.
3. Profitez du mode de jeu ou accédez au mode administration si vous disposez des droits nécessaires.

---

## Technologies utilisées
- **Backend :** PHP
- **Frontend :** HTML, CSS, JavaScript
- **Base de données :** MySQL
