-- Data Loading Inserts


-- =============================================================================
-- Person
-- =============================================================================
INSERT INTO Person VALUES (1, 'Denise', 'Marie', 'Holloway', 'Director and screenwriter known for intimate character studies.', DATE '1978-04-12');
INSERT INTO Person VALUES (2, 'Omar', NULL, 'Vasquez', 'Stage and screen actor specializing in ensemble casts.', DATE '1985-09-03');
INSERT INTO Person VALUES (3, 'Leila', NULL, 'Okonkwo', 'Award-nominated lead performer in drama and thriller projects.', DATE '1990-11-21');
INSERT INTO Person VALUES (4, 'Ethan', 'Paul', 'Brooks', 'Supporting actor with credits in film and streaming series.', DATE '1982-02-07');
INSERT INTO Person VALUES (5, 'Mira', NULL, 'Sen', 'Composer and occasional actor with classical training.', DATE '1994-06-18');
INSERT INTO Person VALUES (6, 'Theo', NULL, 'Nguyen', 'Screenwriter and showrunner focused on procedural dramas.', DATE '1980-01-29');
INSERT INTO Person VALUES (7, 'Rosa', 'Isabel', 'Fernandez', 'Cinematographer-turned-director for indie features.', DATE '1987-08-14');
INSERT INTO Person VALUES (8, 'Ian', NULL, 'Kerr', 'Character actor with recurring guest roles across drama series.', DATE '1975-12-01');


-- =============================================================================
-- Nationality
-- =============================================================================
INSERT INTO Nationality VALUES (1, 'American');
INSERT INTO Nationality VALUES (2, 'American');
INSERT INTO Nationality VALUES (3, 'British');
INSERT INTO Nationality VALUES (4, 'Canadian');
INSERT INTO Nationality VALUES (5, 'Indian');
INSERT INTO Nationality VALUES (6, 'American');
INSERT INTO Nationality VALUES (7, 'Mexican');
INSERT INTO Nationality VALUES (8, 'Canadian');


-- =============================================================================
-- Production_Company
-- =============================================================================
INSERT INTO Production_Company VALUES (1, 'Northline Pictures');
INSERT INTO Production_Company VALUES (2, 'Blue Harbor Entertainment');
INSERT INTO Production_Company VALUES (3, 'Helix Stream Studios');
INSERT INTO Production_Company VALUES (4, 'Copper Alley Originals');
INSERT INTO Production_Company VALUES (5, 'Amberlight Media Group');
INSERT INTO Production_Company VALUES (6, 'Skyline Atlantic Films');
INSERT INTO Production_Company VALUES (7, 'Ridgeway Collective');
INSERT INTO Production_Company VALUES (8, 'Quarter Moon Productions');


-- =============================================================================
-- Media
-- =============================================================================
INSERT INTO Media VALUES (1, 84, 'The Silent Harbor');
INSERT INTO Media VALUES (2, 91, 'Echoes of Orion');
INSERT INTO Media VALUES (3, 76, 'Paper Tigers');
INSERT INTO Media VALUES (4, 88, 'Winter Circuit');
INSERT INTO Media VALUES (5, 79, 'Atlas Rising');
INSERT INTO Media VALUES (6, 82, 'Coastal Unit');
INSERT INTO Media VALUES (7, 77, 'The Ledger');
INSERT INTO Media VALUES (8, 90, 'Ironwood Academy');
INSERT INTO Media VALUES (9, 85, 'Meridian Nights');
INSERT INTO Media VALUES (10, 81, 'Signal Three');


-- =============================================================================
-- Movies
-- =============================================================================
INSERT INTO Movies VALUES (1, 1, 118, DATE '2019-03-22');
INSERT INTO Movies VALUES (2, 2, 134, DATE '2021-11-05');
INSERT INTO Movies VALUES (3, 3, 102, DATE '2018-07-13');
INSERT INTO Movies VALUES (4, 4, 126, DATE '2020-01-17');
INSERT INTO Movies VALUES (5, 5, 141, DATE '2023-09-08');


-- =============================================================================
-- TV_Shows
-- =============================================================================
INSERT INTO TV_Shows VALUES (6, 6, DATE '2017-09-12', DATE '2020-05-20', 5200, 36);
INSERT INTO TV_Shows VALUES (7, 7, DATE '2019-02-01', DATE '2023-08-15', 6100, 48);
INSERT INTO TV_Shows VALUES (8, 8, DATE '2016-08-24', NULL, 7800, 72);
INSERT INTO TV_Shows VALUES (9, 9, DATE '2020-04-10', DATE '2022-11-02', 4400, 24);
INSERT INTO TV_Shows VALUES (10, 10, DATE '2022-01-05', NULL, 3900, 18);


