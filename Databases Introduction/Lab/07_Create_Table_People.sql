CREATE TABLE People (
    Id INTEGER PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(200) NOT NULL,
    Picture VARBINARY(MAX),
    Height FLOAT(2),
    Weight FLOAT(2),
    Gender CHAR(1) NOT NULL,
    Birthdate DATE NOT NULL,
    Biography TEXT
);

INSERT INTO People (Name, Picture, Height, Weight, Gender, Birthdate, Biography)
VALUES ('John Doe', NULL, 1.75, 70.5, 'm', '1990-05-15', 'Some biography text.'),
       ('Jane Smith', NULL, 1.65, 55.2, 'f', '1985-11-20', 'Another biography text.'),
       ('Michael Johnson', NULL, 1.80, 80.0, 'm', '1982-08-10', NULL),
       ('Emily White', NULL, 1.60, 50.0, 'f', '1995-03-28', NULL),
       ('David Brown', NULL, 1.85, 90.5, 'm', '1978-12-05', 'Biography of David Brown.');
