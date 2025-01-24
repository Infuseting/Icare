DELETE ICA_HERITE
FROM ICA_HERITE
         JOIN ICA_Classe USING (CLA_ID)
WHERE NIV_ID = 2;

SELECT * FROM ICA_Etude;

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

SELECT * FROM ICA_Autorise JOIN ICA_Etude USING (ETU_ID) WHERE ETU_ID = ? AND SAL_ID = ?

SELECT * FROM ica_user WHERE USE_UUID = 22401769;

SELECT * FROM ICA_FORMAT JOIN ICA_Matiere USING (MAT_ID) JOIN ICA_Temporalite USING (SEM_ID) JOIN ICA_Etude USING (ETU_ID)
SELECT * FROM ica_prof JOIN ica_user USING (USE_UUID)

SELECT * FROM ica_prof JOIN ica_user USING (USE_UUID);
SELECT * FROM ica_format;

SELECT * FROM ica_responsable;

SELECT * FROM ICA_User JOIN ICA_Appartient USING (USE_UUID) JOIN ICA_EDT USING (EDT_ID)  WHERE USE_UUID = ?;

SELECT * FROM ICA_Calendar;