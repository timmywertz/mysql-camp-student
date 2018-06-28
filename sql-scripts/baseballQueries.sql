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


