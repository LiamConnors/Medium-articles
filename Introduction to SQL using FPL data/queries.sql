CREATE TABLE "Players" (
	"assists"	INTEGER,
	"bonus"	INTEGER,
	"bps"	INTEGER,
	"chance_of_playing_next_round"	TEXT,
	"chance_of_playing_this_round"	TEXT,
	"clean_sheets"	INTEGER,
	"code"	INTEGER,
	"corners_and_indirect_freekicks_order"	TEXT,
	"corners_and_indirect_freekicks_text"	TEXT,
	"cost_change_event"	INTEGER,
	"cost_change_event_fall"	INTEGER,
	"cost_change_start"	INTEGER,
	"cost_change_start_fall"	INTEGER,
	"creativity"	REAL,
	"creativity_rank"	INTEGER,
	"creativity_rank_type"	INTEGER,
	"direct_freekicks_order"	TEXT,
	"direct_freekicks_text"	TEXT,
	"dreamteam_count"	INTEGER,
	"element_type"	INTEGER,
	"ep_next"	REAL,
	"ep_this"	REAL,
	"event_points"	INTEGER,
	"first_name"	TEXT,
	"form"	REAL,
	"goals_conceded"	INTEGER,
	"goals_scored"	INTEGER,
	"ict_index"	REAL,
	"ict_index_rank"	INTEGER,
	"ict_index_rank_type"	INTEGER,
	"id"	INTEGER,
	"in_dreamteam"	TEXT,
	"influence"	REAL,
	"influence_rank"	INTEGER,
	"influence_rank_type"	INTEGER,
	"minutes"	INTEGER,
	"news"	TEXT,
	"news_added"	TEXT,
	"now_cost"	INTEGER,
	"own_goals"	INTEGER,
	"penalties_missed"	INTEGER,
	"penalties_order"	TEXT,
	"penalties_saved"	INTEGER,
	"penalties_text"	TEXT,
	"photo"	TEXT,
	"points_per_game"	REAL,
	"red_cards"	INTEGER,
	"saves"	INTEGER,
	"second_name"	TEXT,
	"selected_by_percent"	REAL,
	"special"	TEXT,
	"squad_number"	TEXT,
	"status"	TEXT,
	"team"	INTEGER,
	"team_code"	INTEGER,
	"threat"	REAL,
	"threat_rank"	INTEGER,
	"threat_rank_type"	INTEGER,
	"total_points"	INTEGER,
	"transfers_in"	INTEGER,
	"transfers_in_event"	INTEGER,
	"transfers_out"	INTEGER,
	"transfers_out_event"	INTEGER,
	"value_form"	REAL,
	"value_season"	REAL,
	"web_name"	TEXT,
	"yellow_cards"	INTEGER
);


SELECT * FROM Players_GWs;

SELECT * FROM Players_GWs LIMIT 5;

SELECT name, position, team, GW, total_points, value FROM Players_GWs LIMIT 5;

SELECT position, GW, name, team, total_points, value FROM Players_GWs LIMIT 5;

SELECT name, position, team, GW, total_points, value FROM Players_GWs ORDER BY total_points LIMIT 5;

SELECT name, position, team, GW, total_points, value FROM Players_GWs WHERE team='Spurs' ORDER BY total_points DESC LIMIT 5;

SELECT name, position, team, GW, total_points, value FROM Players_GWs WHERE team LIKE 'Man%' ORDER BY total_points DESC LIMIT 5;

SELECT name, team, SUM(total_points) FROM Players_GWs GROUP BY name;

SELECT team, name, SUM(total_points) AS 'overall points' FROM Players_GWs GROUP BY team, name;

SELECT name, team, SUM(total_points) AS 'overall points' FROM Players_GWs GROUP BY name;


