create table Directors(
  	
  	id int Identity(1,1) primary key,
  	DirectorName nvarchar(30) not null,
  	Notes TEXT
 );
 
 
 create table Genres(
  	id int Identity(1,1) primary key,
   	GenreName nvarchar(30) not null,
   	Notes TEXT
 );
 
 create table Categories(
  	id int Identity(1,1) primary key,
   	CategoryName nvarchar(30) not null,
   	Notes TEXT   
 );
 
 create table Movies(
  	id int Identity(1,1) primary key,
   	Title nvarchar(100),
   	DirectorId int FOREIGN key references Directors(id),
   	CopyrightYear Text,
   	Length int,
   	GenreId int FOREIGN key references Genres(id),
   	CategoryId int FOREIGN key references Categories(id), 
   	Rating int,
   	Notes Text,
 );
 
 
INSERT INTO Directors (DirectorName, Notes)
VALUES 
	('Some name', 'Note1'),
	('Some name2', 'Note2'),
	('Some name3', 'Note3'),
	('Some name4', 'Note4'),
	('Some name5', 'Note5');

INSERT INTO Genres (GenreName, Notes)
VALUES 
	('Horror', 'Note1'),
	('Drama', 'Note2'),
	('Fantasy', 'Not3'),
	('Action', 'Note4'),
	('Adventure', 'Note5');

INSERT INTO Categories (CategoryName, Notes)
VALUES 
	('Cat1', 'Note1'),
	('Cat2', 'Note2'),
	('Cat3', 'Note3'),
	('Cat4', 'Note4'),
	('Cat5', 'Note5');

INSERT INTO Movies (Title, DirectorId, copyrightyear, [Length], GenreId, CategoryId, Rating, Notes) 
VALUES
	('First', 1, 'Text1', 1, 1, 1, 5, 'SomeNote'),
	('Second', 2, 'Text2', 2, 2, 2, 5, 'SomeNote1'),
	('Third', 3, 'Text3',4,  3, 3, 5, 'SomeNote2'),
	('Fourth', 4, 'Text4', 6, 4, 4, 5, 'SomeNote3'),
	('Fifth', 5, 'Text5',2,  5, 5, 5, 'SomeNote4');
