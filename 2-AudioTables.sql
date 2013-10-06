
DROP TABLE IF EXISTS AudioCounter;


-- Create a table to loop 50 times...
CREATE TABLE AudioCounter (id INTEGER PRIMARY KEY AUTOINCREMENT, Counter INTEGER default NULL);
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');
INSERT INTO AudioCounter (Counter) VALUES ('0');

-- Fill 50 entries for war/peace with <PercentChanceOfPlaying> = 0 tag
INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume, IsMusic, PercentChanceOfPlaying)
	SELECT 'SONG_RUSSIA_PEACE_' || AudioCounter.id, 'SND_RED_ARMY_CHOIR_1', 'GAME_MUSIC', 60, 60, 1, 0
	FROM AudioCounter;	
INSERT INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume, IsMusic, PercentChanceOfPlaying)
	SELECT 'SONG_RUSSIA_WAR_' || AudioCounter.id, 'SND_RED_ARMY_CHOIR_2', 'GAME_MUSIC', 60, 60, 1, 0
	FROM AudioCounter;

-- Now add the real entries
INSERT OR REPLACE INTO Audio_2DSounds (ScriptID, SoundID, SoundType, MinVolume, MaxVolume, PercentChanceOfPlaying) VALUES
	-- Peace
	('SONG_RUSSIA_PEACE_1',		'SND_RED_ARMY_CHOIR_1',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_2',		'SND_RED_ARMY_CHOIR_2',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_3',		'SND_RED_ARMY_CHOIR_4',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_4',		'SND_RED_ARMY_CHOIR_5',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_5',		'SND_RED_ARMY_CHOIR_6',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_6',		'SND_RED_ARMY_CHOIR_7',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_7',		'SND_RED_ARMY_CHOIR_9',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_8',		'SND_RED_ARMY_CHOIR_13',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_9',		'SND_RED_ARMY_CHOIR_14',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_10',	'SND_RED_ARMY_CHOIR_18',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_11',	'SND_RED_ARMY_CHOIR_20',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_PEACE_12',	'SND_RED_ARMY_CHOIR_22',	'GAME_MUSIC', 60, 60, 100),
	-- War						
	('SONG_RUSSIA_WAR_1',		'SND_RED_ARMY_CHOIR_3',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_2',		'SND_RED_ARMY_CHOIR_2',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_3',		'SND_RED_ARMY_CHOIR_4',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_4',		'SND_RED_ARMY_CHOIR_5',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_5',		'SND_RED_ARMY_CHOIR_8',		'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_6',		'SND_RED_ARMY_CHOIR_10',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_7',		'SND_RED_ARMY_CHOIR_11',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_8',		'SND_RED_ARMY_CHOIR_12',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_9',		'SND_RED_ARMY_CHOIR_14',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_10',		'SND_RED_ARMY_CHOIR_15',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_11',		'SND_RED_ARMY_CHOIR_16',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_12',		'SND_RED_ARMY_CHOIR_17',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_13',		'SND_RED_ARMY_CHOIR_18',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_14',		'SND_RED_ARMY_CHOIR_19',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_15',		'SND_RED_ARMY_CHOIR_20',	'GAME_MUSIC', 60, 60, 100),
	('SONG_RUSSIA_WAR_16',		'SND_RED_ARMY_CHOIR_21',	'GAME_MUSIC', 60, 60, 100),
	-------------------------------------------------------------------------------
	('END_OF_INSERT',			'SND_RED_ARMY_CHOIR_1',		'GAME_MUSIC', 60, 60, 100);
	----------------------------------------------------------------------------------
-- Remove last entry...
DELETE FROM Audio_2DSounds WHERE ScriptID = 'END_OF_INSERT';