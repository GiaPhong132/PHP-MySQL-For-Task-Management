USE CINEMA;
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

INSERT INTO Room (Branch_code, Number, State) values ('b0', 1, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b0', 2, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b0', 3, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b0', 4, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b0', 5, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b1', 1, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b1', 2, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b1', 3, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b1', 4, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b1', 5, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b2', 1, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b2', 2, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b2', 3, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b2', 4, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b2', 5, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b3', 1, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b3', 2, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b3', 3, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b3', 4, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b3', 5, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b4', 1, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b4', 2, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b4', 3, 'Unavailable');
INSERT INTO Room (Branch_code, Number, State) values ('b4', 4, 'Available');
INSERT INTO Room (Branch_code, Number, State) values ('b4', 5, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b5', 1, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b5', 2, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b5', 3, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b5', 4, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b5', 5, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b6', 1, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b6', 2, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b6', 3, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b6', 4, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b6', 5, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b7', 1, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b7', 2, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b7', 3, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b7', 4, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b7', 5, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b8', 1, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b8', 2, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b8', 3, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b8', 4, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b8', 5, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b9', 1, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b9', 2, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b9', 3, 'Available');
-- INSERT INTO Room (Branch_code, Number, State) values ('b9', 4, 'Unavailable');
-- INSERT INTO Room (Branch_code, Number, State) values ('b9', 5, 'Available');
