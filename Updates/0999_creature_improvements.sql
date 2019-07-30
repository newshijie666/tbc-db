-- classic-db creatures sync and improvements
DELETE FROM `creature` WHERE `id` IN (599,14344,13602); -- respawned
DELETE FROM `creature` WHERE `guid` IN (140783,140784,140785,140786,91752,91795,40727,140755,140756,140771,140772);
DELETE FROM `creature` WHERE `guid` BETWEEN 5301215 AND 5301219;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnmask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `movementtype`) VALUES
-- NEW: 599 might be one spawn with movement between these points and random movement at these points
(140780, 599, 0, 1, -11192.78, 1468.711, 15.80358, 5.444971, 115200, 172800, 3, 1), -- NEW, should be at these locations
(140781, 599, 0, 1, -11245.74, 1481.678, 23.50274, 0.898819, 115200, 172800, 3, 1),
(140782, 599, 0, 1, -11264.48, 1538.75, 28.16913, 1.52972, 115200, 172800, 3, 1),
(140783, 15384, 0, 1, -8764.96, 834.5883, 59.54026, 0.2268928, 300, 300, 0, 0), -- Found in sniff not sure what these for
(140784, 2334, 0, 1, -8950.462, 881.5955, 59.54026, 1.32645, 300, 300, 0, 0),
(140785, 2334, 0, 1, -8409.473, 626.1468, 59.54026, 5.794493, 300, 300, 0, 0),
(140786, 2334, 0, 1, -8408.045, 625.9042, 59.54026, 2.094395, 300, 300, 0, 0),

(51895, 14344, 1, 1, 4250.07, -781.841, 262.327, 0.233983, 115200, 172800, 5, 1), -- sync classic-db
(140771, 14344, 1, 1, 4053.78, -645.117, 298.641, 4.76121, 115200, 172800, 5, 1),
(140772, 14344, 1, 1, 4196.29, -849.411, 258.506, 2.20474, 115200, 172800, 5, 1),
(140773, 14344, 1, 1, 3914.9, -1063.66, 243.252, 4.07791, 115200, 172800, 5, 1),
(89424, 13602, 0, 1, 171.682, -260.075, 150.132, 1.142, 600, 600, 40, 1), -- The Abominable Greench - Missing Commit?
(91750, 13602, 0, 1, 361.078, -54.289, 145.192, 2.182, 600, 600, 40, 1),
(91751, 13602, 0, 1, 313.328, -376.999, 169.598, 0.914, 600, 600, 40, 1),
(91752, 13602, 0, 1, 550.981, -101.974, 145.18, 2.755, 600, 600, 40, 1),
(91795, 20102, 1, 1, 6791.34, -4747.01, 701.617, 2.21657, 300, 300, 0, 0), -- free tbc-db 91752

-- move tbc 140771,140772 to tbc only range 
(5301215, 23289, 530, 1, -5134.8, 703.83, 41.8539, 1.83264, 300, 300, 0, 2), -- 140755
(5301216, 23289, 530, 1, -5207.63, 621.234, 46.1889, 6.18352, 300, 300, 0, 2), -- 140756
(5301217, 23376, 530, 1, -5134.01, 702.179, 41.687, 1.77374, 300, 300, 0, 0), -- 40727
(5301218, 23376, 530, 1, -5209.09, 621.369, 46.3592, 6.17571, 300, 300, 0, 0), -- 140771
(5301219, 23383, 530, 1, -4106.64, 3029.76, 344.877, 0.820305, 60, 60, 0, 0); -- 140772

DELETE FROM `creature` WHERE `id` = 1419; -- use classic/wotlk-db guid and update coords to sniff
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(90184, 1419, 0, -8994.194, 947.069, 118.3476, 4.29351, 180, 180, 0, 0);

