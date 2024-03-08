##   Projet : Movie Library

### 1. Introduction

Ce document présente les étapes de création d'une application "Movie Library" utilisant Core Data, le design pattern MVVM et les fonctionnalités d'ajout, de suppression et de modification de films.

### 2. Outils et technologies

-   Xcode 14+
-   Swift 5+
-   SwiftUI
-   Core Data
-   MVVM

### 3. Structure du projet

Le projet sera composé des éléments suivants :

-   **Model:**  Les classes représentant les films et leurs attributs (titre, genre, année de sortie, etc.).
-   **Views:**  Les interfaces utilisateur pour afficher la liste des films, les détails d'un film et les formulaires d'ajout/modification.
-   **ViewModels:**  Les classes qui encapsulent la logique métier et exposent des données aux vues.
-   **Repository:**  La logique métier pour gérer les interactions avec Core Data et les vues.

### 4. Mise en place de Core Data

1.  Création de la base de donnée Core Data.
2.  Création d'un modèle de données Core Data avec les entités, attributs ainsi que les relations nécessaires.
3.  Implémentation des classes  `NSManagedObject`  pour les modèles.

### 5. Design pattern MVVM

1.  Définissez les classes  `ViewModel`  pour chaque type de vue.
2.  Les ViewModels exposent des propriétés observables pour les données et les actions de l'interface utilisateur.
3.  Les vues lient les propriétés des ViewModels aux éléments d'interface utilisateur.
4.  Le repository interagit avec les ViewModels et Core Data pour mettre à jour les données.

### 6. Fonctionnalités CRUD

1.  **CREATE**: Créer un exemplaire
2. **READ**: Obtenir le détail d'un film
3. **UPDATE**: Modification d'un film
4. **DELETE**: Suppression d'un film

### 7. Conclusion

Ce document présente les bases de la création d'une application "Movie Library" avec Core Data, MVVM et les fonctionnalités CRUD.
