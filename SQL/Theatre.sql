USE CINEMA;
DROP TABLE IF EXISTS Theatre;

CREATE TABLE Theatre (
	Branch_code		VARCHAR(2) 	PRIMARY KEY,
	Name 			VARCHAR(50) NOT NULL UNIQUE,
	Address 		VARCHAR(50) NOT NULL
);

INSERT INTO Theatre (Branch_code, Name, Address) values ('b0', 'CGV Sinh viên', '71100 Swallow Street');
INSERT INTO Theatre (Branch_code, Name, Address) values ('b1', 'CGV Vincom Bách Khoa', '857 Lunder Drive');
INSERT INTO Theatre (Branch_code, Name, Address) values ('b2', 'CGV Lam Sơn', '88 Doe Crossing Hill');
INSERT INTO Theatre (Branch_code, Name, Address) values ('b3', 'CGV Thủ Đức', '496 Beilfuss Circle');
INSERT INTO Theatre (Branch_code, Name, Address) values ('b4', 'CGV Hùng Vương', '0 Darwin Court');
-- INSERT INTO Theatre (Branch_code, Name, Address) values ('b5', 'CGV Giga mall', '3721 Wayridge Drive');
-- INSERT INTO Theatre (Branch_code, Name, Address) values ('b6', 'CGV Venus', '6374 Holmberg Alley');
-- INSERT INTO Theatre (Branch_code, Name, Address) values ('b7', 'CGV Bitexco', '03 Ronald Regan Court');
-- INSERT INTO Theatre (Branch_code, Name, Address) values ('b8', 'CGV Star', '92 Eggendart Junction');
-- INSERT INTO Theatre (Branch_code, Name, Address) values ('b9', 'CGV Aeon', '26013 Schiller Plaza');