DELETE FROM `creature_movement` WHERE `id` IN (140755,140756,5301215,5301216);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `script_id`, `comment`) VALUES
(5301215, 1, -5137.85, 719.541, 44.1389, 2.16468, 0, 0, NULL),
(5301215, 2, -5151.13, 736.399, 46.1113, 2.66498, 0, 0, NULL),
(5301215, 3, -5155.08, 736.686, 46.0196, 3.56819, 0, 0, NULL),
(5301215, 4, -5160.24, 734.224, 45.959, 4.33788, 0, 0, NULL),
(5301215, 5, -5161.19, 731.089, 46.0857, 5.32199, 0, 0, NULL),
(5301215, 6, -5157.77, 724.971, 45.4773, 5.01724, 0, 0, NULL),
(5301215, 7, -5155.89, 719.194, 44.0871, 4.88687, 0, 0, NULL),
(5301215, 8, -5154.6, 713.129, 43.2635, 4.72508, 0, 0, NULL),
(5301215, 9, -5156.23, 698.103, 42.3923, 4.93086, 0, 0, NULL),
(5301215, 10, -5153.76, 691.724, 42.091, 4.74393, 0, 0, NULL),
(5301215, 11, -5154.31, 686.026, 41.3585, 4.34416, 0, 0, NULL),
(5301215, 12, -5157.5, 678.576, 41.0877, 6.09089, 0, 0, NULL),
(5301215, 13, -5132.74, 678.279, 40.2995, 5.99113, 0, 0, NULL),
(5301215, 14, -5129.38, 681.363, 40.0231, 0.947599, 0, 0, NULL),
(5301215, 15, -5123.65, 690.203, 39.0936, 1.57592, 0, 0, NULL),
(5301215, 16, -5125.15, 692.283, 39.5493, 3.39883, 0, 0, NULL),
(5301215, 17, -5129.57, 693.284, 40.5014, 2.66213, 0, 0, NULL),
(5301215, 18, -5134.71, 703.928, 41.8478, 1.97135, 0, 0, NULL),

(5301216, 1, -5184.49, 619.616, 41.758, 6.10127, 0, 0, NULL),
(5301216, 2, -5171.27, 617.964, 37.9829, 0.352156, 0, 0, NULL),
(5301216, 3, -5160.24, 623.06, 36.628, 0.442477, 0, 0, NULL),
(5301216, 4, -5149.16, 630.465, 36.1156, 0.795906, 0, 0, NULL),
(5301216, 5, -5142.94, 638.438, 36.3234, 1.13363, 0, 0, NULL),
(5301216, 6, -5140.06, 648.983, 36.8795, 1.58523, 0, 0, NULL),
(5301216, 7, -5140.98, 661.596, 38.8392, 2.60232, 0, 0, NULL),
(5301216, 8, -5152.96, 671.36, 41.2096, 3.59585, 0, 0, NULL),
(5301216, 9, -5158.74, 669.576, 40.7404, 4.65613, 0, 0, NULL),
(5301216, 10, -5158.69, 657.247, 38.5142, 4.31433, 0, 0, NULL),
(5301216, 11, -5163.21, 649.39, 37.2432, 4.01903, 0, 0, NULL),
(5301216, 12, -5170.05, 643.641, 38.1235, 3.56664, 0, 0, NULL),
(5301216, 13, -5186.76, 636.857, 41.7227, 3.44026, 0, 0, NULL),
(5301216, 14, -5199.22, 633.676, 44.6131, 3.15595, 0, 0, NULL),
(5301216, 15, -5211.18, 634.503, 46.3591, 3.035, 0, 0, NULL),
(5301216, 16, -5221.19, 635.082, 48.383, 3.82039, 0, 0, NULL),
(5301216, 17, -5227.45, 628.726, 48.5577, 5.6912, 0, 0, NULL),
(5301216, 18, -5223, 625.187, 48.1883, 5.85433, 0, 0, NULL),
(5301216, 19, -5216.42, 622.666, 47.4948, 6.23483, 0, 0, NULL),
(5301216, 20, -5206.99, 621.026, 46.1051, 6.16597, 0, 0, NULL);

DELETE FROM `creature_linking` WHERE `master_guid` IN (140755,140756,5301215,5301216);
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES
(5301217, 5301215, 656),
(5301218, 5301216, 656);

DELETE FROM `creature_addon` WHERE `guid` IN (91752,91795);
INSERT INTO `creature_addon` (`guid`, `b2_0_sheath`, `b2_1_flags`) VALUES
(91795, 1, 16);

DELETE FROM `game_event_creature` WHERE `guid` IN (91752,91795,89424,91750,91751);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(91795, 1),
(89424, 2),
(91750, 2),
(91751, 2),
(91752, 2);

DELETE FROM `pool_template` WHERE `entry` = 1700; -- classic-db
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1700, 1, 'Abominable Greench (13602)');
DELETE FROM `pool_creature_template` WHERE `pool_entry` = 1700;
INSERT INTO `pool_creature_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (13602, 1700, 0, 'Abominable Greench (13602)');

UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 180 WHERE `guid` = 80927 AND `id` = 1949; -- Align with classic-db

UPDATE `creature_template_addon` SET `b2_1_flags` = 16, `emote` = 233 WHERE `entry` = 7804; -- Add missing Emote for Trenton Lighthammer (Might be Script)
DELETE FROM `creature_addon` WHERE `guid` = 23268; -- Trenton Lighthammer

UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5) WHERE `entry` = 5916; -- Sentinel Amarassan (Stealth Aura modifies it)
UPDATE `creature_template` SET `SpeedWalk` = (1.94444 / 2.5) WHERE `entry` = 10405; -- Plague Ghoul

