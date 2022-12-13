USE CINEMA;

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer (
	CustomerID		VARCHAR(9)	PRIMARY KEY,
	Username 		VARCHAR(50) NOT NULL	UNIQUE,
	Password 		VARCHAR(50) NOT NULL,
	Name 			VARCHAR(50) NOT NULL,
	Birthday 		DATE 		NOT NULL,
	Gender 			VARCHAR(50) NOT NULL,
	Address 		VARCHAR(50) NOT NULL,
	Phone 			VARCHAR(50) NOT NULL,
	Email 			VARCHAR(50) NOT NULL,
	Created_time 	DATETIME 	NOT NULL,
	Total_point		BIGINT 		DEFAULT(0) 
);

DROP TABLE IF EXISTS Admin;
CREATE TABLE Admin (
	AdminID 		VARCHAR(9)	PRIMARY KEY,
	Username 		VARCHAR(50)	NOT NULL	UNIQUE,
	Password 		VARCHAR(50) NOT NULL,
	Name 			VARCHAR(50) NOT NULL,
	Birthday 		DATE 		NOT NULL,
	Gender 			VARCHAR(50) NOT NULL,
	Address 		VARCHAR(50) NOT NULL,
	Phone 			VARCHAR(50) NOT NULL,
	Email 			VARCHAR(50) NOT NULL,
	Created_time	DATETIME 	NOT NULL,
	Certificate 	VARCHAR(10) NOT NULL
);

