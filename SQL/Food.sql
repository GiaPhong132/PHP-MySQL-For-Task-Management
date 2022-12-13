USE CINEMA;
DROP TABLE IF EXISTS Food;

CREATE TABLE Food (
	FoodID 		VARCHAR(2)	PRIMARY KEY,
	Name 		VARCHAR(7)	NOT NULL,
	Size 		VARCHAR(1)	NOT NULL
);

INSERT INTO Food (FoodID, Name, Size) values ('f0', 'Popcorn', 'S');
INSERT INTO Food (FoodID, Name, Size) values ('f1', 'Popcorn', 'M');
INSERT INTO Food (FoodID, Name, Size) values ('f2', 'Popcorn', 'L');
INSERT INTO Food (FoodID, Name, Size) values ('f3', 'Pepsi', 'S');
INSERT INTO Food (FoodID, Name, Size) values ('f4', 'Pepsi', 'M');
INSERT INTO Food (FoodID, Name, Size) values ('f5', 'Pepsi', 'L');
INSERT INTO Food (FoodID, Name, Size) values ('f6', 'Coca', 'S');
INSERT INTO Food (FoodID, Name, Size) values ('f7', 'Coca', 'M');
INSERT INTO Food (FoodID, Name, Size) values ('f8', 'Coca', 'L');
