create table Students(
 	
  	StudentID int Identity(1,1) Primary key,
  	Name nvarchar(30) not null
);

create table Exams(
  	ExamID int IDENTITY(101,1) primary key,
  	Name nvarchar(30) not null
 );
 
 
create table StudentsExams(
  	StudentID int,
  	ExamID int,
  	constraint PK_StudentsExams PRIMARY KEY(StudentID, ExamID),
  	CONSTRAINT FK_Students_StudentsExams
  	foreign key (StudentID)
  	REFERENCES Students(StudentID),
  	CONSTRAINT FK_Exams_StudentsExams
  	foreign key (ExamID)
  	REFERENCES Exams(ExamID),
)
