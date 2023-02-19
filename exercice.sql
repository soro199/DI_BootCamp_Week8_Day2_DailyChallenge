CREATE TABLE FirstTab (
     id integer, 
     name VARCHAR(10)
);

INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar');

SELECT * FROM FirstTab;

CREATE TABLE SecondTab (
    id integer 
);

INSERT INTO SecondTab VALUES
(5),
(NULL);


SELECT * FROM SecondTab


--Q1. Quelle sera la SORTIE de l'instruction suivante ?

SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );

--R1: L'instruction SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN (SELECT id FROM SecondTab WHERE id IS NULL) renvoie le nombre de lignes de la table "FirstTab" où la valeur de la colonne "id" n'est pas NULL et n'existe pas dans la table "SecondTab" où la colonne "id" est NULL.

--Q2. Quelle sera la SORTIE de l'instruction suivante ?

SELECT COUNT(*) 
FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id = 5 );
	
--R2: En utilisant les données fournies dans les instructions précédentes, la requête renverra la valeur 2 car les valeurs d'ID 6 et 7 existent dans la table "FirstTab" et ne sont pas égales à 5 et aucune de ces valeurs ne se trouve dans la table "SecondTab" où la colonne "id" est égale à 5.

--Q3. Quelle sera la SORTIE de l'instruction suivante ?

SELECT COUNT(*) 
FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab );
	
--R3: L'instruction SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN (SELECT id FROM SecondTab) renvoie le nombre de lignes de la table "FirstTab" où la valeur de la colonne "id" n'existe pas dans la table "SecondTab".

--Q4: Quelle sera la SORTIE de l'instruction suivante ?

SELECT COUNT(*) 
FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab WHERE id IS NOT NULL )

--R4: L'instruction SELECT COUNT(*) FROM FirstTab AS ft WHERE ft.id NOT IN (SELECT id FROM SecondTab WHERE id IS NOT NULL) renvoie le nombre de lignes de la table "FirstTab" où la valeur de la colonne "id" n'existe pas dans la table "SecondTab" où la colonne "id" n'est pas NULL.
	
	