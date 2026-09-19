-- D&D 2024 Ruleset
INSERT INTO Ruleset (name, description)
VALUES (
    'D&D 2024',
    'Dungeons & Dragons 2024 ruleset'
);


-- D&D 2024 Classes
INSERT INTO Classes
    (name, hitDiceDie, primaryAbility, armorTraining, description)
VALUES
(
    'Barbarian',
    'd12',
    'Strength',
    'Light and Medium armor and Shields',
    'A fierce warrior who draws on primal power and rage to fight.'
),
(
    'Bard',
    'd8',
    'Charisma',
    'Light armor and Shields',
    'A versatile spellcaster who uses music, magic, and inspiration.'
),
(
    'Cleric',
    'd8',
    'Wisdom',
    'Light and Medium armor and Shields',
    'A spellcaster who draws on divine power to support allies and battle foes.'
),
(
    'Druid',
    'd8',
    'Wisdom',
    'Light armor and Shields',
    'A nature-focused spellcaster with the ability to harness natural magic.'
),
(
    'Fighter',
    'd10',
    'Strength or Dexterity',
    'Light, Medium, and Heavy armor and Shields',
    'A skilled martial combatant trained to use a wide variety of weapons and armor.'
),
(
    'Monk',
    'd8',
    'Dexterity and Wisdom',
    'None',
    'A martial artist who uses disciplined training and supernatural abilities in combat.'
),
(
    'Paladin',
    'd10',
    'Strength and Charisma',
    'Light, Medium, and Heavy armor and Shields',
    'A holy warrior who combines martial skill with divine magic.'
),
(
    'Ranger',
    'd10',
    'Dexterity and Wisdom',
    'Light and Medium armor and Shields',
    'A martial adventurer skilled at surviving in the wilderness and fighting chosen foes.'
),
(
    'Rogue',
    'd8',
    'Dexterity',
    'Light armor',
    'A skilled adventurer who relies on stealth, precision, and cunning.'
),
(
    'Sorcerer',
    'd6',
    'Charisma',
    'None',
    'A spellcaster whose magic comes from an innate or supernatural source.'
),
(
    'Warlock',
    'd8',
    'Charisma',
    'Light armor',
    'A spellcaster who gains magical power through a pact with a powerful being.'
),
(
    'Wizard',
    'd6',
    'Intelligence',
    'None',
    'A scholarly spellcaster who learns and prepares spells through study and arcane knowledge.'
);

-- Accounts
INSERT INTO Account (username, email, password, dateCreated)
VALUES
    ('testuser1', 'testuser1@example.com', 'testpassword1', '2026-09-19 10:14:32'),
    ('testuser2', 'testuser2@example.com', 'testpassword2', '2026-09-19 10:14:32'),
    ('testuser3', 'testuser3@example.com', 'testpassword3', '2026-09-19 10:14:32');

-- Characters
INSERT INTO Characters
    (accountID, rulesetID, classID, name, race, level)
VALUES
    (1, 1, 1, 'Thorin', 'Dwarf', 1),
    (2, 1, 3, 'Elara', 'Elf', 3),
    (3, 1, 4, 'Marcus', 'Human', 5);

-- Stats
INSERT INTO Stats
    (characterID, strength, dexterity, constitution, intelligence, wisdom, charisma)
VALUES
    (1, 16, 12, 15, 8, 10, 13),
    (2, 10, 16, 12, 14, 13, 15),
    (3, 12, 10, 14, 10, 16, 12);

-- Dice
INSERT INTO Dice
    (characterID, diceType, result, karmicMod, rollDate)
VALUES
    (1, 'd20', 15, 0, '2026-09-19 10:30:00'),
    (1, 'd6', 4, 0, '2026-09-19 10:31:00'),
    (2, 'd20', 8, 1, '2026-09-19 10:35:00'),
    (3, 'd20', 19, 0, '2026-09-19 10:40:00'),
    (3, 'd8', 6, 0, '2026-09-19 10:41:00');

-- Tab
INSERT INTO Tab
    (rulesetID, parentTabID, title, content)
VALUES
    (1, NULL, 'Classes', 'Overview of all playable classes.'),
    (1, NULL, 'Races', 'Overview of all playable races.'),
    (1, NULL, 'Spells', 'Overview of the spell system.');
