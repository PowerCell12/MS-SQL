create table Passports(
 	PassportID int Identity(101,1) primary key,
 	PassportNumber varchar(10) not null
);

create table Persons(
 	PersonID int Identity(1,1) primary key,
  	FirstName nvarchar(30) not null,
  	Salary decimal(8,2) not null,
  	PassportID int foreign key references Passports(PassportID) unique not null
);


INSERT INTO Passports(passportnumber)
 VALUES
  	('N34FG21B'),
  	('K65LO4R7'),
  	('ZE657QP2');
  
insert into Persons
VALUES
  ('Roberto', 43300.00, 102),
  ('Tom', 56100.00, 103),
  ('Yana', 60200.00, 101);
    
    
    
    
    
    
    
    
    
