create table Manufacturers(
  	ManufacturerID int IDENTITY(1,1) primary key,
  	Name varchar(30) not null,
  	EstablishedOn date not null
);

create table Models(
 	ModelID int Identity(101,1) primary key,
  	Name varchar(35) not null,	
  	ManufacturerID int foreign key references Manufacturers(ManufacturerID) not null 
);



    
insert into Manufacturers
values
	('BMW', '07/03/1916'),
    ('Tesla', '01/01/2003'),
    ('Lada', '01/05/1966');
    

insert into Models
VALUES
	('X1', 1),
   	('i6', 1),
    ('Model S', 2),
    ('Model X', 2),
    ('Model 3', 2),
    ('Nova', 3);
    
 
    
    
    
    
    
    
    
    
