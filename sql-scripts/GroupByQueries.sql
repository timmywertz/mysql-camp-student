SELECT * FROM player;
SELECT * FROM team;
SELECT * FROM batting;
SELECT * FROM roster; 

SELECT * FROM baseball.vteamRoster;


SELECT * 
FROM baseball.vteamRoster 
INNER JOIN batting ON batting.playerID = vteamRoster.playerID;

SELECT avg(vteamRoster.Weight)   
FROM baseball.vteamRoster 
INNER JOIN batting ON batting.playerID = vteamRoster.playerID
GROUP BY divisionName;

SELECT * FROM baseball.vteamRoster;

SELECT COUNT(vteamRoster.position), vteamRoster.position 
FROM baseball.vteamRoster
GROUP BY vteamRoster.position;

