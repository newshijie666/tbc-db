DELETE FROM spell_script_target WHERE entry IN(32228,37220,37337,37339,37345,37348,37476,37413,37454,37502,37461,37471,37428);
DELETE FROM spell_script_target WHERE entry IN(32227,37142,37143,37147,37149,37150,37474,37406,37453,37498,37459,37472,37427);
DELETE FROM spell_script_target WHERE entry IN(37142,37143,37147,37149,37150,32227,32228,37220,37337,37339,37345,37348);
DELETE FROM spell_script_target WHERE entry IN(37469,37775);
DELETE FROM spell_script_target WHERE entry IN(37465);

-- spells that should hit alliance pieces
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES 
(32228, 1, 17211, 0),
(32228, 1, 21160, 0),
(32228, 1, 21664, 0),
(32228, 1, 21682, 0),
(32228, 1, 21683, 0),
(32228, 1, 21684, 0),
(37220, 1, 17211, 0),
(37220, 1, 21160, 0),
(37220, 1, 21664, 0),
(37220, 1, 21682, 0),
(37220, 1, 21683, 0),
(37220, 1, 21684, 0),
(37337, 1, 17211, 0),
(37337, 1, 21160, 0),
(37337, 1, 21664, 0),
(37337, 1, 21682, 0),
(37337, 1, 21683, 0),
(37337, 1, 21684, 0),
(37339, 1, 17211, 0),
(37339, 1, 21160, 0),
(37339, 1, 21664, 0),
(37339, 1, 21682, 0),
(37339, 1, 21683, 0),
(37339, 1, 21684, 0),
(37345, 1, 17211, 0),
(37345, 1, 21160, 0),
(37345, 1, 21664, 0),
(37345, 1, 21682, 0),
(37345, 1, 21683, 0),
(37345, 1, 21684, 0),
(37348, 1, 17211, 0),
(37348, 1, 21160, 0),
(37348, 1, 21664, 0),
(37348, 1, 21682, 0),
(37348, 1, 21683, 0),
(37348, 1, 21684, 0),
(37413, 1, 17211, 0),
(37413, 1, 21160, 0),
(37413, 1, 21664, 0),
(37413, 1, 21682, 0),
(37413, 1, 21683, 0),
(37413, 1, 21684, 0),
(37428, 1, 17211, 0),
(37428, 1, 21160, 0),
(37428, 1, 21664, 0),
(37428, 1, 21682, 0),
(37428, 1, 21683, 0),
(37428, 1, 21684, 0),
(37454, 1, 17211, 0),
(37454, 1, 21160, 0),
(37454, 1, 21664, 0),
(37454, 1, 21682, 0),
(37454, 1, 21683, 0),
(37454, 1, 21684, 0),
(37461, 1, 17211, 0),
(37461, 1, 21160, 0),
(37461, 1, 21664, 0),
(37461, 1, 21682, 0),
(37461, 1, 21683, 0),
(37461, 1, 21684, 0),
(37471, 1, 17211, 0),
(37471, 1, 21160, 0),
(37471, 1, 21664, 0),
(37471, 1, 21682, 0),
(37471, 1, 21683, 0),
(37471, 1, 21684, 0),
(37476, 1, 17211, 0),
(37476, 1, 21160, 0),
(37476, 1, 21664, 0),
(37476, 1, 21682, 0),
(37476, 1, 21683, 0),
(37476, 1, 21684, 0),
(37502, 1, 17211, 0),
(37502, 1, 21160, 0),
(37502, 1, 21664, 0),
(37502, 1, 21682, 0),
(37502, 1, 21683, 0),
(37502, 1, 21684, 0);

