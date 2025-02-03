DELETE ICA_HERITE
FROM ICA_HERITE
         JOIN ICA_Classe USING (CLA_ID)
WHERE NIV_ID = 2;

SELECT * FROM ICA_Etude;
SELECT * FROM ica_user;
SELECT * FROM ICA_Classe JOIN ICA_Type_Classe USING (TYPC_ID) JOIN ICA_Etude USING (ETU_ID);

SELECT * FROM ICA_Salle JOIN ICA_Batiment USING (BAT_ID);
SELECT * FROM ICA_EST_TYPE;

SELECT * FROM ICA_EST_TYPE JOIN ICA_TYPE USING (TYP_ID);

SELECT COUNT(*) FROM ICA_EST_TYPE JOIN ICA_TYPE USING (TYP_ID) WHERE SAL_ID = ? AND TYP_ID = ?;

SELECT * FROM ICA_Batiment ORDER BY BAT_ID;

SELECT * FROM ICA_Batiment LEFT JOIN ICA_Distance ON ICA_Batiment.BAT_ID = ICA_Distance.BAT_ID1 WHERE BAT_ID2 = ? OR BAT_ID2 is null ORDER BY BAT_ID;

SELECT * FROM ICA_Distance;

DELETE FROM ICA_Distance WHERE now() = now();

SELECT * FROM ICA_Autorise;

SELECT * FROM ICA_Autorise JOIN ICA_Etude USING (ETU_ID) WHERE ETU_ID = ? AND SAL_ID = ?;


SELECT * FROM ica_appartient JOIN ica_edt USING (EDT_ID) WHERE USE_UUID = 911;

SELECT * FROM ICA_User WHERE USE_UUID NOT IN (SELECT USE_UUID FROM ICA_Prof)

SELECT * FROM ICA_Format JOIN ICA_Etude USING (ETU_ID) JOIN ICA_Matiere USING (MAT_ID) JOIN ICA_Temporalite USING (SEM_ID);














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