create table Cities(
 	CityID int IDENTITY(1,1) primary key,
  	Name varchar(50) not null
);


create table Customers(
 	CustomerID int IDENTITY(1,1) primary key,
  	Name varchar(50) not null,
  	Birthday date not null,
  	CityID int foreign key references Cities(CityID)
);


create table Orders(
 	OrderID int IDENTITY(1,1) primary key,
  	CustomerID int FOREIGN key references Customers(CustomerID)
);


create table ItemTypes(
 	ItemTypeID int IDENTITY(1,1) primary key,
  	Name varchar(50) not null
);


create table Items(
 	ItemID int IDENTITY(1,1) primary key,
  	Name varchar(50) not null,
  	ItemTypeID int FOREIGN key references ItemTypes(ItemTypeID)
);


CREATE TABLE OrderItems(
    OrderID INT,
    ItemID INT,
    CONSTRAINT PK_OrderItems PRIMARY KEY(OrderID, ItemID),
    CONSTRAINT FK_Orders_OrderItems FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT FK_Items_OrderItems FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);



