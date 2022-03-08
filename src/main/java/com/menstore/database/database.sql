
DROP TABLE OrderDetail
DROP TABLE Orders
DROP TABLE Voucher
DROP TABLE Users
DROP TABLE Product
DROP TABLE Category
Go

CREATE TABLE Product (
    ProductID varchar(10) NOT NULL,
    ProductName varchar(255) NOT NULL,
    Status varchar(255),
    Discount float,
	Price int,
	Quantity int,
	Size varchar(5),
	CategoryID varchar(10),
	Link_image varchar(255),
    PRIMARY KEY (ProductID),
)
go

CREATE TABLE Category (
	CategoryID varchar(10),
	CategoryName varchar(255),
    PRIMARY KEY (CategoryID)
)
go

CREATE TABLE Users (
	UserID varchar(10),
	NameOfUser varchar(255),
	UserName varchar(50),
	Password varchar(50),
	Role varchar(10),
	Point int,
	Address varchar(255),
	PhoneNumber varchar(15),
    PRIMARY KEY (UserID)
)
go

CREATE TABLE Voucher (
	VoucherID varchar(10),
	Discount float,
	DueDate Date,
	Maximum_discount int,
	Required int,
	Description varchar(255),
    PRIMARY KEY (VoucherID)
)
Go

CREATE TABLE Orders (
	InvoiceID varchar(10),
	DiscountedPrice int,
	OrderDate Date,
	Total int,
	Note varchar(255),
	Status varchar(255),
	UserID varchar(10),
	VoucherID varchar(10),
    PRIMARY KEY (InvoiceID)
)
Go

CREATE TABLE OrderDetail (
	InvoiceID varchar(10),
	ProductID varchar(10),
	SoldPrice int,
	Quantity int,
    PRIMARY KEY (InvoiceID,ProductID)
)
go

ALTER TABLE OrderDetail
ADD FOREIGN KEY (InvoiceID) REFERENCES Orders(InvoiceID)
go
ALTER TABLE OrderDetail
ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
go
ALTER TABLE Product
ADD FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
go
ALTER TABLE Orders
ADD FOREIGN KEY (UserID) REFERENCES Users(UserID)
go
ALTER TABLE Orders
ADD FOREIGN KEY (VoucherID) REFERENCES Voucher(VoucherID)
go
