SELECT * FROM player;
SELECT * FROM team;
SELECT * FROM batting;
SELECT * FROM roster; 

SELECT team.ID, team.TeamName, batting.TeamID, batting.Rank, batting.BattingAvg
FROM team 
INNER JOIN batting ON team.ID = batting.TeamID;


SELECT player.lastName, player.firstName
FROM player
INNER JOIN batting ON player.ID = batting.playerID WHERE battingAvg = '331';

SELECT player.lastName, player.firstName
FROM player
INNER JOIN roster ON player.ID = roster.playerID 
INNER JOIN team ON roster.teamID = team.ID;

SELECT * FROM vteamRoster; 

DESCRIBE vteamRoster;

SHOW CREATE VIEW vteamRoster;

SELECT *
FROM player
LEFT JOIN batting ON player.ID = batting.playerID;

SELECT *
FROM team
LEFT JOIN roster ON team.ID = roster.teamID;

SELECT * 
FROM team
INNER JOIN roster ON team.ID = roster.teamID;

SELECT *
FROM team
LEFT JOIN roster ON team.ID = roster.teamID
WHERE roster.playerID IS NULL;

SELECT batting.rank, batting.battingAvg, CONCAT(player.lastName,", ",player.firstName)
FROM player
INNER JOIN batting ON batting.playerID = player.ID;  

SELECT batting.battingAvg, batting.id, team.teamname 
FROM team
INNER JOIN batting ON batting.teamID = team.ID
ORDER BY battingAvg DESC; 

SELECT * FROM baseball.vbattingleaders;

SELECT firstName, lastName, ABBR, hits  
FROM baseball.vbattingleaders 
ORDER BY hits DESC;

SELECT firstName, lastName, ABBR, hits  
FROM baseball.vbattingleaders 
ORDER BY hits ASC;

SELECT *  
FROM baseball.vbattingleaders 
ORDER BY ABBR, atbats DESC;



