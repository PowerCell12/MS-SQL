create table Majors(
 	MajorID int IDENTITY(1,1) primary key,
  	Name varchar(30) not null
);


create table Students(
 	StudentID int IDENTITY(1,1) primary key,
  	StudentNumber int not null,
  	StudentName varchar(30) not null,
  	MajorID int foreign key REFERENCES Majors(MajorID)
);



create table Payments(
 	PaymentID int IDENTITY(1,1) primary key,
  	PaymentDate date not null,
  	PaymentAmount decimal(10,2) not null,	
  	StudentID int foreign key REFERENCES Students(StudentID)
);


create table Subjects(
  	SubjectID int IDENTITY(1,1) primary key,
  	SubjectName varchar(30) not null
);


create table Agenda(
 	StudentID int,
  	SubjectID int,
  	CONSTRAINT PK_Agenda PRIMARY key(StudentID, SubjectID),
  	CONSTRAINT FK_Subjects_Agenda foreign key (SubjectID) REFERENCES Subjects(SubjectID),
  	CONSTRAINT FK_Students_Agenda foreign key (StudentID) REFERENCES Students(StudentID)
);
  
  
  
  

