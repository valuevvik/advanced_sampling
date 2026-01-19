CREATE TABLE Artists (
    artistID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Genres (
    genreID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ArtistGenre (
    artistID INT NOT NULL,
    genreID INT NOT NULL,
    PRIMARY KEY (artistID, genreID),
    FOREIGN KEY (artistID) REFERENCES Artists(artistID)
        ON DELETE CASCADE,
    FOREIGN KEY (genreID) REFERENCES Genres(genreID)
        ON DELETE CASCADE
);

CREATE TABLE Albums (
    albumID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    year INT
);

CREATE TABLE ArtistAlbum (
    artistID INT NOT NULL,
    albumID INT NOT NULL,
    PRIMARY KEY (artistID, albumID),
    FOREIGN KEY (artistID) REFERENCES Artists(artistID)
        ON DELETE CASCADE,
    FOREIGN KEY (albumID) REFERENCES Albums(albumID)
        ON DELETE CASCADE
);

CREATE TABLE Tracks (
    trackID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    duration INT NOT NULL,          -- длительность в секундах
    albumID INT NOT NULL,
    FOREIGN KEY (albumID) REFERENCES Albums(albumID)
        ON DELETE CASCADE
);

CREATE TABLE Compilations (
    compilationID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    year INT
);

CREATE TABLE CompilationTrack (
    compilationID INT NOT NULL,
    trackID INT NOT NULL,
    PRIMARY KEY (compilationID, trackID),
    FOREIGN KEY (compilationID) REFERENCES Compilations(compilationID)
        ON DELETE CASCADE,
    FOREIGN KEY (trackID) REFERENCES Tracks(trackID)
        ON DELETE CASCADE
);
