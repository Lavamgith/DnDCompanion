CREATE TABLE Ruleset (
    rulesetID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    description VARCHAR(255),
    PRIMARY KEY (rulesetID)
);

CREATE TABLE Classes (
    classID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255),
    hitDiceDie VARCHAR(255),
    primaryAbility VARCHAR(255),
    armorTraining VARCHAR(255),
    description TEXT,
    PRIMARY KEY (classID)
);

CREATE TABLE Rules (
    tabID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    rulesetID INT UNSIGNED,
    parentTabID INT UNSIGNED,
    title VARCHAR(255),
    content TEXT,
    PRIMARY KEY (tabID),
    FOREIGN KEY (rulesetID) REFERENCES Ruleset(rulesetID),
    FOREIGN KEY (parentTabID) REFERENCES Tab(tabID),
    FULLTEXT (title, content)
);

CREATE TABLE Spell (
    spellID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    rulesetID INT UNSIGNED,
    name VARCHAR(255),
    level INT,
    school VARCHAR(50),
    castingTime VARCHAR(255),
    spellRange VARCHAR(100),
    components VARCHAR(255),
    duration VARCHAR(100),
    description TEXT,
    higherLevel TEXT,
    PRIMARY KEY (spellID),
    FOREIGN KEY (rulesetID) REFERENCES Ruleset(rulesetID),
    FULLTEXT (name, description)
);

CREATE TABLE SpellClass (
    spellID INT UNSIGNED,
    classID INT UNSIGNED,
    PRIMARY KEY (spellID, classID),
    FOREIGN KEY (spellID) REFERENCES Spell(spellID),
    FOREIGN KEY (classID) REFERENCES Classes(classID)
);

CREATE TABLE Dice (
    rollID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    diceType VARCHAR(255),
    result INT,
    karmicMod INT,
    rollDate DATETIME,
    PRIMARY KEY (rollID)
);
