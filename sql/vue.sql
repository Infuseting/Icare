CREATE OR REPLACE VIEW ICA_User_Permission AS
SELECT * FROM (
    SELECT USE_UUID, PER_ID, PER_Libelle FROM ICA_User JOIN ICA_USER_HAS_PERMISSION USING (USE_UUID) JOIN ICA_Permission USING (PER_ID)
                            UNION
    SELECT USE_UUID, PER_ID, PER_Libelle FROM ICA_User JOIN ICA_USER_HAS_ROLE USING (USE_UUID) LEFT JOIN ICA_ROLE_HAS_PERMISSION USING (ROL_ID) JOIN ICA_Permission USING (PER_ID)

) AS T1;

CREATE VIEW ICA_Ancetre_Classe AS
WITH RECURSIVE Ancetres AS (
    -- Point de départ : la classe dont on cherche les ancêtres
    SELECT
        CLA_ID,
        ANCETRE_CLA_ID
    FROM
        ICA_HERITE
    WHERE
        CLA_ID = 0 -- Par défaut, pour un CLA_ID donné, à remplacer dynamiquement ou dans la requête d’appel

    UNION ALL

    -- Étape récursive : trouver les ancêtres des ancêtres
    SELECT
        h.CLA_ID,
        h.ANCETRE_CLA_ID
    FROM
        ICA_HERITE h
            INNER JOIN
        Ancetres a ON h.CLA_ID = a.ANCETRE_CLA_ID
)
SELECT * FROM Ancetres;


CREATE VIEW ICA_Heritier_Classe AS
WITH RECURSIVE Heritiers AS (
    -- Point de départ : l’ancêtre dont on cherche les héritiers
    SELECT
        CLA_ID,
        ANCETRE_CLA_ID
    FROM
        ICA_HERITE
    WHERE
        ANCETRE_CLA_ID = 0 -- Par défaut, pour un ANCETRE_CLA_ID donné, à remplacer dynamiquement ou dans la requête d’appel

    UNION ALL

    -- Étape récursive : trouver les héritiers des héritiers
    SELECT
        h.CLA_ID,
        h.ANCETRE_CLA_ID
    FROM
        ICA_HERITE h
            INNER JOIN
        Heritiers r ON h.ANCETRE_CLA_ID = r.CLA_ID
)
SELECT * FROM Heritiers;
