CREATE DATABASE Ecole;
USE Ecole;
CREATE TABLE enseignant (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    prenom VARCHAR(50) ,       
    nom VARCHAR(50) ,         
    num_salle VARCHAR(100),  
    dep varchar(100),
    annee_diplome int ,
    telephone VARCHAR(15) unique ,             
    email VARCHAR(100) unique  
);

CREATE TABLE etudiant (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    prenom VARCHAR(50) ,       
    nom VARCHAR(50) ,         
    num_salle VARCHAR(100),  
    dep varchar(100),
    annee_diplome int ,
    telephone VARCHAR(15) unique not null,             
    email VARCHAR(100) unique  
);

INSERT INTO etudiant (id, prenom, nom, num_salle, telephone, email, annee_diplome)
VALUES (1, 'Mark', 'Watney', '5', '777-555-1234', NULL, 2035);

INSERT INTO etudiant (id, prenom, nom, num_salle, telephone, email, annee_diplome)
VALUES (2, 'peter', 'parker', '4', '888-555-1234', NULL, 2036);

INSERT INTO etudiant (id, prenom, nom, num_salle, telephone, email, annee_diplome)
VALUES (3, 'brad', 'pit', '5', '666-555-1234', NULL, 2037);

INSERT INTO etudiant (id, prenom, nom, num_salle, telephone, email, annee_diplome) 
VALUES 

(4, 'Lucie', 'Durand', '103', '555-345-6789', 'lucie.durand@school.edu', 2024),
(5, 'Paul', 'Giraud', '104', '555-456-7890', 'paul.giraud@school.edu', 2025),
(6, 'Julie', 'Benoit', '105', '555-567-8901', 'julie.benoit@school.edu', 2023),
(7, 'David', 'Moreau', '106', '555-678-9012', 'david.moreau@school.edu', 2024),
(8, 'Sophie', 'Roux', '107', '555-789-0123', 'sophie.roux@school.edu', 2022),
(9, 'Maxime', 'Perrin', '108', '555-890-1234', 'maxime.perrin@school.edu', 2023),
(10, 'Eva', 'Faure', '109', '555-901-2345', 'eva.faure@school.edu', 2025),
(11, 'Hugo', 'Girard', '110', '555-012-3456', 'hugo.girard@school.edu', 2024),
(12, 'Lucas', 'Bernard', '111', '555-123-5678', 'lucas.bernard@school.edu', 2022),
(13, 'Camille', 'Blanc', '112', '555-234-6789', 'camille.blanc@school.edu', 2025),
(14, 'Emma', 'Dupuis', '113', '555-345-7890', 'emma.dupuis@school.edu', 2023),
(15, 'Martin', 'Fabre', '114', '555-456-8901', 'martin.fabre@school.edu', 2024),
(16, 'Lea', 'Lemoine', '115', '555-567-9012', 'lea.lemoine@school.edu', 2025),
(17, 'Thomas', 'Meyer', '116', '555-678-0123', 'thomas.meyer@school.edu', 2022),
(18, 'Julie', 'Masson', '117', '555-789-1234', 'julie.masson@school.edu', 2024),
(19, 'Antoine', 'Lopez', '118', '555-890-2345', 'antoine.lopez@school.edu', 2023),
(20, 'Clara', 'Robin', '119', '555-901-3456', 'clara.robin@school.edu', 2025),
(21, 'Julien', 'Boucher', '120', '555-012-4567', 'julien.boucher@school.edu', 2022),
(22, 'Elise', 'Henry', '121', '555-123-6789', 'elise.henry@school.edu', 2023),
(23, 'Adrien', 'Leclerc', '122', '555-234-7890', 'adrien.leclerc@school.edu', 2024),
(24, 'Manon', 'Gauthier', '123', '555-345-8901', 'manon.gauthier@school.edu', 2025),
(25, 'Sara', 'Rousseau', '124', '555-456-9012', 'sara.rousseau@school.edu', 2022),
(26, 'Antoine', 'Renard', '125', '555-567-0123', 'antoine.renard@school.edu', 2023),
(27, 'Lucie', 'Fournier', '126', '555-678-1234', 'lucie.fournier@school.edu', 2025),
(28, 'Alexandre', 'Girard', '127', '555-789-2345', 'alexandre.girard@school.edu', 2024),
(29, 'Marie', 'Lopez', '128', '555-890-3456', 'marie.lopez@school.edu', 2022),
(30, 'Louis', 'Lemoine', '129', '555-901-4567', 'louis.lemoine@school.edu', 2023),
(31, 'Claire', 'Bertin', '130', '555-012-5678', 'claire.bertin@school.edu', 2024),
(32, 'Benoit', 'Lucas', '131', '555-123-7890', 'benoit.lucas@school.edu', 2025),
(33, 'Juliette', 'Renaud', '132', '555-234-8901', 'juliette.renaud@school.edu', 2022),
(34, 'Elena', 'Perrin', '133', '555-345-9012', 'elena.perrin@school.edu', 2024),
(35, 'Arthur', 'Marchand', '134', '555-456-0123', 'arthur.marchand@school.edu', 2023),
(36, 'Valerie', 'Benoit', '135', '555-567-1234', 'valerie.benoit@school.edu', 2025),
(37, 'Kevin', 'Arnaud', '136', '555-678-2345', 'kevin.arnaud@school.edu', 2022),
(38, 'Baptiste', 'Deschamps', '137', '555-789-3456', 'baptiste.deschamps@school.edu', 2024),
(39, 'Sarah', 'Gomez', '138', '555-890-4567', 'sarah.gomez@school.edu', 2023),
(40, 'Florian', 'Roux', '139', '555-901-5678', 'florian.roux@school.edu', 2025),
(41, 'Aline', 'Petit', '140', '555-012-6789', 'aline.petit@school.edu', 2022),
(42, 'Nicolas', 'Noel', '141', '555-123-8901', 'nicolas.noel@school.edu', 2023),
(43, 'Olivier', 'Olivier', '142', '555-234-9012', 'olivier.olivier@school.edu', 2024),
(44, 'Marine', 'Fontaine', '143', '555-345-0123', 'marine.fontaine@school.edu', 2025),
(45, 'Claire', 'Guerin', '144', '555-456-1234', 'claire.guerin@school.edu', 2022),
(46, 'Guillaume', 'Fabre', '145', '555-567-2345', 'guillaume.fabre@school.edu', 2023),
(47, 'Laetitia', 'Olivier', '146', '555-678-3456', 'laetitia.olivier@school.edu', 2025),
(48, 'Maxime', 'Dupuis', '147', '555-789-4567', 'maxime.dupuis@school.edu', 2024),
(49, 'Helene', 'Georges', '148', '555-890-5678', 'helene.georges@school.edu', 2023),
(50, 'Sebastien', 'Leger', '149', '555-901-6789', 'sebastien.leger@school.edu', 2025);

