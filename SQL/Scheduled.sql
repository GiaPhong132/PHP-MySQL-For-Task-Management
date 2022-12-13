USE CINEMA;
DROP TABLE IF EXISTS Scheduled;

CREATE TABLE Scheduled(
  	ShowID 			VARCHAR(9)	NOT NULL	REFERENCES Movie_show(ShowID),
	Branch_code 	VARCHAR(2) 	NOT NULL,
	Room_number 	INT 		NOT NULL,
	Movie_code 		VARCHAR(9) 	NOT NULL	REFERENCES Movie(Movie_code),
    FOREIGN KEY (Branch_code, Room_number)	REFERENCES Room(Branch_code, Number)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    PRIMARY KEY (ShowID, Branch_code, Room_number) 
);

INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s82663010', 'b0', 1, 'm55319663');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s97179598', 'b0', 2, 'm84499891');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s38968347', 'b0', 3, 'm64267580');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s33395462', 'b0', 4, 'm12968902');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s16867228', 'b0', 5, 'm04905601');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s08463437', 'b1', 1, 'm69707972');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s88381349', 'b1', 2, 'm91258168');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s96874364', 'b1', 3, 'm66791420');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s53737067', 'b1', 4, 'm67771403');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s24264407', 'b1', 5, 'm57301478');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s60208090', 'b2', 1, 'm19096654');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s80184391', 'b2', 2, 'm63305834');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s12003862', 'b2', 3, 'm31930108');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s35665319', 'b2', 4, 'm71568090');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s05113177', 'b2', 5, 'm31709442');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s56221999', 'b3', 1, 'm93653336');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s18456218', 'b3', 2, 'm26865850');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s44773607', 'b3', 3, 'm33633469');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s46820560', 'b3', 4, 'm81482803');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s03973535', 'b3', 5, 'm22167169');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s45808660', 'b4', 1, 'm15387336');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s68438417', 'b4', 2, 'm02068345');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s95685384', 'b4', 3, 'm80552946');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s48962998', 'b4', 4, 'm14311756');
INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s59290735', 'b4', 5, 'm23947634');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s32317985', 'b5', 1, 'm83761873');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s18900579', 'b5', 2, 'm34307611');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s86698689', 'b5', 3, 'm34651114');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s59146304', 'b5', 4, 'm31281014');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s11677621', 'b5', 5, 'm59455748');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s64742082', 'b6', 1, 'm41003528');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s58123450', 'b6', 2, 'm23274579');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s24222495', 'b6', 3, 'm90427384');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s87562818', 'b6', 4, 'm83816154');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s46827885', 'b6', 5, 'm58629216');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s21185837', 'b7', 1, 'm36098720');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s14849593', 'b7', 2, 'm45836752');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s53382768', 'b7', 3, 'm01811816');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s47746477', 'b7', 4, 'm79541185');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s27022606', 'b7', 5, 'm03397093');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s22489650', 'b8', 1, 'm62056443');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s92204843', 'b8', 2, 'm08269068');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s09445599', 'b8', 3, 'm19932012');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s88097060', 'b8', 4, 'm92047561');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s20441776', 'b8', 5, 'm25178503');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s78304415', 'b9', 1, 'm42705030');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s08878048', 'b9', 2, 'm93457413');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s44721712', 'b9', 3, 'm23588678');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s43587296', 'b9', 4, 'm04560481');
-- INSERT INTO Scheduled (ShowID, Branch_code, Room_number, Movie_code) VALUES ('s42590887', 'b9', 5, 'm60193694');
