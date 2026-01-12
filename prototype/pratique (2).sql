
INSERT INTO Employe (NOM, PRéNOM, ROLE,EMAIL)
VALUES
('chablaoui', 'soukaina', 'Développeur','chablaouisoukaina@gmail.com'),
('bakkali', 'amal', 'Chef de projet','bakkaliamal@gmail.com'),
('moujahid', 'mohamed', 'Designer','moujahidmohamed@gmail.com');
INSERT INTO project(PROJECT_ID, NAME, dateDeb, dateFin, idEmp)
values
(234, 'Application de Gestion de Restaurant', '2024-03-01', '2024-05-13', 1),
(98, 'gestion de stock', '2025-02-20', '2025-05-18', 2),
(123, 'Site E-commerce Fashion', '2026-03-11', '2026-06-09', 3);
INSERT INTO tache(ID, description, etat, priorite, ID_PROJECT)
 values
(1, 'designer','en cours',1,234),
(2, 'devlopper backend','terminer',2,98),
(3, 'devlopper frontend','en cours',3,123 );
SELECT NAME, DATE_Déb, DATE_FIN
FROM project;
SELECT *
FROM employe
WHERE nom LIKE 'ba%';
SELECT *
FROM tache
WHERE ID_PROJECT = 234
ORDER BY priorite ASC;
SELECT *
FROM project
WHERE DATE_FIN < '2026-04-01';
SELECT *
FROM employe
WHERE ROLE = 'Développeur';
SELECT *
FROM tache
WHERE ID_PROJECT = 98
AND etat = 'Terminée';
SELECT p.NAME, p.DATE_DéB, p.DATE_FIN, e.NOM, e.PRéNOM
FROM project p
JOIN employe e ON p.idEmp = e.ID;
SELECT t.*
FROM tache t
JOIN project p ON t.ID_PROJECT = p.PROJECT_ID
WHERE p.NAME = 'Site E-commerce fashion';
SELECT COUNT(*) AS nbTachesTerminees
FROM tache t
JOIN project p ON t.ID_PROJECT = p.PROJECT_ID
WHERE p.NAME = 'Site E-commerce fashion'
AND t.etat = 'Terminée';
SELECT COUNT(*) AS nbProjets
FROM project
WHERE YEAR(DATE_FIN) = 2025;

UPDATE project
SET DATE_FIN = '2026-05-16'
WHERE PROJECT_ID = 234;
UPDATE tache
SET etat = 'Terminée'
WHERE ID = 98;

DELETE FROM tache
WHERE ID_PROJECT = 123
AND etat = 'Non commencée';
DELETE FROM employe
WHERE nom = 'moujahid'
AND prenom = 'mohamed';