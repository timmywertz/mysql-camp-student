USE rockStarDay2; 
SHOW COLUMNS FROM band;
SELECT ID, name, genre FROM band;
SELECT * FROM individual WHERE lastName = 'Jennings';
SELECT ID, LASTNAME FROM individual WHERE DeceasedDate IS NOT NULL; 
SELECT ID, LASTNAME, BirthDate FROM individual WHERE Year(BirthDate) > 1940;
SELECT * FROM individual WHERE ID IN (1,3,5,7,19);

SELECT name FROM band WHERE genre = 'alternative' AND isTogether = 0;
SELECT ID, name FROM band WHERE ID IN (4);
