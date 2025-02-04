# Rajouter les cours OBG dans la bdd.
#


SET foreign_key_checks = 0;







#################################################################################
#Statut Emploie
#################################################################################

INSERT INTO ICA_Statut_Emploie VALUES(1, "Titulaire");
INSERT INTO ICA_Statut_Emploie VALUES(2, "Maître de conférence");
INSERT INTO ICA_Statut_Emploie VALUES(3, "Vacataire");
INSERT INTO ICA_Statut_Emploie VALUES(4, "Enseignant-Chercheur");
INSERT INTO ICA_Statut_Emploie VALUES(5, "Professeur Associé");


###################################
#User, Prof, EDT
###################################

INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(22401769,'SERRET Arthur', 'arthur.serret@etu.unicaen.fr');

INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(1, 'ANNE Jean-François', 'jean-francois.anne@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(2, 'BRUTUS Philippe', 'philippe.brutus@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(3, 'DELHOUMI Sylvian', 'sylvian.delhoumi@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(4, 'DORBEC Paul', 'paul.dorbec@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(5, 'JACQUIER Yohann', 'yohann.jacquier@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(6, 'JEANPIERRE Laurent', 'laurent.jeanpierre@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(7, 'JORT Fabienne', 'fabienne.jort@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(8, 'MEIGNEN Pierrick', 'pierrick.meignen@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(9, 'PASSONI-CHEVALIER Christelle', 'christelle.passoni-chevalier@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(10, 'PORCQ Eric', 'eric.porcq@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(11, 'SECOUARD Stéphane', 'stephane.secouard@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(12, 'ALBRECHT Zimmermann', 'zimmermann.albrecht@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(13, 'VAGINAY Athénaïs', 'athenais.vaginay@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(14, 'PAUTREL Flavien', 'flavien.pautrel@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(15, 'DELAGE Xavier', 'xavier.delage@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(16, 'CALLEJA Béatrice', 'beatrice.calleja@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(17, 'CANIVET-GAUCHER Sylvie', 'sylvie.canivet-gaucher@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(18, 'DRAFATE Myriem', 'myriem.drafate@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(19, 'MASSERON Morgane', 'morgane.masseron@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(20, 'LAMBERT Jean-Luc', 'jean-luc.lambert@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(21, 'FRIBOULET Dominique', 'dominique.friboulet@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(22, 'CHARLES Olivier', 'olivier.charles@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(23, 'LEFEBVRE Philippe', 'philippe.lefebvre@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(24, 'LINTE Alexandre', 'alexandre.linte@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(25, 'TBER Nouzha', 'nouzha.tber@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(26, 'MARTIN Olivier', 'olivier.martin@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(27, 'LAMBERT Maxime', 'maxime.lambert@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(28, 'HEURTEL Nicolas', 'nicolas.heurtel@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(29, 'LOUTSCH Etienne', 'etienne.loutsch@unicaen.fr');
INSERT INTO ICA_User(USE_UUID, USE_NOM, USE_EMAIL) VALUES(30, 'BOURGAULT Sylvie', 'sylvie.bourgault@unicaen.fr');

INSERT INTO ICA_Prof(USE_UUID, STA_ID) values (1, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (2, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (3, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (4, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (5, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (6, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (7, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (8, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (9, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (10, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (11, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (12, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (13, 1);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (14, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (15, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (16, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (17, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (18, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (19, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (20, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (21, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (22, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (23, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (24, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (25, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (26, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (27, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (28, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (29, 3);
INSERT INTO ICA_Prof(USE_UUID, STA_ID) VALUES (30, 3);

INSERT INTO ICA_EDT VALUES (1, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/8920.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (2, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/3103.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (3, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/3402.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (4, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/323194.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (5, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/286766.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (6, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/4035.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (7, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/4510.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (8, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/1666.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (9, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5851.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (10, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (11, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/14020.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (12, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/16664.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (13, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/499555.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (14, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/166878.ics", 'ADE EDT', '800080');
#INSERT INTO ICA_EDT VALUES (15, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080'); -- XAVIER DELAGE
INSERT INTO ICA_EDT VALUES (16, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/8191.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (17, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/12230.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (18, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/20151.ics", 'ADE EDT', '800080');
#INSERT INTO ICA_EDT VALUES (19, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080'); -- Morgane Masseron
INSERT INTO ICA_EDT VALUES (20, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/3703.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (21, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/8807.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (22, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/8437.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (23, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/9307.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (24, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/13189.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (25, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5322.ics", 'ADE EDT', '800080');
#INSERT INTO ICA_EDT VALUES (26, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080'); -- Olivier Martin
INSERT INTO ICA_EDT VALUES (27, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/262286.ics", 'ADE EDT', '800080');
INSERT INTO ICA_EDT VALUES (28, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/1491.ics", 'ADE EDT', '800080');
#INSERT INTO ICA_EDT VALUES (29, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080'); -- Etienne Loutsch
#INSERT INTO ICA_EDT VALUES (30, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/5625.ics", 'ADE EDT', '800080'); -- Sylvie Bourgault

INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (1, 1);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (2, 2);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (3, 3);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (4, 4);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (5, 5);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (6, 6);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (7, 7);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (8, 8);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (9, 9);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (10, 10);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (11, 11);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (12, 12);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (13, 13);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (14, 14);
#INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (15, 15);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (16, 16);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (17, 17);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (18, 18);
#INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (19, 19);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (20, 20);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (21, 21);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (22, 22);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (23, 23);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (24, 24);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (25, 25);
#INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (26, 26);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (27, 27);
INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (28, 28);
#INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (29, 29);
#INSERT INTO ICA_Appartient(EDT_ID, USE_UUID) VALUES (30, 30);



###################################
#Permission et Role
###################################
INSERT INTO ICA_Permission VALUES(1, "*");
INSERT INTO ICA_Permission VALUES(2, "Change permission of user");
INSERT INTO ICA_Permission VALUES(3, "Change permission of role");
INSERT INTO ICA_Permission VALUES(4, "Create a new role");
INSERT INTO ICA_Permission VALUES(5, "Delete a new role");
INSERT INTO ICA_Permission VALUES(6, "Manage Prof");
INSERT INTO ICA_Permission VALUES(7, "Manage Study");
INSERT INTO ICA_Permission VALUES(8, "Manage Class");
INSERT INTO ICA_Permission VALUES(9, "Manage rooms");
INSERT INTO ICA_Permission VALUES(10, "Manage Batiments");
INSERT INTO ICA_Permission VALUES(11, "Manage Cours");
INSERT INTO ICA_Permission VALUES(12, "View calendar of user");
INSERT INTO ICA_Permission VALUES(13, "Edit calendar of user");

INSERT INTO ICA_Role VALUES(1, "Super Admin");

INSERT INTO ICA_USER_HAS_ROLE VALUES(22401769, 1);
INSERT INTO ICA_USER_HAS_ROLE VALUES(6, 1);
INSERT INTO ICA_ROLE_HAS_PERMISSION VALUES(1, 1);



#######################################################################################
#Matieres, Temporalité, Etude, Format
#######################################################################################
INSERT INTO ICA_Matiere VALUES(1, "Undefined");
INSERT INTO ICA_Matiere VALUES(2, "R1.01 - Initiation au développement");
INSERT INTO ICA_Matiere VALUES(3, "R1.02 - Développement d'interfaces web");
INSERT INTO ICA_Matiere VALUES(4, "R1.03 - Introduction a l'architecture des ordinateurs");
INSERT INTO ICA_Matiere VALUES(5, "R1.04 - Introduction aux systemes d'exploitations");
INSERT INTO ICA_Matiere VALUES(6, "R1.05 - Introduction aux bases de données");
INSERT INTO ICA_Matiere VALUES(7, "R1.06 - Mathématiques discrètes");
INSERT INTO ICA_Matiere VALUES(8, "R1.07 - Outils mathématiques fondamentaux");
INSERT INTO ICA_Matiere VALUES(9, "R1.08 - Introduction à la gestion des entreprises");
INSERT INTO ICA_Matiere VALUES(10, "R1.09 - Introduction à l'economie durable");
INSERT INTO ICA_Matiere VALUES(11, "R1.10 - Anglais Technique");
INSERT INTO ICA_Matiere VALUES(12, "R1.11 - Bases de la communication");
INSERT INTO ICA_Matiere VALUES(13, "R1.12 - Projet professionnel et personnel");
INSERT INTO ICA_Matiere VALUES(14, "SAE1.01 - Implémentation du besoin client");
INSERT INTO ICA_Matiere VALUES(15, "SAE1.02 - Conception algorithmique");
INSERT INTO ICA_Matiere VALUES(16, "SAE1.03 - Installation poste de developpement");
INSERT INTO ICA_Matiere VALUES(17, "SAE1.04 - Creation Base de Donnée");
INSERT INTO ICA_Matiere VALUES(18, "SAE1.05 - Recueil de besoins");
INSERT INTO ICA_Matiere VALUES(19, "SAE1.06 - Environnement Economique");


INSERT INTO ICA_Type_Classe VALUES(1, "CM");
INSERT INTO ICA_Type_Classe VALUES(2, "TD");
INSERT INTO ICA_Type_Classe VALUES(3, "TP");

INSERT INTO ICA_Niveau VALUES(1, "Année 1");
INSERT INTO ICA_Niveau VALUES(2, "Année 2");
INSERT INTO ICA_Niveau VALUES(3, "Année 3");

INSERT INTO ICA_Temporalite VALUES(1, "Undefined");
INSERT INTO ICA_Temporalite VALUES(2, "S1");
INSERT INTO ICA_Temporalite VALUES(3, "S2");
INSERT INTO ICA_Temporalite VALUES(4, "S3");
INSERT INTO ICA_Temporalite VALUES(5, "S4");
INSERT INTO ICA_Temporalite VALUES(6, "S5");
INSERT INTO ICA_Temporalite VALUES(7, "S6");



INSERT INTO ICA_TYPE VALUES(1, "Amphiteatre");
INSERT INTO ICA_TYPE VALUES(2, "Salle Informatique TP");
INSERT INTO ICA_TYPE VALUES(4, "Salle Reseau TP");
INSERT INTO ICA_TYPE VALUES(5, "Salle Hybride");
INSERT INTO ICA_TYPE VALUES(6, "Salle Plate");
INSERT INTO ICA_TYPE VALUES(7, "Salle de Reunion");

INSERT INTO ICA_Etude VALUES(1, "Undefined");
INSERT INTO ICA_Etude VALUES(2, "BUT - Informatique");

INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (1, 1, 1);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (2, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (3, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (4, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (5, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (6, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (7, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (8, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (9, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (10, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (11, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (12, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (13, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (14, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (15, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (16, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (17, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (18, 2, 2);
INSERT INTO ICA_FORMAT(MAT_ID, ETU_ID, SEM_ID) VALUES (19, 2, 2);


###############################################################################"
#Classe
###############################################################################
INSERT INTO ICA_Classe VALUES (2, 1, 1, 1, "Promo 2024");
INSERT INTO ICA_Classe VALUES (2, 2, 1, 2, "2024 - TD1");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 3, "2024 - TP1.1");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 4, "2024 - TP1.2");
INSERT INTO ICA_Classe VALUES (2, 2, 1, 5, "2024 - TD2");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 6, "2024 - TP2.1");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 7, "2024 - TP2.2");
INSERT INTO ICA_Classe VALUES (2, 2, 1, 8, "2024 - TD3");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 9, "2024 - TP3.1");
INSERT INTO ICA_Classe VALUES (2, 3, 1, 10, "2024 - TP3.2");

INSERT INTO ICA_HERITE VALUES (3, 2, 1);
INSERT INTO ICA_HERITE VALUES (4, 2, 2);
INSERT INTO ICA_HERITE VALUES (6, 5, 3);
INSERT INTO ICA_HERITE VALUES(7, 5, 4);
INSERT INTO ICA_HERITE VALUES(9, 8, 5);
INSERT INTO ICA_HERITE VALUES(10, 8, 6);

INSERT INTO ICA_HERITE VALUES(2 , 1, 7);
INSERT INTO ICA_HERITE VALUES(5 , 1, 8);
INSERT INTO ICA_HERITE VALUES(8 , 1, 9);

#######################################################################################
#Salle et Batiments
#######################################################################################

INSERT INTO ICA_Batiment VALUES(2, "Campus 3", "08:00:00", "18:00:00");
INSERT INTO ICA_Batiment VALUES(3, "Campus 1", "08:00:00", "18:00:00");
INSERT INTO ICA_Batiment VALUES(4, "Campus 2", "08:00:00", "18:00:00");
INSERT INTO ICA_Batiment VALUES(5, "Campus 4", "08:00:00", "18:00:00");
INSERT INTO ICA_Batiment VALUES(6, "Campus 5", "08:00:00", "18:00:00");

INSERT INTO ICA_Batiment VALUES(1, "Undefined", "08:00:00", "18:00:00");
INSERT INTO ICA_Distance (DIS_Temps, BAT_ID1, BAT_ID2) VALUES
                                                           (0, 2, 2),
                                                           (0, 3, 3),
                                                           (0, 4, 4),
                                                           (0, 5, 5),
                                                           (0, 6, 6),
                                                           (60, 3, 2),
                                                           (60, 2, 3),
                                                           (60, 4, 2),
                                                           (60, 2, 4),
                                                           (30, 4, 3),
                                                           (30, 3, 4),
                                                           (60, 5, 2),
                                                           (60, 2, 5),
                                                           (30, 5, 3),
                                                           (30, 3, 5),
                                                           (15, 5, 4),
                                                           (15, 4, 5),
                                                           (60, 6, 2),
                                                           (60, 2, 6),
                                                           (30, 6, 3),
                                                           (30, 3, 6),
                                                           (15, 6, 4),
                                                           (15, 4, 6),
                                                           (0, 6, 5),
                                                           (0, 5, 6);



INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphitheatre C3',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39294&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 120 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37215&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA INFO 12 (B 004)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68669&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC ETUDES CO 17 (C 007)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67669&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 122',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38365&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EA 009 - Salle de valorisation de la recherche',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=5698&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphitheatre C. F. Baclesse',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22882&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 109',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29957&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 137',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38606&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC ETUDES CO 11 (C 001)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68169&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Fresnel (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=258&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 232 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39366&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1211',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39455&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 108',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39391&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 302 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39150&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SA 016 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37206&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 272 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38794&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 307 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=2907&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 303 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38420&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-219',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39959&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-082 - Salle TP Histologie',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=210516&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH006',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39908&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 017',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29700&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 007',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29915&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-093',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22408&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A2 002 - Amphi 2000 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38048&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 276',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37574&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 117 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38357&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Piscine Petit bassin - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39081&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-237',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39997&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB310',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=26676&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-081',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22359&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-081',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22359&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-027',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39925&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 202',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=122599&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-227',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=70947&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 117 - TP Physiologie',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=119469&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S16 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38939&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 263',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37825&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('303',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68657&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GA Avant garde',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39843&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-032',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22422&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB316',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69215&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-087',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22344&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 036',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39499&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-219',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=16439&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 037',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29813&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 037',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29813&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 129 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37667&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SA 117 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37712&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 230 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38010&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 028',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29764&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 371 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38474&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 122 - Salle S4',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40205&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-072',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22385&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-072',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22385&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB220',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69168&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR SALLE INFORMATIQUE',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67629&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3251',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39434&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 115',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30034&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-119 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149114&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Forêt de Grimbosq',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=146012&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 373 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38418&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2124',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38756&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-206',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28566&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-084 - Informatique Niveau 0',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=2344&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX ESPACE MULTIMEDIA',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67683&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 110',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38292&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-230 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149096&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('C 03 (ABCD)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67697&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Sortie de terrain',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=72588&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX TD4 (G S10)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68690&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Piscine Grand bassin - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=3581&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-213',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39970&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB306',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69182&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('204',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68647&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1206',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37948&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB S26 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39084&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 306',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39048&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 304 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38523&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle informatique AC 137 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39618&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1103',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37872&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('BU 3 (G)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37715&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi S3 057',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17766&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 117',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=134666&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-209',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39935&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IUT AMPHI AMIOT (A 001)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67511&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-130',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114381&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 019',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31566&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 022',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114619&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD25 (ABC) (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40154&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-111',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39983&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37973&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi S3 044',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38073&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle des Marches',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=13449&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 309 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38370&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 158 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39792&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 133 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39273&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 306 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38275&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 128',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39010&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 122',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38195&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-102',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114393&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 235 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37518&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SC S36 - Salle Venus (M)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38372&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 111 - Salle S2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40232&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 508 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=7266&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 026',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38510&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-144 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149116&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B6 (D 006)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8128&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2INFO1 (IU 1023)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68231&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IUT AMPHI B',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67888&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-157b (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163678&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-006',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39919&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 104',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37219&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Jacques Izard',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=85863&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 029',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37164&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 108',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30026&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 268 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37767&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-079',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22283&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-096',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22444&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 014 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39735&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII LABO LANGUES',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8083&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII LABO LANGUES',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8083&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle de tir - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37192&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29979&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-205',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28553&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR TD1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68268&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR TD1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68268&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB212',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69197&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('21',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68232&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-119',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114389&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 027 - Cabinet de medecine experimental',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=9014&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 25 (B 107)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=36440&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 409',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37901&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 118',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39387&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 279',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39235&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SALLE DE VISIOCONFERENCE (IUT)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1989&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-065 - Informatique Niveau 1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=2345&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC18 (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1717&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 002 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37040&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S44 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=25536&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi S3 049',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17768&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3141',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37113&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-083',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22376&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-083',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22376&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 159',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37845&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-202 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149122&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB102',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69022&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Oresme (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=674&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD36 (ABC) (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22115&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Laplace (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1012&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TD3 (IU 1034)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67509&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 004 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37285&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 132',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38281&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB110',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=15676&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi D1 (E)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=126&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 275',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39174&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29951&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29951&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 112',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=13486&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Forêt de Cerisy',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=146013&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 273',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39601&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('10',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68175&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-207',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39949&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 238 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37946&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HA 001',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=21737&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD21 (ABC) (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30331&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 271',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39819&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 031',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38793&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 017 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37208&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi S3 043',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37067&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 014',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38059&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 256',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37494&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-106',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39975&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 1PRO2 (E 013)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68614&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Yves Moderan (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39634&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 102 - TP Chimie analytique',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=146004&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-223 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163370&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('P3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=72655&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 020',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37887&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 330 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39699&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 206 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4118&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 108',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=23609&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29972&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29972&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 030',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=83684&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3252',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38996&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 241 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37694&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-049 - Informatique Niveau 3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=90843&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 135 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38391&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR BUREAU D\'ETUDES (F S010)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1722&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 435 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4935&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-137 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149104&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28202&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TD4 (IU 1033)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68714&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 112',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38444&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-094',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=6779&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Grand gymnase - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39565&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('stade caen Nord (foot)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39847&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 028',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=23024&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 103 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38708&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 112 - Salle S3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40222&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 023',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=6824&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 403',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37564&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 057',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38473&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD31 (ABC) (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30308&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR Salle Multimedia 2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67708&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 209',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39466&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Varignon',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=680&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 259',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38546&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 017 - Salle Multimedia',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40053&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 125',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39763&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 504 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4068&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AT004',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17414&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 213 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38875&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1207',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39090&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 123 - Salle S1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40248&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 106',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37697&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-061',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22366&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 255',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38076&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 104',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30005&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 104',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30005&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 017',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39269&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S04 - Salle Neptune (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38670&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphitheatre (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40140&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('P6',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=12018&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Jean VIAL (B1-J64) (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163822&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 005 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=14405&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 109',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29966&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 201 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37596&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 301 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39564&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SA 011 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37462&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 308 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31507&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 157 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38953&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-245 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149115&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SC S07 (M)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38540&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-077',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22329&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-077',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22329&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-203 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149112&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM C5 (D 105))',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=2555&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 354 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39833&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Heron (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=775&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39965&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 202 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39239&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Laboratoire multimedia',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=24132&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AMPHI ESIX',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67795&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 346 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38911&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 102 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38153&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 035',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37784&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2237',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39005&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3147',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39609&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('0287',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38870&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 036',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29904&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 036',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29904&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-053',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22455&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi 210',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22247&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Mathematiques (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1021&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 031',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39038&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-442 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=93613&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-107',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39960&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 032',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29660&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 032',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37634&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE S20 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37043&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SA  115a (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38952&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENB',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68600&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 209 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39520&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 022',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=6817&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 011 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=42344&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-102',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=21206&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB302',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=118294&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 109',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11776&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB11',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=21739&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 036',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38680&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-147 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149110&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 327 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=25477&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 270 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38758&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 229 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39328&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=23474&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B1 (D 001)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68260&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 207 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=7731&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 020',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=23253&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 123',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37805&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 21 (B 102)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=64641&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-004',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39980&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-263c (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163371&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi DE BOUARD (B1-J01) (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163367&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 301 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=2922&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-080',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22347&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Mur d\'escalade Halle des sports (H)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40177&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 014 - Salle du Conseil',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=6822&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Labo de langues',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38713&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 131',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29960&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 131',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29960&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('309',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67696&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-023',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39737&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('M4 004 (04)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37242&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2123',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39568&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD S62 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=128655&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 405',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39580&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 401',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38524&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 011',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38013&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-203',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39931&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TE - 003',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40535&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB127',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=21741&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM Hall technique (D S06)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=58668&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-002',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39936&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-083',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22335&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 010 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=42347&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-114',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39955&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Exterieur',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=917&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 010',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38949&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 051',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29696&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 051',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29696&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-101a (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163681&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Piscine municipale Rousseau',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=35153&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi D3 (E)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Daniel HUET (B1-J65) (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163823&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX TP MECANIQUE',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4170&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CCI Evreux',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=13856&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle des profs',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=26966&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 037 (salle d\'examens)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11444&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM C4 (D 104)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=127307&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-051',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22410&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-051',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22410&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-263b (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163373&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Lignier (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=101&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM A3 (D S01)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68433&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-092',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22445&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 416',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38288&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB124',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68994&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 001 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39325&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Chimie (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=206&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 134',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=81328&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 107',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39583&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH106',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31388&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 605 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37808&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-070',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22414&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AMPHI JOSETTE TRAVERT',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40002&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-076',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22310&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-076',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22310&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC14 (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30079&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-094',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22317&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-094',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22317&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 362 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39324&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-115',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114382&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 008',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29769&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 008',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29769&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 210 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28066&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 404 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39674&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 24 (B 106)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67607&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 214 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37894&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 119',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22334&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 059',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38620&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-204',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39917&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 274',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39020&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 303',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=16259&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Poincare (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=650&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DE 110',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=25695&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 102 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38459&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Halle des sports (H)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39225&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 371 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37729&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39680&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Rouelle (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=391&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S49 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31459&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-011',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=114394&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 454 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=222&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Jo Trehard (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37778&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 267 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39065&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('405',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68772&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 016 - Salle S0',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=286&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 222 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38528&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH010',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28203&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 104 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17399&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-040',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22451&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-040',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22451&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TD2 (E 109)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68201&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Auditorium',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22238&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM C3 (D 103)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=135151&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29931&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29931&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('BS 212',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37513&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('0280',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22991&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX BUREAU D\'ETUDES',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67876&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-240',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39998&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 233 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38677&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 119 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37595&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('12',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68869&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 130 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37180&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 1ATM2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=96087&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=12084&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle des theses',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22244&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 410',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39588&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 042',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39215&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC01 - Salle d\'examens (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40156&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 203 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38959&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-110',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39927&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 028 - Salle des Theses',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38735&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 228 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37975&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-013',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39946&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC28 (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40157&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 047',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28407&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2INFO3 (IU 1027)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68565&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle de formation 3eme BU Sciences',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38885&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 031',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=88538&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AMPHI UFR',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68183&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IUT AMPHI C',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67734&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ER 235',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=6233&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=66712&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 007 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39285&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB218',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31670&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB109',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69006&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle de simulation d\'odontologie',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4316&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('310',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=103791&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 123 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=10875&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 124',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37207&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 138',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=44566&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 222 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37369&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3143',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38256&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-239 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149123&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 032',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39550&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-090',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22484&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle des theses et de visioconference',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=7064&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 126 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37983&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2127',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39491&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 204',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=10179&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 128 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39069&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 121',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37531&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM CONTROLES A (D 106)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67936&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi S3 045',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37368&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 211 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38657&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3140',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39337&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S.Examen',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68670&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 22 (B 104)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68224&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi D2 (E)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=653&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SHUC',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37184&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S03 - Salle Mercure (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38643&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 219',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=10181&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle informatique AC 103 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38686&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-205',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39981&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 102',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29964&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-157a (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163683&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-081',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22307&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS0-081',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22307&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 230 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39160&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 034',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38309&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 016',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=111862&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2234',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39052&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 226',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39811&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 131',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38071&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM C1 (D 101)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=64732&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('11',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67535&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 240 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37848&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC ETUDES CO 12 (C 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=64731&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 136',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37829&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2235',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37590&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 11 (B 001)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8092&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-136 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149124&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 126',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38432&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-152 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149109&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 154 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38965&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2236',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38484&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 130',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38326&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-011',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22407&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-011',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22407&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Marie de Cleves (VISSO)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=295&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-068',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22401&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-068',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22401&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 139 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=15468&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('I6 007 - Petit gymnase - ESPE',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11661&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 113 - Salle Info 2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=292&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29970&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 116',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29970&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 116 - TP Parasitologie',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=118409&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-010',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39940&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 129 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39333&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB301',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69214&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Atelier Conv',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=64573&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle de danse - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38858&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 132',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30003&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD24 (ABC) (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40153&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 1PRO1 (E 014)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67769&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 234 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37866&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 013 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39525&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TD5 (IU 1016)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68254&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 127',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38318&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 161',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39194&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('E-CAMPUS',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=5590&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-085',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22373&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-085',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22373&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 102',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=246&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 514 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38122&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 107',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29977&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 107',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29977&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD S55 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38830&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-072',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22413&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 103 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38931&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IU 120',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=24621&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH005',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28297&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-240 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149118&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-401 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=184727&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 132 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39620&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-028',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=91692&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-111',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39973&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 104',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38862&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-202',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39988&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 101 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39242&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 254 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37756&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 008 - Amphitheatre',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40071&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('14',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68156&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 335',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37670&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 134 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39493&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 114',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38979&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S18 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39807&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('22',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68675&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-091 - Informatique Niveau 2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22443&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 41 (C 105)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67889&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 41 (C 105)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67889&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('23',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67531&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Horizon - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38775&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1109',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37355&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-041',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22418&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 218',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39512&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 204 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38737&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Cauchy',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68939&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC INFO 20 (C 010)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8122&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC INFO 20 (C 010)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8122&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 415',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38788&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 160',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39232&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 203 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38840&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX TL3 (G 05)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67492&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi D4 (E)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=157&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Danse UFR - Campus 2 (GY)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38538&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Conte',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37258&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EE 206',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=10175&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 014',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22951&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 024 - Hall Entreprise',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40075&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('24',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68328&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR TD4',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68727&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC12 (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30074&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 143a (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=15355&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB217',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69151&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 278',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39690&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Belvedere (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37555&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1208',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39343&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES S01 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37154&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 138 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37173&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-117 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149126&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 005 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38675&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 124',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37696&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 231',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37538&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 016',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37874&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Demolombe (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=462&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-048',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22438&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-048',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22438&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('BU 2 (G)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37886&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-118 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149120&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-225',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=140990&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES S03 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39262&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-009',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39967&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 232 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39118&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S48 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39604&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 160 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37699&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle polyvalente - SUAPS (SUAPS)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37964&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TDAV (IU 1038)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68318&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Tocqueville (T)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=963&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-204',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28520&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 1ATM1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=21847&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 310 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39161&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 38 (C 102)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67873&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 38 (C 102)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67873&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB201',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69052&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 100',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30004&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 100',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30004&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 407 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37464&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH205',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4790&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 239 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38366&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 027',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=55099&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 101',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29952&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 101',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29952&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB S24 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39417&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('FIM St Lo',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11584&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH105',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31390&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 204 (formation des personnels) (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38053&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 113 - Salle de TD',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39394&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 207',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37702&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 372 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39508&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 338 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38242&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-012',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22427&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 162',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39098&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA-103',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39939&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3250',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38923&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR POLE LICENCES LP CGC',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67714&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR POLE LICENCES LP CGC',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67714&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 39 (C 103)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67682&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 39 (C 103)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67682&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Laboratoire d\'odontologie',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=4317&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('C 13 (ABCD)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68338&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi 1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29946&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle 026 - Pharmacie experimentale',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22933&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-224 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149092&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Vauquelin (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=326&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 347 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37637&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 014',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29799&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 014',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29799&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Gymnase - UFR3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39849&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DE 021',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=137853&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SC S06 (M)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37794&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Atelier Comp',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=469&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 51 (C 101)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67650&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 51 (C 101)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67650&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-201 (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=149105&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 609 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1305&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 003 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37216&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 205 (labo de langues)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37945&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi 2',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30017&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 110',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39295&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('EG 108',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38612&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2ELN2 (IU 1030)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=66476&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('BRED - JOINVILLE-LE-PONT',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=16265&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 256 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37843&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Jacquet (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=344&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 002',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29902&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 002',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29902&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('I6 005 - Grand gymnase - ESPE',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11660&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 370 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=13138&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IA 218',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38795&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 40 (C 104)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67646&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 40 (C 104)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67646&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-207',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28567&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 14 (B 003)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8080&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2INFO2 (IU 1025)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67480&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 14 (C 004)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67905&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC 14 (C 004)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67905&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES 302 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38239&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 101 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38087&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Le Verrier',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38836&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DE 112',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=24257&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH008',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28168&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SA 008 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38208&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 007 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=42349&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SC S37 - Salle Jupiter (M)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39404&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR POLE LICENCES MMN',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68216&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('IRTS',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=97152&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3146',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39569&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-084',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22393&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-084',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22393&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 100',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29985&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B 100',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29985&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-101',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39993&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 227 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=25468&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AMPHI CHARPAK',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40001&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB303',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69201&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1105',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39064&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 030',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29663&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR TD3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=66686&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('UFR TD3',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=66686&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX REGULATION N°122',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=12878&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3142',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39736&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 211 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=220&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DE 113',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1260&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SG LABO LANGUES (A 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67660&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SG LABO LANGUES (A 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67660&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-089',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22491&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-101c (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163682&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC INFO 19 (C 009)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=127011&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC INFO 19 (C 009)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=127011&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('B1-157c (B1)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=163680&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB 203 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38005&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SB S27 (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39310&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA INFO 13 (B 005)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68401&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 104 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38855&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 310 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39255&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1110',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39548&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 303 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38520&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH101',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=31391&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 037',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38343&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Salle Jean Rene PUTS',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=247&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-222',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=11669&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-086',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22351&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-086',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22351&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('AC 138 (A)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=63717&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM C2 (D 102)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68309&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH013',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28196&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 309 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38608&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ER 337',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=7604&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B3b',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=132134&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 108',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=26249&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 218 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38303&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 254',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39492&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-095',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22415&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS2-095',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22415&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC13 (ABC)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=30323&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-062',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22362&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-062',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22362&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 303 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38147&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('308',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17204&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ESIX LABORATOIRE LANGUES',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67799&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE 212 (formation des personnels) (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=216&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Dumont d\'Urville (N)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1010&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S46 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39082&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 030',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38566&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('1106',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38541&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi Grignard (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1023&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SALLE DE CONFERENCES CAMPUS CHERBOURG',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=138814&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-052',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22420&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 130 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39732&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEII 2TD1 (IU 1037)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=68298&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ES S02 (K)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37120&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29654&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('A 015',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=29654&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 210',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38250&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('HSE 115 - Salle Info 1',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40243&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('ENS-107',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39928&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('CH014',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=28183&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('P4',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=33109&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('0281',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22969&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3259',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=1136&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('3258',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37212&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-073',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22381&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS1-073',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22381&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PS3-050',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=22437&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SD 016 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38088&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR 269 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38369&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 113',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38398&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-203',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40018&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 210 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38364&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2240',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=140413&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DR S17 (D)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37426&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('FIM Cherbourg',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=35787&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B4 (D 004)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67717&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 032',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=5695&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-138',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=32450&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('DE 111',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=24263&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('PH207',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=17295&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB213',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=69157&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('2129',2,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38113&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('Amphi 500',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38413&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('TC-024',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39984&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('G-CH-106',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=40006&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 238 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37877&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('SE S19 (L)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39528&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S1 033',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37405&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B2 ESPACE MULTIMEDIA (D 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67892&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GIM B2 ESPACE MULTIMEDIA (D 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=67892&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 023',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=59933&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GB220a',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=3208&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('GEA 10 (B 002)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=8086&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('LI 159 (I)',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=38410&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S3 277',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=39682&projectId=1');
INSERT INTO ICA_Salle(SAL_Libelle, BAT_ID, SAL_Link) VALUES ('S2 401',1,'http://ade.unicaen.fr/jsp/custom/modules/plannings/anonymous_cal.jsp?resources=37439&projectId=1');

INSERT INTO ICA_Autorise VALUES (1, 2);
INSERT INTO ICA_Autorise VALUES (64, 2);
INSERT INTO ICA_Autorise VALUES (250, 2);
INSERT INTO ICA_Autorise VALUES (297, 2);
INSERT INTO ICA_Autorise VALUES (424, 2);
INSERT INTO ICA_Autorise VALUES (447, 2);
INSERT INTO ICA_Autorise VALUES (455, 2);
INSERT INTO ICA_Autorise VALUES (461, 2);
INSERT INTO ICA_Autorise VALUES (520, 2);
INSERT INTO ICA_Autorise VALUES (673, 2);
INSERT INTO ICA_Autorise VALUES (702, 2);
INSERT INTO ICA_Autorise VALUES (736, 2);

INSERT INTO ICA_EST_TYPE VALUES (1, 1);
INSERT INTO ICA_EST_TYPE VALUES (250, 2);
INSERT INTO ICA_EST_TYPE VALUES (424, 2);
INSERT INTO ICA_EST_TYPE VALUES (455, 2);
INSERT INTO ICA_EST_TYPE VALUES (461, 2);
INSERT INTO ICA_EST_TYPE VALUES (297, 4);
INSERT INTO ICA_EST_TYPE VALUES (520, 5);
INSERT INTO ICA_EST_TYPE VALUES (736, 5);
INSERT INTO ICA_EST_TYPE VALUES (64, 6);
INSERT INTO ICA_EST_TYPE VALUES (673, 6);
INSERT INTO ICA_EST_TYPE VALUES (702, 6);
INSERT INTO ICA_EST_TYPE VALUES (447, 7);

####################################################################################
#Responsable
####################################################################################

INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(1, 3);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(1, 4);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(1, 5);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(1, 19);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(1, 16);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(2, 3);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(2, 19);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(3, 11);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(3, 14);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(4, 2);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(4, 14);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(4, 15);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(5, 2);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(5, 16);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(7, 6);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(7, 9);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(7, 18);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(8, 2);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(9, 12);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(10, 6);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(10, 17);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(11, 7);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(12,2);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(13, 3);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(13, 4);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(13, 5);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(14, 8);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(16, 13);
INSERT INTO ICA_Responsable(USE_UUID, MAT_ID) VALUES(30, 10);




####################################################################################
#Obligations Cours
####################################################################################

#Vacances
INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2025-10-18 00:00:00', '2025-11-03 00:00:00', 1, 'Vacances de la Toussaint 2025 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2025-12-20 00:00:00', '2026-01-05 00:00:00', 1, 'Vacances de Noël 2025 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-02-14 00:00:00', '2026-03-02 00:00:00', 1, 'Vacances d\'hiver 2026 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-04-11 00:00:00', '2026-04-27 00:00:00', 1, 'Vacances de printemps 2026 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-05-13 00:00:00', '2026-05-18 00:00:00', 1, 'Pont de l\'Ascension 2026 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-07-04 00:00:00', '2026-09-01 00:00:00', 1, 'Vacances d\'été 2026 (VACANCE)');


# Jour feriés
INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2025-11-01 00:00:00', '2025-11-02 00:00:00', 1, 'La Toussaint (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2025-11-11 00:00:00', '2025-11-12 00:00:00', 1, 'Armistice 1918 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2025-12-25 00:00:00', '2025-12-26 00:00:00', 1, 'Noël (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-01-01 00:00:00', '2026-01-02 00:00:00', 1, 'Jour de l\'An (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-04-21 00:00:00', '2026-04-22 00:00:00', 1, 'Lundi de Pâques (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-05-01 00:00:00', '2026-05-02 00:00:00', 1, 'Fête du Travail (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-05-08 00:00:00', '2026-05-09 00:00:00', 1, 'Victoire de 1945 (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-05-29 00:00:00', '2026-05-30 00:00:00', 1, 'Ascension (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-06-09 00:00:00', '2026-06-10 00:00:00', 1, 'Lundi de Pentecôte (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-07-14 00:00:00', '2026-07-15 00:00:00', 1, 'Fête Nationale (VACANCE)');

INSERT INTO ICA_Cours(COU_HEURE_DEBUT, COU_HEURE_FIN, CLA_ID, COU_Libelle) VALUES ('2026-08-15 00:00:00', '2026-08-16 00:00:00', 1, 'Assomption (VACANCE)');
#R1.10#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(2, 11, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(20, 11, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (2, 20);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(62, 11, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (20, 62);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(83, 11, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (62, 83);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(89, 11, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (83, 89);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(125, 11, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (89, 125);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(145, 11, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (125, 145);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(157, 11, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (145, 157);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(198, 11, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (157, 198);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(220, 11, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 90.0); #2124 | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (198, 220);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(34, 11, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 60.0); #Labo de langues | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (20, 34);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(46, 11, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (20, 46);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (34, 46);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(70, 11, 2, 2, 'TP 3', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (62, 70);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (46, 70);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(88, 11, 2, 2, 'TP 4', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (83, 88);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (70, 88);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(115, 11, 2, 2, 'TP 5', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (89, 115);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (88, 115);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(140, 11, 2, 2, 'TP 6', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (125, 140);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (115, 140);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(159, 11, 2, 2, 'TP 7', 3, '2025-09-02', '2026-01-16', 60.0); #Labo de langues | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (157, 159);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (140, 159);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(181, 11, 2, 2, 'TP 8', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (157, 181);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (159, 181);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(219, 11, 2, 2, 'TP 9', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (198, 219);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (181, 219);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(241, 11, 2, 2, 'TP 10', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (220, 241);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (219, 241);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(232, 11, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 120.0); #Salle d'examen | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (220, 232);
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(256, 11, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 60.0); #Laboratoire multimédia | R1.10 Anglais technique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (241, 256);
#R1.02#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(5, 3, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(29, 3, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #2125 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (5, 29);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(53, 3, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (29, 53);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(67, 3, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (53, 67);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(92, 3, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (67, 92);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(106, 3, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.02 Développement d’interfaces web PB#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (105, 106);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (92, 106);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(118, 3, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (105, 118);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (106, 118);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(126, 3, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.02 Développement d’interfaces web PB#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (105, 126);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (118, 126);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(136, 3, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (132, 136);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (126, 136);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(160, 3, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 60.0); #2237 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (132, 160);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (136, 160);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(221, 3, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 90.0); #2237 | R1.02 Développement d’interfaces web PB#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (132, 221);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (160, 221);
#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(105, 3, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.02 Développement d’interfaces web#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(132, 3, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (105, 132);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(188, 3, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.02 Développement d’interfaces web PB#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (160, 188);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(190, 3, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (160, 190);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (132, 190);
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(224, 3, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.02 Développement d’interfaces web#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (188, 224);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (132, 224);
#R1.05#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(6, 6, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(9, 6, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (6, 9);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(22, 6, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (13, 22);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (9, 22);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(28, 6, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 28);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (22, 28);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(49, 6, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 49);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (28, 49);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(52, 6, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #2124 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 52);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (49, 52);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(64, 6, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 64);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (52, 64);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(75, 6, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 75);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (64, 75);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(85, 6, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (76, 85);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (75, 85);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(94, 6, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (76, 94);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (85, 94);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(98, 6, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (97, 98);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (94, 98);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(120, 6, 2, 2, 'TD 12', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (97, 120);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (98, 120);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(161, 6, 2, 2, 'TD 13', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (131, 161);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (120, 161);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(171, 6, 2, 2, 'TD 14', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 171);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (161, 171);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(191, 6, 2, 2, 'TD 15', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 191);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (171, 191);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(192, 6, 2, 2, 'TD 16', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 192);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (191, 192);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(209, 6, 2, 2, 'TD 17', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 209);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (192, 209);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(230, 6, 2, 2, 'TD 18', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 230);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (209, 230);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(233, 6, 2, 2, 'TD 19', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 233);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (230, 233);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(246, 6, 2, 2, 'TD 20', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (234, 246);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (233, 246);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(288, 6, 2, 2, 'TD 21', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (234, 288);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (246, 288);
#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(13, 6, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Merise#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(27, 6, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (13, 27);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(76, 6, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (27, 76);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(97, 6, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (76, 97);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(131, 6, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (97, 131);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(163, 6, 2, 2, 'CM 6', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (131, 163);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(234, 6, 2, 2, 'CM 7', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.05 Introduction aux bases de données et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (163, 234);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(133, 6, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.05 Introduction aux BDDs et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (120, 133);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (131, 133);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(250, 6, 2, 2, 'CC 2', 1, '2025-09-02', '2026-01-16', 90.0); #Salle d'examen | R1.05 Introduction aux BDDs et SQL#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (246, 250);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (234, 250);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(273, 6, 2, 2, 'CC 3', 1, '2025-09-02', '2026-01-16', 90.0); #Salle d'examen | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (246, 273);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (234, 273);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(149, 6, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (120, 149);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(248, 6, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 180.0); #2237 | R1.05 Merise#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (246, 248);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (149, 248);
#Autre#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(253, 6, 2, 2, 'Autre 1', -1, '2025-09-02', '2026-01-16', 30.0); # | R1.05 tiers#
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(291, 6, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.05 SAE 4/5/6#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (248, 291);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (234, 291);
#R1.04#

#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(7, 5, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(26, 5, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (7, 26);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(57, 5, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (26, 57);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(69, 5, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (57, 69);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(95, 5, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (69, 95);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(119, 5, 2, 2, 'CM 6', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (95, 119);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(141, 5, 2, 2, 'CM 7', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (119, 141);
#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(38, 5, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (26, 38);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(45, 5, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (26, 45);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (38, 45);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(78, 5, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (69, 78);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (45, 78);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(100, 5, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (95, 100);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (78, 100);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(122, 5, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (119, 122);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (100, 122);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(151, 5, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (141, 151);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (122, 151);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(166, 5, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (141, 166);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (151, 166);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(182, 5, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (141, 182);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (166, 182);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(150, 5, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (122, 150);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(170, 5, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (166, 170);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (150, 170);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(196, 5, 2, 2, 'TP 3', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (182, 196);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (170, 196);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(206, 5, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (182, 206);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (141, 206);
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(212, 5, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.04 Introduction aux systèmes d’exploitation et � leur fonctionnement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (196, 212);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (141, 212);
#R1.11#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(8, 12, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(18, 12, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (8, 18);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(33, 12, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (18, 33);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(41, 12, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (33, 41);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(44, 12, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (41, 44);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(56, 12, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (44, 56);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(71, 12, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (56, 71);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(130, 12, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (71, 130);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(154, 12, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (130, 154);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(225, 12, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (154, 225);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(229, 12, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (225, 229);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(254, 12, 2, 2, 'TD 12', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (229, 254);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(272, 12, 2, 2, 'TD 13', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (254, 272);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(301, 12, 2, 2, 'TD 14', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (272, 301);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(313, 12, 2, 2, 'TD 15', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (301, 313);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(96, 12, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (71, 96);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(178, 12, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.11 Bases de la communication#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (154, 178);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (96, 178);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(180, 12, 2, 2, 'TP 3', 3, '2025-09-02', '2026-01-16', 120.0); # | R1.11 Chroniques Radio#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (154, 180);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (178, 180);
#R1.08#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(10, 9, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(23, 9, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (10, 23);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(59, 9, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (58, 59);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (23, 59);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(81, 9, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (68, 81);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (59, 81);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(93, 9, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (68, 93);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (81, 93);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(123, 9, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 123);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (93, 123);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(152, 9, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 152);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (123, 152);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(158, 9, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 158);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (152, 158);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(202, 9, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 202);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (158, 202);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(239, 9, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (203, 239);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (202, 239);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(277, 9, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (203, 277);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (239, 277);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(294, 9, 2, 2, 'TD 12', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (203, 294);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (277, 294);
#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(39, 9, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(58, 9, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (39, 58);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(68, 9, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (58, 68);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(117, 9, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (68, 117);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(203, 9, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 203);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(148, 9, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (123, 148);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (117, 148);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(314, 9, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 180.0); #2124 | R1.08 Gestion de projet & des organisations#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (294, 314);
#R1.01#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(11, 2, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(36, 2, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (32, 36);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (11, 36);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(50, 2, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (32, 50);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (36, 50);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(77, 2, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (55, 77);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (50, 77);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(109, 2, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (99, 109);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (77, 109);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(111, 2, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (99, 111);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (109, 111);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(139, 2, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (124, 139);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (111, 139);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(165, 2, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (144, 165);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (139, 165);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(187, 2, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #2124 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (169, 187);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (165, 187);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(205, 2, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (193, 205);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (187, 205);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(222, 2, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (214, 222);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (205, 222);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(258, 2, 2, 2, 'TD 12', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (257, 258);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (222, 258);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(268, 2, 2, 2, 'TD 13', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (257, 268);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (258, 268);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(285, 2, 2, 2, 'TD 14', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (257, 285);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (268, 285);
#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(12, 2, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(14, 2, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (12, 14);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(31, 2, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (14, 31);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(32, 2, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (31, 32);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(55, 2, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (32, 55);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(79, 2, 2, 2, 'CM 6', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (55, 79);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(99, 2, 2, 2, 'CM 7', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (79, 99);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(124, 2, 2, 2, 'CM 8', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (99, 124);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(144, 2, 2, 2, 'CM 9', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (124, 144);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(169, 2, 2, 2, 'CM 10', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (144, 169);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(193, 2, 2, 2, 'CM 11', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (169, 193);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(214, 2, 2, 2, 'CM 12', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (193, 214);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(257, 2, 2, 2, 'CM 13', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (214, 257);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(16, 2, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (11, 16);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(42, 2, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (36, 42);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (16, 42);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(43, 2, 2, 2, 'TP 3', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (36, 43);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (42, 43);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(51, 2, 2, 2, 'TP 4', 3, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (50, 51);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (43, 51);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(54, 2, 2, 2, 'TP 5', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (50, 54);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (51, 54);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(84, 2, 2, 2, 'TP 6', 3, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (77, 84);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (54, 84);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(86, 2, 2, 2, 'TP 7', 3, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (77, 86);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (84, 86);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(110, 2, 2, 2, 'TP 8', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (109, 110);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (86, 110);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(113, 2, 2, 2, 'TP 9', 3, '2025-09-02', '2026-01-16', 120.0); #2125 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (111, 113);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (110, 113);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(116, 2, 2, 2, 'TP 10', 3, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (111, 116);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (113, 116);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(146, 2, 2, 2, 'TP 11', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (139, 146);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (116, 146);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(147, 2, 2, 2, 'TP 12', 3, '2025-09-02', '2026-01-16', 120.0); #2237 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (139, 147);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (146, 147);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(168, 2, 2, 2, 'TP 13', 3, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (165, 168);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (147, 168);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(174, 2, 2, 2, 'TP 14', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (165, 174);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (168, 174);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(185, 2, 2, 2, 'TP 15', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (165, 185);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (174, 185);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(189, 2, 2, 2, 'TP 16', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (187, 189);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (185, 189);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(208, 2, 2, 2, 'TP 17', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (205, 208);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (189, 208);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(217, 2, 2, 2, 'TP 18', 3, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (205, 217);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (208, 217);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(231, 2, 2, 2, 'TP 19', 3, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (222, 231);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (217, 231);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(251, 2, 2, 2, 'TP 20', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (222, 251);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (231, 251);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(259, 2, 2, 2, 'TP 21', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (258, 259);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (251, 259);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(266, 2, 2, 2, 'TP 22', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (258, 266);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (259, 266);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(267, 2, 2, 2, 'TP 23', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (258, 267);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (266, 267);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(280, 2, 2, 2, 'TP 24', 3, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (268, 280);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (267, 280);
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(107, 2, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 60.0); #2235 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (86, 107);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (99, 107);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(307, 2, 2, 2, 'CTP 2', 3, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (280, 307);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (257, 307);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(284, 2, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.01 Initiation au développement#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (268, 284);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (257, 284);
#R1.03#

#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(17, 4, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(25, 4, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (17, 25);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(48, 4, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (25, 48);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(73, 4, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (48, 73);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(103, 4, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (73, 103);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(114, 4, 2, 2, 'CM 6', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (103, 114);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(138, 4, 2, 2, 'CM 7', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (114, 138);
#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(30, 4, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (25, 30);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(74, 4, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #2236 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (73, 74);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (30, 74);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(129, 4, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (114, 129);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (74, 129);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(173, 4, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (138, 173);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (129, 173);
#TP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(63, 4, 2, 2, 'TP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2125 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (30, 63);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(104, 4, 2, 2, 'TP 2', 3, '2025-09-02', '2026-01-16', 120.0); #2125 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (74, 104);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (63, 104);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(137, 4, 2, 2, 'TP 3', 3, '2025-09-02', '2026-01-16', 120.0); #2125 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (129, 137);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (104, 137);
#CTP#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(199, 4, 2, 2, 'CTP 1', 3, '2025-09-02', '2026-01-16', 120.0); #2123 | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (137, 199);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (138, 199);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(255, 4, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 60.0); #Salle d'examen | R1.03 Introduction � l’architecture des ordinateurs#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (173, 255);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (138, 255);
#R1.07#

#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(21, 8, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(90, 8, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (21, 90);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(155, 8, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (90, 155);
#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(24, 8, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 90.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (21, 24);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(47, 8, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (21, 47);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (24, 47);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(66, 8, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (21, 66);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (47, 66);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(91, 8, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 90.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (90, 91);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (66, 91);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(112, 8, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #1110 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (90, 112);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (91, 112);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(134, 8, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (90, 134);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (112, 134);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(156, 8, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 90.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (155, 156);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (134, 156);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(179, 8, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 90.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (155, 179);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (156, 179);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(226, 8, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (155, 226);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (179, 226);
#Autre#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(247, 8, 2, 2, 'Autre 1', -1, '2025-09-02', '2026-01-16', 30.0); #Salle d'examen | R1.07#
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(249, 8, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 90.0); #Salle d'examen | R1.07 Outils mathématiques fondamentaux#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (226, 249);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (155, 249);
#R1.06#

#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(35, 7, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(60, 7, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (35, 60);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(87, 7, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (60, 87);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(204, 7, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (87, 204);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(238, 7, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (204, 238);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(269, 7, 2, 2, 'CM 6', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (238, 269);
#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(37, 7, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (35, 37);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(61, 7, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (60, 61);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (37, 61);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(82, 7, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (60, 82);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (61, 82);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(101, 7, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (87, 101);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (82, 101);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(128, 7, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (87, 128);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (101, 128);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(135, 7, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #2124 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (87, 135);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (128, 135);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(210, 7, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (204, 210);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (135, 210);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(243, 7, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (238, 243);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (210, 243);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(264, 7, 2, 2, 'TD 9', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (238, 264);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (243, 264);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(270, 7, 2, 2, 'TD 10', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (269, 270);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (264, 270);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(274, 7, 2, 2, 'TD 11', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (269, 274);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (270, 274);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(279, 7, 2, 2, 'TD 12', 2, '2025-09-02', '2026-01-16', 120.0); #1106 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (269, 279);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (274, 279);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(289, 7, 2, 2, 'TD 13', 2, '2025-09-02', '2026-01-16', 120.0); #2129 | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (269, 289);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (279, 289);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(167, 7, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 90.0); #Salle d'examen | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (135, 167);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (87, 167);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(290, 7, 2, 2, 'CC 2', 1, '2025-09-02', '2026-01-16', 90.0); #Salle d'examen | R1.06 Mathématiques discrètes#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (289, 290);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (269, 290);
#R1.12#

#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(40, 13, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(65, 13, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (40, 65);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(102, 13, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2235 | R1.12 PPP#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (65, 102);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(108, 13, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (102, 108);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(153, 13, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (108, 153);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(177, 13, 2, 2, 'TD 6', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (153, 177);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(223, 13, 2, 2, 'TD 7', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (177, 223);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(242, 13, 2, 2, 'TD 8', 2, '2025-09-02', '2026-01-16', 120.0); #1109 | R1.12 Projet professionnel et personnel#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (223, 242);
#R1.09#

#CM#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(216, 10, 2, 2, 'CM 1', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.09 Économie durable et numérique#
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(236, 10, 2, 2, 'CM 2', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (216, 236);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(245, 10, 2, 2, 'CM 3', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (236, 245);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(263, 10, 2, 2, 'CM 4', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (245, 263);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(278, 10, 2, 2, 'CM 5', 1, '2025-09-02', '2026-01-16', 60.0); #Amphithéâtre | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (263, 278);
#TD#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(240, 10, 2, 2, 'TD 1', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (236, 240);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(260, 10, 2, 2, 'TD 2', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (245, 260);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (240, 260);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(271, 10, 2, 2, 'TD 3', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (263, 271);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (260, 271);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(283, 10, 2, 2, 'TD 4', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (278, 283);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (271, 283);
INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(295, 10, 2, 2, 'TD 5', 2, '2025-09-02', '2026-01-16', 120.0); #2127 | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (278, 295);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (283, 295);
#CC#

INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES(293, 10, 2, 2, 'CC 1', 1, '2025-09-02', '2026-01-16', 120.0); #Salle d'examen | R1.09 Économie durable et numérique#
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (283, 293);
INSERT INTO ICA_AVANT(OBG_ID1, OBG_ID2) VALUES (278, 293);

SET foreign_key_checks = 1;
