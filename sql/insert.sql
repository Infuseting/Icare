INSERT INTO ICA_Permission VALUES(1, "*");
INSERT INTO ICA_Role VALUES(1, "Super Admin");
INSERT INTO ICA_ROLE_HAS_PERMISSION VALUES(1, 1);


INSERT INTO ICA_User VALUES(22401769, "SERRET Arthur", "arthur.serret@etu.unicaen.fr");
INSERT INTO ICA_USER_HAS_ROLE VALUES(22401769, 1);

INSERT INTO ICA_Permission VALUES(2, "Change permission of user");
INSERT INTO ICA_Permission VALUES(3, "Change permission of role");
INSERT INTO ICA_Permission VALUES(4, "Create a new role");
INSERT INTO ICA_Permission VALUES(5, "Delete a new role");
INSERT INTO ICA_Permission VALUES(6, "View EDT of user");
INSERT INTO ICA_Permission VALUES(7, "Modify EDT of user");

#INSERT INTO ICA_User VALUES (0, "ANNE Jean-Francois", "jean-francois.anne@unicaen.fr");
#INSERT INTO ICA_EDT VALUES (1, "https://enpoche.normandie-univ.fr/aggrss/public/edt/edtProxy.php?edt_url=http://proxyade.unicaen.fr/ZimbraIcs/intervenant/8920.ics", "ADE EDT");
#INSERT INTO ICA_Appartient VALUES(1, 0);