INSERT INTO Artists (name) VALUES
('The Beatles'),
('Pink Floyd'),
('Queen'),
('David Bowie'),
('Radiohead');

INSERT INTO Genres (name) VALUES
('Rock'),
('Pop'),
('Progressive Rock'),
('Art Rock'),
('Alternative Rock');

INSERT INTO Albums (name, year) VALUES
('The Dark Side of the Moon', 1973),
('A Night at the Opera', 1975),
('Abbey Road', 1969),
('The Rise and Fall of Ziggy Stardust', 1972),
('OK Computer', 1997);

INSERT INTO ArtistGenre (artistID, genreID) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(4, 1),
(4, 4),
(5, 1),
(5, 5);

INSERT INTO ArtistAlbum (artistID, albumID) VALUES
(2, 1),
(3, 2),
(1, 3),
(4, 4),
(5, 5);

INSERT INTO Tracks (name, duration, albumID) VALUES
('Speak to Me', 90, 1),
('Breathe', 163, 1),
('On the Run', 216, 1),
('Time', 413, 1),
('The Great Gig in the Sky', 276, 1),
('Death on Two Legs', 223, 2),
('Lazing on a Sunday Afternoon', 69, 2),
('I\'m in Love with My Car', 187, 2),
('You\'re My Best Friend', 172, 2),
('Bohemian Rhapsody', 354, 2),
('Come Together', 259, 3),
('Something', 182, 3),
('Maxwell\'s Silver Hammer', 207, 3),
('Oh! Darling', 207, 3),
('Octopus\'s Garden', 170, 3),
('Five Years', 293, 4),
('Soul Love', 216, 4),
('Moonage Daydream', 277, 4),
('Airbag', 284, 5),
('Paranoid Android', 387, 5),
('Subterranean Homesick Alien', 267, 5);

INSERT INTO Compilations (name, year) VALUES
('Best of Classic Rock', 2000),
('Progressive Rock Masters', 2005),
('British Invasion', 2010),
('Rock Ballads Collection', 2015),
('Millennium Rock Hits', 2020);

INSERT INTO CompilationTrack (compilationID, trackID) VALUES
(1, 6),
(1, 10),
(1, 11),
(1, 17),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 11),
(3, 12),
(3, 17),
(3, 18),
(3, 21),
(4, 12),
(4, 10),
(4, 19),
(5, 21),
(5, 22),
(5, 10),
(5, 4);