-- spells that should hit horde pieces
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES 
(32227, 1, 17469, 0),
(32227, 1, 21726, 0),
(32227, 1, 21747, 0),
(32227, 1, 21748, 0),
(32227, 1, 21750, 0),
(32227, 1, 21752, 0),
(37142, 1, 17469, 0),
(37142, 1, 21726, 0),
(37142, 1, 21747, 0),
(37142, 1, 21748, 0),
(37142, 1, 21750, 0),
(37142, 1, 21752, 0),
(37143, 1, 17469, 0),
(37143, 1, 21726, 0),
(37143, 1, 21747, 0),
(37143, 1, 21748, 0),
(37143, 1, 21750, 0),
(37143, 1, 21752, 0),
(37147, 1, 17469, 0),
(37147, 1, 21726, 0),
(37147, 1, 21747, 0),
(37147, 1, 21748, 0),
(37147, 1, 21750, 0),
(37147, 1, 21752, 0),
(37149, 1, 17469, 0),
(37149, 1, 21726, 0),
(37149, 1, 21747, 0),
(37149, 1, 21748, 0),
(37149, 1, 21750, 0),
(37149, 1, 21752, 0),
(37150, 1, 17469, 0),
(37150, 1, 21726, 0),
(37150, 1, 21747, 0),
(37150, 1, 21748, 0),
(37150, 1, 21750, 0),
(37150, 1, 21752, 0),
(37406, 1, 17469, 0),
(37406, 1, 21726, 0),
(37406, 1, 21747, 0),
(37406, 1, 21748, 0),
(37406, 1, 21750, 0),
(37406, 1, 21752, 0),
(37427, 1, 17469, 0),
(37427, 1, 21726, 0),
(37427, 1, 21747, 0),
(37427, 1, 21748, 0),
(37427, 1, 21750, 0),
(37427, 1, 21752, 0),
(37453, 1, 17469, 0),
(37453, 1, 21726, 0),
(37453, 1, 21747, 0),
(37453, 1, 21748, 0),
(37453, 1, 21750, 0),
(37453, 1, 21752, 0),
(37459, 1, 17469, 0),
(37459, 1, 21726, 0),
(37459, 1, 21747, 0),
(37459, 1, 21748, 0),
(37459, 1, 21750, 0),
(37459, 1, 21752, 0),
(37472, 1, 17469, 0),
(37472, 1, 21726, 0),
(37472, 1, 21747, 0),
(37472, 1, 21748, 0),
(37472, 1, 21750, 0),
(37472, 1, 21752, 0),
(37474, 1, 17469, 0),
(37474, 1, 21726, 0),
(37474, 1, 21747, 0),
(37474, 1, 21748, 0),
(37474, 1, 21750, 0),
(37474, 1, 21752, 0),
(37498, 1, 17469, 0),
(37498, 1, 21726, 0),
(37498, 1, 21747, 0),
(37498, 1, 21748, 0),
(37498, 1, 21750, 0),
(37498, 1, 21752, 0);

-- spells that should hit alliance pieces AA
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES 
(37469, 1, 17469, 0),
(37469, 1, 21726, 0),
(37469, 1, 21747, 0),
(37469, 1, 21748, 0),
(37469, 1, 21750, 0),
(37469, 1, 21752, 0),
(37775, 1, 17469, 0),
(37775, 1, 21726, 0),
(37775, 1, 21747, 0),
(37775, 1, 21748, 0),
(37775, 1, 21750, 0),
(37775, 1, 21752, 0);

-- spells that should hit horde pieces AA
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES 
(37465, 1, 17469, 0),
(37465, 1, 21726, 0),
(37465, 1, 21747, 0),
(37465, 1, 21748, 0),
(37465, 1, 21750, 0),
(37465, 1, 21752, 0);


UPDATE creature_template SET Name='Chess Square, OUTSIDE WHITE (DND)' WHERE entry=17317; -- typo in name

-- Correct level and health for Fury of Medivh Visual
UPDATE creature_template SET MinLevel=70,MaxLevel=70,MinLevelHealth=6986,MaxLevelHealth=6986 WHERE entry IN(22521);


