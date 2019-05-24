CREATE TABLE `Players`
(
  `player_id` int PRIMARY KEY,
  `first_name` varchar(255),
  `last_name` varchar(255),
  `position` varchar(255),
  `height` varchar(255),
  `weight` int,
  `birth_year` date,
  `college` varchar(255),
  `round_drafted` int,
  `draft_pick` int,
  `draft_year` int
);

CREATE TABLE `Teams`
(
  `team_id` int PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE `Career_Total`
(
  `career_id` int PRIMARY KEY,
  `player_id` int,
  `pass_yds` int,
  `rush_yds` int,
  `receive_yds` int,
  `fieldgoal` int,
  `pat` int,
  `punt_rtn` int,
  `kick_rtn` int
);

CREATE TABLE `Offensive_Season`
(
  `oseason_id` int PRIMARY KEY,
  `player_id` int,
  `team_id` int,
  `pass_yds` int,
  `rushing_yds` int,
  `fieldgoal` int,
  `pat` int,
  `punt_rtn` int,
  `kick_rtn` int
);

CREATE TABLE `Deffensive_Season`
(
  `dseason_id` int PRIMARY KEY,
  `team_id` int,
  `punt_rtn` int,
  `kick_rtn` int,
  `fumble_rcvr` int,
  `interception` int,
  `point_allowed` int,
  `yds_allowed` int
);

ALTER TABLE `Career_Total` ADD FOREIGN KEY (`player_id`) REFERENCES `Players` (`player_id`);

ALTER TABLE `Offensive_Season` ADD FOREIGN KEY (`player_id`) REFERENCES `Players` (`player_id`);

ALTER TABLE `Offensive_Season` ADD FOREIGN KEY (`team_id`) REFERENCES `Teams` (`team_id`);

ALTER TABLE `Deffensive_Season` ADD FOREIGN KEY (`team_id`) REFERENCES `Teams` (`team_id`);