-- =============================================================================
-- Genre
-- =============================================================================
INSERT INTO Genre VALUES (1, 'Drama');
INSERT INTO Genre VALUES (2, 'Science Fiction');
INSERT INTO Genre VALUES (3, 'Comedy');
INSERT INTO Genre VALUES (4, 'Thriller');
INSERT INTO Genre VALUES (5, 'Adventure');
INSERT INTO Genre VALUES (6, 'Crime');
INSERT INTO Genre VALUES (7, 'Mystery');
INSERT INTO Genre VALUES (8, 'Teen Drama');
INSERT INTO Genre VALUES (9, 'Noir');
INSERT INTO Genre VALUES (10, 'Action');
INSERT INTO Genre VALUES (1, 'Mystery');
INSERT INTO Genre VALUES (4, 'Drama');


-- =============================================================================
-- Roles
-- =============================================================================
INSERT INTO Roles VALUES (2, 1, 'Lead Actor');
INSERT INTO Roles VALUES (3, 1, 'Supporting Actor');
INSERT INTO Roles VALUES (3, 2, 'Lead Actor');
INSERT INTO Roles VALUES (4, 2, 'Supporting Actor');
INSERT INTO Roles VALUES (2, 3, 'Supporting Actor');
INSERT INTO Roles VALUES (3, 4, 'Lead Actor');
INSERT INTO Roles VALUES (4, 5, 'Supporting Actor');
INSERT INTO Roles VALUES (8, 6, 'Recurring Guest');
INSERT INTO Roles VALUES (2, 7, 'Lead Actor');
INSERT INTO Roles VALUES (3, 8, 'Lead Actor');
INSERT INTO Roles VALUES (4, 9, 'Supporting Actor');
INSERT INTO Roles VALUES (1, 10, 'Voice Cameo');


-- =============================================================================
-- Media_Directed
-- =============================================================================
INSERT INTO Media_Directed VALUES (1, 1);
INSERT INTO Media_Directed VALUES (7, 2);
INSERT INTO Media_Directed VALUES (1, 3);
INSERT INTO Media_Directed VALUES (7, 4);
INSERT INTO Media_Directed VALUES (1, 5);
INSERT INTO Media_Directed VALUES (6, 6);
INSERT INTO Media_Directed VALUES (6, 7);
INSERT INTO Media_Directed VALUES (7, 8);
INSERT INTO Media_Directed VALUES (6, 9);
INSERT INTO Media_Directed VALUES (6, 10);


-- =============================================================================
-- Produces
-- =============================================================================
INSERT INTO Produces VALUES (1, 1);
INSERT INTO Produces VALUES (2, 2);
INSERT INTO Produces VALUES (3, 3);
INSERT INTO Produces VALUES (4, 4);
INSERT INTO Produces VALUES (5, 5);
INSERT INTO Produces VALUES (2, 6);
INSERT INTO Produces VALUES (3, 7);
INSERT INTO Produces VALUES (4, 8);
INSERT INTO Produces VALUES (6, 9);
INSERT INTO Produces VALUES (7, 10);


-- =============================================================================
-- Episode
-- =============================================================================
INSERT INTO Episode VALUES (1001, 6, 'Pilot');
INSERT INTO Episode VALUES (1002, 6, 'Crossing Lines');
INSERT INTO Episode VALUES (1003, 7, 'Opening Books');
INSERT INTO Episode VALUES (1004, 7, 'Buried Entries');
INSERT INTO Episode VALUES (1005, 8, 'Welcome Week');
INSERT INTO Episode VALUES (1006, 8, 'Midterm Week');
INSERT INTO Episode VALUES (1007, 9, 'First Light');
INSERT INTO Episode VALUES (1008, 10, 'Cold Start');


-- =============================================================================
-- Creates
-- =============================================================================
INSERT INTO Creates VALUES (1, 1);
INSERT INTO Creates VALUES (6, 6);
INSERT INTO Creates VALUES (6, 7);
INSERT INTO Creates VALUES (1, 2);
INSERT INTO Creates VALUES (6, 8);
INSERT INTO Creates VALUES (1, 3);
INSERT INTO Creates VALUES (6, 9);
INSERT INTO Creates VALUES (6, 10);
INSERT INTO Creates VALUES (7, 4);
INSERT INTO Creates VALUES (5, 5);