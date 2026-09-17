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
