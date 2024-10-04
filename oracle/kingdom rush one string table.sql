CREATE TABLE enemy (
    enemy_id                RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    enemy                   VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_enemy UNIQUE ( enemy ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_enemy BEFORE
    UPDATE ON enemy
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE hero (
    hero_id                 RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    hero                    VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_hero UNIQUE ( hero ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_hero BEFORE
    UPDATE ON hero
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE level_in_kingdom_rush (
    level_in_kingdom_rush_id RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    level_in_kingdom_rush    VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_level_in_kingdom_rush UNIQUE ( level_in_kingdom_rush ),

    -- Additional columns for note and dates
    note                     VARCHAR2(4000),  -- General-purpose note field
    date_created             TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated             TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated  TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_level_in_kingdom_rush BEFORE
    UPDATE ON level_in_kingdom_rush
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE difficulty (
    difficulty_id           RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    difficulty              VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_difficulty UNIQUE ( difficulty ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_difficulty BEFORE
    UPDATE ON difficulty
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE game (
    game_id                 RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    game                    VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_game UNIQUE ( game ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_game BEFORE
    UPDATE ON game
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE person (
    person_id               RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    person                  VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_person UNIQUE ( person ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_person BEFORE
    UPDATE ON person
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE play_mode (
    play_mode_id            RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    play_mode               VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_play_mode UNIQUE ( play_mode ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_play_mode BEFORE
    UPDATE ON play_mode
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE tower (
    tower_id                RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    tower                   VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_tower UNIQUE ( tower ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_tower BEFORE
    UPDATE ON tower
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE scenery (
    scenery_id              RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    scenery                 VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_scenery UNIQUE ( scenery ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_scenery BEFORE
    UPDATE ON scenery
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE special_tower (
    special_tower_id        RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    special_tower           VARCHAR2(1000) NOT NULL,
    CONSTRAINT unique_special_tower UNIQUE ( special_tower ),

    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_special_tower BEFORE
    UPDATE ON special_tower
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE game_setup (
    game_setup_id            RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    game_setup               VARCHAR2(1000) NOT NULL,
    UNIQUE ( game_setup ),
    level_in_kingdom_rush_id RAW(16)
        REFERENCES level_in_kingdom_rush ( level_in_kingdom_rush_id ),
    play_mode_id             RAW(16)
        REFERENCES play_mode ( play_mode_id ),
    difficulty_id            RAW(16)
        REFERENCES difficulty ( difficulty_id ),
    -- Additional columns for note and dates
    note                     VARCHAR2(4000),  -- General-purpose note field
    date_created             TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated             TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated  TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_game_setup BEFORE
    UPDATE ON game_setup
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/

CREATE TABLE game_engagement (
    game_engagement_id        RAW(16) DEFAULT sys_guid() PRIMARY KEY,
    game_engagement           VARCHAR2(1000) NOT NULL,
    UNIQUE ( game_engagement ),
person_id raw(16) references person(person_id),
    -- Additional columns for note and dates
    note                    VARCHAR2(4000),  -- General-purpose note field
    date_created            TIMESTAMP(9) WITH TIME ZONE DEFAULT systimestamp(9) NOT NULL,
    date_updated            TIMESTAMP(9) WITH TIME ZONE,
        date_created_or_updated TIMESTAMP(9) WITH TIME ZONE GENERATED ALWAYS AS ( coalesce(date_updated, date_created) ) VIRTUAL
);

CREATE OR REPLACE TRIGGER trigger_set_date_updated_game_engagement BEFORE
    UPDATE ON game_engagement
    FOR EACH ROW
BEGIN
    :new.date_updated := systimestamp;
END;
/