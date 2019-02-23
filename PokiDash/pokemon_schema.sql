CREATE DATABASE IF NOT EXISTS PokemonDB;

USE PokemonDB;

CREATE TABLE Pokemons (
    PokedexID INT NOT NULL,
    PokemonName VARCHAR(255),
    Type1 VARCHAR(20),
    Type2 VARCHAR(20),
    Hp INT,
    Atk INT,
    Def INT,
    SpAtk INT,
    SpDef INT,
    Speed INT,
    FrontSprite VARCHAR(255),
    PRIMARY KEY(PokedexID)
);

CREATE TABLE MoveList (
    MoveID INT NOT NULL,
    MoveName VARCHAR(255),
    Typing VARCHAR(255),
    Category VARCHAR(255),
    PRIMARY KEY(MoveID)
);

CREATE TABLE Players (
    PlayerID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    PRIMARY KEY(PlayerID)
);

CREATE TABLE Tournaments (
    TournamentID INT NOT NULL AUTO_INCREMENT,
    Region VARCHAR(255),
    Yr INT,
    PRIMARY KEY(TournamentID)
);

CREATE TABLE PlayerPokemons (
    PPID INT NOT NULL AUTO_INCREMENT,
    PlayerID INT,
    PokedexID INT,
    Item VARCHAR(255),
    Ability VARCHAR(255),
    PRIMARY KEY(PPID),
    FOREIGN KEY (PokedexID) REFERENCES Pokemons(PokedexID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

CREATE TABLE Teams (
    TeamID INT NOT NULL AUTO_INCREMENT,
    PlayerID INT,
    PRIMARY KEY(TeamID),
    FOREIGN KEY(PlayerID) REFERENCES Players(PlayerID)
);

CREATE TABLE TeamPokemons (
    TeamID INT,
    PPID INT,
    FOREIGN KEY(TeamID) REFERENCES Teams(TeamID),
    FOREIGN KEY(PPID) REFERENCES PlayerPokemons(PPID)
);

CREATE TABLE Registration (
    RegisterID INT NOT NULL AUTO_INCREMENT,
    PlayerID INT NOT NULL,
    TournamentID INT NOT NULL,
    TeamID INT NOT NULL,
    Division VARCHAR(255) NOT NULL,
    Result INT NOT NULL,
    PRIMARY KEY(RegisterID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (TournamentID) REFERENCES Tournaments(TournamentID),
    FOREIGN KEY (TeamID) REFERENCES Teams(TeamID)
);

CREATE TABLE Moveset (
    PPID INT NOT NULL,
    MoveID INT NOT NULL,
    FOREIGN KEY(PPID) REFERENCES PlayerPokemons(PPID),
    FOREIGN KEY(MoveID) REFERENCES MoveList(MoveID)
);

CREATE TABLE TypeEffectiveness (
    TypeID INT NOT NULL,
    AtkType VARCHAR(255),
    NorDef FLOAT,
    FirDef FLOAT,
    WatDef FLOAT,
    EleDef FLOAT,
    GraDef FLOAT,
    IceDef FLOAT,
    FigDef FLOAT,
    PoiDef FLOAT,
    GroDef FLOAT,
    FlyDef FLOAT,
    PsyDef FLOAT,
    BugDef FLOAT,
    RocDef FLOAT,
    GhoDef FLOAT,
    DraDef FLOAT,
    DarDef FLOAT,
    SteDef FLOAT,
    FaiDef FLOAT,
    PRIMARY KEY(TypeID)
);