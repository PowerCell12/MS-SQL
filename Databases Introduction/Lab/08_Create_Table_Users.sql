create table Users(
  	id int Identity(1,1) primary key,
  	username varchar(30),
  	password varchar(26),
  	ProfilePicture varbinary(MAX),
  	LastLoginTime DATETIME,
  	IsDeleted BIT
  );
  
  
  INSERT INTO Users (username, password, ProfilePicture, LastLoginTime, IsDeleted) 
VALUES 
('user1', 'password1', 0x, '2023-01-01 08:00:00', 0),
('user2', 'password2', 0x, '2023-01-02 12:00:00', 1),
('user3', 'password3', 0x, '2023-01-03 16:00:00', 0),
('user4', 'password4', 0x, '2023-01-04 20:00:00', 0),
('user5', 'password5', 0x, '2023-01-05 10:00:00', 1);
