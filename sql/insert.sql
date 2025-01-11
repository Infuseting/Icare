INSERT INTO ICA_Permission VALUES(1, "*");
INSERT INTO ICA_Role VALUES(1, "Super Admin");
INSERT INTO ICA_ROLE_HAS_PERMISSION VALUES(1, 1);


INSERT INTO ICA_User VALUES(22401769);
INSERT INTO ICA_USER_HAS_ROLE VALUES(22401769, 1);

INSERT INTO ICA_User VALUES(22305450);

INSERT INTO ICA_Permission VALUES(2, "Change permission of user");
INSERT INTO ICA_Permission VALUES(3, "Change permission of role");
INSERT INTO ICA_Permission VALUES(4, "Create a new role");
INSERT INTO ICA_Permission VALUES(5, "Delete a new role");
INSERT INTO ICA_Permission VALUES(6, "Manage Prof");
INSERT INTO ICA_Permission VALUES(7, "Manage Study");

INSERT INTO ICA_Statut_Emploie VALUES(1, "Titulaire");
INSERT INTO ICA_Statut_Emploie VALUES(2, "Maître de conférence");
INSERT INTO ICA_Statut_Emploie VALUES(3, "Vacataire");
INSERT INTO ICA_Statut_Emploie VALUES(4, "Enseignant-Chercheur");
INSERT INTO ICA_Statut_Emploie VALUES(5, "Professeur Associé");

INSERT INTO ICA_Matiere VALUES(1, "R1.01 - Initiation au développement");
INSERT INTO ICA_Matiere VALUES(2, "R1.02 - Développement d'interfaces web");
INSERT INTO ICA_Matiere VALUES(3, "R1.03 - Introduction a l'architecture des ordinateurs");
INSERT INTO ICA_Matiere VALUES(4, "R1.04 - Introduction aux systemes d'exploitations");
INSERT INTO ICA_Matiere VALUES(5, "R1.05 - Introduction aux bases de données");
INSERT INTO ICA_Matiere VALUES(6, "R1.06 - Mathématiques discrètes");
INSERT INTO ICA_Matiere VALUES(7, "R1.07 - Outils mathématiques fondamentaux");
INSERT INTO ICA_Matiere VALUES(8, "R1.08 - Introduction à la gestion des entreprises");
INSERT INTO ICA_Matiere VALUES(9, "R1.09 - Introduction à l'economie durable");
INSERT INTO ICA_Matiere VALUES(10, "R1.10 - Anglais Technique");
INSERT INTO ICA_Matiere VALUES(11, "R1.11 - Bases de la communication");
INSERT INTO ICA_Matiere VALUES(12, "R1.12 - Projet professionnel et personnel");
INSERT INTO ICA_Matiere VALUES(13, "SAE1.01 - Implémentation du besoin client");
INSERT INTO ICA_Matiere VALUES(14, "SAE1.02 - Conception algorithmique");
INSERT INTO ICA_Matiere VALUES(15, "SAE1.03 - Installation poste de developpement");
INSERT INTO ICA_Matiere VALUES(16, "SAE1.04 - Creation Base de Donnée");
INSERT INTO ICA_Matiere VALUES(17, "SAE1.05 - Recueil de besoins");
INSERT INTO ICA_Matiere VALUES(18, "SAE1.06 - Environnement Economique");


INSERT INTO ICA_Type_Classe VALUES(1, "CM");
INSERT INTO ICA_Type_Classe VALUES(2, "TD");
INSERT INTO ICA_Type_Classe VALUES(3, "TP");

INSERT INTO ICA_Temporalite VALUES(1, "S1");
INSERT INTO ICA_Temporalite VALUES(2, "S2");
INSERT INTO ICA_Temporalite VALUES(3, "S3");
INSERT INTO ICA_Temporalite VALUES(4, "S4");
INSERT INTO ICA_Temporalite VALUES(5, "S5");
INSERT INTO ICA_Temporalite VALUES(6, "S6");

INSERT INTO ICA_FORMAT VALUES (1, 1, 1);
INSERT INTO ICA_FORMAT VALUES (2, 1, 1);
INSERT INTO ICA_FORMAT VALUES (3, 1, 1);
INSERT INTO ICA_FORMAT VALUES (4, 1, 1);
INSERT INTO ICA_FORMAT VALUES (5, 1, 1);
INSERT INTO ICA_FORMAT VALUES (6, 1, 1);
INSERT INTO ICA_FORMAT VALUES (7, 1, 1);
INSERT INTO ICA_FORMAT VALUES (8, 1, 1);
INSERT INTO ICA_FORMAT VALUES (9, 1, 1);
INSERT INTO ICA_FORMAT VALUES (10, 1, 1);
INSERT INTO ICA_FORMAT VALUES (11, 1, 1);
INSERT INTO ICA_FORMAT VALUES (12, 1, 1);
INSERT INTO ICA_FORMAT VALUES (13, 1, 1);
INSERT INTO ICA_FORMAT VALUES (14, 1, 1);
INSERT INTO ICA_FORMAT VALUES (15, 1, 1);
INSERT INTO ICA_FORMAT VALUES (16, 1, 1);
INSERT INTO ICA_FORMAT VALUES (17, 1, 1);
INSERT INTO ICA_FORMAT VALUES (18, 1, 1);


INSERT INTO ICA_Batiment VALUES(1, "IUT Rue Anton Tchekhov IFS");
INSERT INTO ICA_Distance VALUES(2, 0, 1, 1);

INSERT INTO ICA_TYPE VALUES(1, "Amphiteatre");
INSERT INTO ICA_TYPE VALUES(2, "Salle Informatique TP");
INSERT INTO ICA_TYPE VALUES(4, "Salle Reseau TP");
INSERT INTO ICA_TYPE VALUES(5, "Salle Plate");
INSERT INTO ICA_TYPE VALUES(6, "Salle de TD");

INSERT INTO ICA_Etude VALUES(1, "BUT - Informatique");


