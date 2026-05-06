/* Used to debug and ensure everything works
DROP TABLE Person CASCADE CONSTRAINTS;
DROP TABLE Roles CASCADE CONSTRAINTS;
DROP TABLE Nationality CASCADE CONSTRAINTS;
DROP TABLE Genre CASCADE CONSTRAINTS;
DROP TABLE Media_Directed CASCADE CONSTRAINTS;
DROP TABLE Production_Company CASCADE CONSTRAINTS;
DROP TABLE Media CASCADE CONSTRAINTS;
DROP TABLE Produces CASCADE CONSTRAINTS;
DROP TABLE Movies CASCADE CONSTRAINTS;
DROP TABLE TV_Shows CASCADE CONSTRAINTS;
DROP TABLE Episode CASCADE CONSTRAINTS;
DROP TABLE Creates CASCADE CONSTRAINTS;
*/

-- Person Table
CREATE TABLE Person (
    Person_ID INTEGER CONSTRAINT Person_ID_PK PRIMARY KEY NOT NULL,
    F_Name VARCHAR2(100) NOT NULL,
    M_Name VARCHAR2(100),
    L_Name VARCHAR2(100),
    Biography VARCHAR2(500),
    Birthdate DATE
);




-- Nationality Table (inherits from Person)
CREATE TABLE Nationality (
    Person_ID INTEGER NOT NULL,
    Nationality VARCHAR2(100) NOT NULL,
    CONSTRAINT FK_Nationality_Person FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    CONSTRAINT Nationality_PK PRIMARY KEY (Person_ID, Nationality)
);




-- Production Company
CREATE TABLE Production_Company (
    Company_ID INTEGER CONSTRAINT Production_Company_ID_PK PRIMARY KEY,
    company_name VARCHAR2(200) NOT NULL,
    CONSTRAINT Production_Company_Name_UK UNIQUE (company_name)
);




-- Media Table (Supertype for Movies and TV Shows)
CREATE TABLE Media (
    Media_ID INTEGER CONSTRAINT Media_ID_PK PRIMARY KEY NOT NULL,
    Rating INTEGER NOT NULL,
    Title VARCHAR2(200) NOT NULL,
    CONSTRAINT Media_Rating_Range CHECK (Rating IS NULL OR (Rating >= 0 AND Rating <= 100))
);


-- Actors Table (inherits from Person)


CREATE TABLE Roles (
    Person_ID INTEGER NOT NULL,
    Media_ID INTEGER NOT NULL,
    Roles_Name VARCHAR2(200) NOT NULL,
    CONSTRAINT FK_Roles_Person FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    CONSTRAINT FK_Roles_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Roles_PK PRIMARY KEY (Person_ID, Media_ID, Roles_Name)
);




CREATE TABLE Genre (
    Media_ID INTEGER NOT NULL,
    Genre_Name VARCHAR2(50) NOT NULL,
    CONSTRAINT FK_Genre_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Genre_PK PRIMARY KEY (Media_ID, Genre_Name)
);




-- Directors Table (inherits from Person)


CREATE TABLE Media_Directed (
    Person_ID INTEGER NOT NULL,
    Media_ID INTEGER NOT NULL,
    CONSTRAINT FK_Media_Directed_Person FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    CONSTRAINT FK_Media_Directed_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Media_Directed_PK PRIMARY KEY (Person_ID, Media_ID)
);




-- Relationship: Production Company Produces Media


CREATE TABLE Produces (
    Company_ID INTEGER NOT NULL,
    Media_ID INTEGER NOT NULL,
    CONSTRAINT FK_Produces_Company FOREIGN KEY (Company_ID) REFERENCES Production_Company(Company_ID),
    CONSTRAINT FK_Produces_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Produces_PK PRIMARY KEY (Company_ID, Media_ID)
    );




-- Movies Table (Subtype of Media)


CREATE TABLE Movies (
    Movie_ID INTEGER CONSTRAINT Movie_ID_PK PRIMARY KEY NOT NULL,
    Media_ID INTEGER NOT NULL,
    Runtime INTEGER,
    ReleaseDate DATE,
    CONSTRAINT FK_Movies_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Movies_Media_ID_UK UNIQUE (Media_ID),
    CONSTRAINT Movies_Runtime_Positive CHECK (Runtime IS NULL OR Runtime > 0)
);




-- TV Shows Table (Subtype of Media)


CREATE TABLE TV_Shows (
    Show_ID INTEGER CONSTRAINT Show_ID_PK PRIMARY KEY NOT NULL,
    Media_ID INTEGER NOT NULL,
    Release_Length_Start DATE,
    Release_Length_End DATE,
    Screentime INTEGER,
    Number_of_Episodes INTEGER,
    CONSTRAINT FK_TV_Shows_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT TV_Shows_Media_ID_UK UNIQUE (Media_ID),
    CONSTRAINT TV_Shows_Date_Order CHECK (
        Release_Length_End IS NULL
        OR Release_Length_Start IS NULL
        OR Release_Length_End >= Release_Length_Start
    ),
    CONSTRAINT TV_Shows_Screentime_Nonneg CHECK (Screentime IS NULL OR Screentime >= 0),
    CONSTRAINT TV_Shows_Episode_Count_Nonneg CHECK (Number_of_Episodes IS NULL OR Number_of_Episodes >= 0)
);




-- Episode Table


CREATE TABLE Episode (
    EP_ID INTEGER CONSTRAINT Episode_ID_PK PRIMARY KEY NOT NULL,
    Show_ID INTEGER NOT NULL,
    Episode_Name VARCHAR2(100) NOT NULL,
    CONSTRAINT FK_Episode_Show FOREIGN KEY (Show_ID) REFERENCES TV_Shows(Show_ID),
    CONSTRAINT Episode_Show_Name_UK UNIQUE (Show_ID, Episode_Name)
);




-- Relationship: Person Creates Media (Many-to-many)


CREATE TABLE Creates (
    Person_ID INTEGER NOT NULL,
    Media_ID INTEGER NOT NULL,
    CONSTRAINT FK_Creates_Person FOREIGN KEY (Person_ID) REFERENCES Person(Person_ID),
    CONSTRAINT FK_Creates_Media FOREIGN KEY (Media_ID) REFERENCES Media(Media_ID),
    CONSTRAINT Creates_PK PRIMARY KEY (Person_ID, Media_ID)
);