INSERT INTO etudiant (id, prenom, nom, num_salle, dep,telephone, email, annee_diplome)
VALUES(51, 'hello', 'world', '202', '555-901-87789', 'sebastiden.leger@school.edu', 2025);





INSERT INTO enseignant (id, prenom, nom, num_salle, dep,telephone, email, annee_diplome)
VALUES (1, 'Jonas', 'Salk', '5','biologie', '777-555-4321', 'jsalk@school.org', 2035);

INSERT INTO enseignant (id, prenom, nom, num_salle, dep,telephone, email, annee_diplome)
VALUES (26, 'hello', 'world', '149','biologie', '7775-555-4321', 'jsalk@dschool.org', 2035);

INSERT INTO enseignant (id, prenom, nom, num_salle, dep,telephone, email, annee_diplome)
VALUES (5, 'monsieur', 'prof', '4','info', '777-545-4321', 'jsalki@school.org', 2085);

INSERT INTO enseignant (id, prenom, nom, num_salle, dep, telephone, email, annee_diplome) 
VALUES 
(2, 'Isabelle', 'Bernard', '202', 'Physique', '555-222-2222', 'isabelle.bernard@school.edu', 2016),
(3, 'Luc', 'Dupuis', '203', 'Informatique', '555-333-3333', 'luc.dupuis@school.edu', 2014),
(4, 'Marie', 'Giraud', '204', 'Chimie', '555-444-4444', 'marie.giraud@school.edu', 2017),

(6, 'Sophie', 'Girard', '206', 'Histoire', '555-666-6666', 'sophie.girard@school.edu', 2013),
(7, 'Jean', 'Moreau', '207', 'Géographie', '555-777-7777', 'jean.moreau@school.edu', 2012),
(8, 'Claire', 'Durand', '208', 'Philosophie', '555-888-8888', 'claire.durand@school.edu', 2015),
(9, 'Paul', 'Fabre', '209', 'Anglais', '555-999-9999', 'paul.fabre@school.edu', 2016),
(10, 'Julie', 'Perrin', '210', 'Espagnol', '555-101-0101', 'julie.perrin@school.edu', 2018),
(11, 'David', 'Lopez', '211', 'Italien', '555-202-0202', 'david.lopez@school.edu', 2014),
(12, 'Emma', 'Lemoine', '212', 'Philosophie', '555-303-0303', 'emma.lemoine@school.edu', 2017),
(13, 'Martin', 'Blanc', '213', 'Histoire', '555-404-0404', 'martin.blanc@school.edu', 2016),
(14, 'Elena', 'Martin', '214', 'Sociologie', '555-505-0505', 'elena.martin@school.edu', 2018),
(15, 'Hugo', 'Petit', '215', 'Psychologie', '555-606-0606', 'hugo.petit@school.edu', 2013),
(16, 'Lea', 'Renard', '216', 'Droit', '555-707-0707', 'lea.renard@school.edu', 2017),
(17, 'Benoit', 'Boucher', '217', 'Économie', '555-808-0808', 'benoit.boucher@school.edu', 2015),
(18, 'Camille', 'Faure', '218', 'Gestion', '555-909-0909', 'camille.faure@school.edu', 2016),
(19, 'Sara', 'Gautier', '219', 'Informatique', '555-111-2121', 'sara.gautier@school.edu', 2017),
(20, 'Louis', 'Meyer', '220', 'Mathématiques', '555-222-3131', 'louis.meyer@school.edu', 2018),
(21, 'Thomas', 'Masson', '221', 'Physique', '555-333-4141', 'thomas.masson@school.edu', 2014),
(22, 'Lucie', 'Robin', '222', 'Chimie', '555-444-5151', 'lucie.robin@school.edu', 2017),
(23, 'Julie', 'Noel', '223', 'Biologie', '555-555-6161', 'julie.noel@school.edu', 2016),
(24, 'Julien', 'Renaud', '224', 'Histoire', '555-666-7171', 'julien.renaud@school.edu', 2018),
(25, 'Maxime', 'Georges', '225', 'Philosophie', '555-777-8181', 'maxime.georges@school.edu', 2015);