DROP TABLE IF EXISTS Theatre;
CREATE TABLE Theatre (
	Branch_code		VARCHAR(2) 	PRIMARY KEY,
	Name 			VARCHAR(50) NOT NULL UNIQUE,
	Address 		VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Room;
CREATE TABLE Room (
	Branch_code 	VARCHAR(2) 	REFERENCES Theatre(Branch_code)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	Number			INT 		NOT NULL,
	State 			VARCHAR(11) NOT NULL,
	CHECK (State = 'Available' OR State = 'Unavailable'),
	PRIMARY KEY (Branch_code, Number)
);

DROP TABLE IF EXISTS Seat;
CREATE TABLE Seat (
	Branch_code		VARCHAR(2)	NOT NULL	REFERENCES Room(Branch_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Number 			INT 		NOT NULL	REFERENCES Room(Number)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Row_index 		VARCHAR(1) 	NOT NULL,
	Col_index		INT 		NOT NULL,
	Type 			VARCHAR(6) 	NOT NULL,
    CHECK (Type = 'Normal' OR Type = 'VIP'),
	State 			VARCHAR(11)	NOT NULL, 
    CHECK (State = 'Available' OR State = 'Unavailable'), 
    PRIMARY KEY(Branch_code, Number, Row_index, Col_index)
);

DROP TABLE IF EXISTS Movie;
CREATE TABLE Movie (
	Movie_code 		VARCHAR(9) 		PRIMARY KEY,
	Director 		VARCHAR(50),
	Release_date	DATE 			NOT NULL,
	Age_limit		VARCHAR(3)		CHECK (Age_limit > 0),
	Rating 			DECIMAL(2,1)	CHECK (Rating > 0),
	Time_limit 		DECIMAL(2,1)	CHECK (Time_limit > 0),
	Name 			VARCHAR(100)	NOT NULL
);

DROP TABLE IF EXISTS Movie_cast;
CREATE TABLE Movie_cast (
	Movie_code		VARCHAR(50)	NOT NULL	REFERENCES MOVIE(Movie_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Cast 			VARCHAR(50)	NOT NULL,
	PRIMARY KEY (Movie_code, Cast)
);

DROP TABLE IF EXISTS Movie_format;
CREATE TABLE Movie_format (
	Movie_code		VARCHAR(9)	NOT NULL	REFERENCES MOVIE(Movie_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Format 			VARCHAR(4)	NOT NULL,
    PRIMARY KEY (Movie_code, Format)
);

DROP TABLE IF EXISTS Movie_genres;
CREATE TABLE Movie_genres (
	Movie_code 		VARCHAR(9)	NOT NULL	REFERENCES Movie(Movie_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Genres 			VARCHAR(50)	NOT NULL,
    PRIMARY KEY (Movie_code, Genres)
);

DROP TABLE IF EXISTS Movie_language;
CREATE TABLE Movie_language (
	Movie_code		CHAR(9)			NOT NULL	REFERENCES Movie(Movie_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
    Language		VARCHAR(50)		NOT NULL,
    PRIMARY KEY (Movie_code, Language)
);

DROP TABLE IF EXISTS Movie_show;
CREATE TABLE Movie_show (
	ShowID 		VARCHAR(9)	PRIMARY KEY,
	Date 		DATE ,
	Time 		FLOAT ,
	AdminID 	CHAR(9)		NOT NULL	
    REFERENCES Admin(AminID) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Scheduled;
CREATE TABLE Scheduled(
  	ShowID 			VARCHAR(9)	NOT NULL	REFERENCES Movie_show(ShowID)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Branch_code 	VARCHAR(2) 	NOT NULL,
	Room_number 	INT 		NOT NULL,
	Movie_code 		VARCHAR(9) 	NOT NULL	REFERENCES Movie(Movie_code)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY (Branch_code, Room_number)	REFERENCES Room(Branch_code, Number)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    PRIMARY KEY (ShowID, Branch_code, Room_number) 
);

DROP TABLE IF EXISTS Food;
CREATE TABLE Food (
	FoodID 		VARCHAR(2)	PRIMARY KEY,
	Name 		VARCHAR(7)	NOT NULL,
	Size 		VARCHAR(1)	NOT NULL
);

DROP TABLE IF EXISTS cOrder;
CREATE TABLE cOrder (
	Invoice_num     VARCHAR(9)      NOT NULL    PRIMARY KEY,
    Pay_time        DATETIME        NOT NULL,
    Total_price     FLOAT           NOT NULL,
    CustomerID      VARCHAR(9)      NOT NULL,
    FOREIGN KEY (CustomerID)        REFERENCES Customer(CustomerID)
);

DROP TABLE IF EXISTS Food_order;
CREATE TABLE Food_order (
	FoodID 			VARCHAR(2) 	NOT NULL,
	Invoice_num 	VARCHAR(50) NOT NULL,
	Amount 			INT 		NOT NULL,
	FOREIGN KEY (FoodID) REFERENCES Food(FoodID)
        ON UPDATE CASCADE,
    FOREIGN KEY (Invoice_num) REFERENCES cOrder(Invoice_num)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	PRIMARY KEY (FoodID, Invoice_num) 
);

DROP TABLE IF EXISTS Ticket;
CREATE TABLE Ticket (
	TicketID		VARCHAR(9)	NOT NULL 	PRIMARY KEY,
	Invoice_num 	VARCHAR(9)	NOT NULL 	REFERENCES cOrder(Invoice_num)
        ON DELETE CASCADE
		ON UPDATE CASCADE,
	Branch_code 	VARCHAR(2)	NOT NULL,
	Room_number 	INT 		NOT NULL,
	Row_index 		VARCHAR(1) 	NOT NULL,
	Col_index 		INT			NOT NULL,
    ShowID 			VARCHAR(9) 	NOT NULL 	REFERENCES MOVIE_SHOW(ShowID)
		ON UPDATE CASCADE,
    FOREIGN KEY (Branch_code, Room_number, Row_index, Col_index) 
	REFERENCES Seat(Branch_code, Number, Row_index, Col_index)
);

DROP TABLE IF EXISTS Voucher;
CREATE TABLE Voucher (
	VoucherID			VARCHAR(9)		PRIMARY KEY,
	S_time  			DATETIME 	 	NOT NULL,
 	E_time 				DATETIME 		NOT NULL,
	Gender 				VARCHAR(20),
	Order_price 		INT,
	Total_point 		INT 			CHECK (Total_point >= 0),
	Description 		VARCHAR(100)	NOT NULL,
	Discount_percent	INT 			NOT NULL
);

DROP TABLE IF EXISTS isApplied;
CREATE TABLE isApplied (
	VoucherID VARCHAR(9)	NOT NULL REFERENCES Voucher(VoucherID)
		ON UPDATE CASCADE,
	Invoice_num VARCHAR(9)	NOT NULL REFERENCES cOrder(Invoice_num)
		ON UPDATE CASCADE,
	PRIMARY KEY (VoucherID, Invoice_num)
);


