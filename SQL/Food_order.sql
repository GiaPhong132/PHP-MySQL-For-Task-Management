USE CINEMA;
DROP TABLE IF EXISTS Food_order;

CREATE TABLE Food_order (
	FoodID 			VARCHAR(2) 	NOT NULL,
	Invoice_num 	VARCHAR(50) NOT NULL,
	Amount 			INT 		NOT NULL,
	FOREIGN KEY (FoodID) REFERENCES Food(FoodID)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Invoice_num) REFERENCES cOrder(Invoice_num)
		ON DELETE CASCADE
        ON UPDATE CASCADE,
	PRIMARY KEY (FoodID, Invoice_num) 
);

INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o00128357', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o00266088', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o00325858', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o00594733', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o00868179', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o01037881', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o01118371', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o01189037', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o01278137', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o01329218', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o01364763', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o01450797', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o01609189', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o01651238', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o01660076', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o01732380', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o01757980', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o01820337', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o02049312', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o02078082', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o02355010', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o02430183', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o02614437', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o02632171', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o02702603', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f5', 'o02764427', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o02773810', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o02829687', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o02865501', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o02935464', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o02950966', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o03039841', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f5', 'o03065520', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o03411867', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o03440577', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o03536163', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f5', 'o03929649', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o03960063', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o04180549', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o04265677', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o04482467', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o04592694', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o04753289', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o04793205', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f5', 'o04823140', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o04887098', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o05324897', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o05351804', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o05397613', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o05560140', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f5', 'o05692709', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o05834441', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o05902263', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o05979450', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o05993285', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o06045794', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o06093258', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o06098818', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o06390482', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o06457466', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o06793937', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o06983536', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o07125099', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o07171479', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o07177430', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o07289718', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o07524641', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o07537295', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o07940521', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o07997588', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08012374', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o08137915', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08206400', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o08289783', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f7', 'o08360701', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o08376267', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08505774', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08508166', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o08584663', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08720210', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o08746968', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o08876087', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o08913569', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o08932955', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o09055476', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o09128927', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o09185985', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f1', 'o09314127', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o09496873', 4);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o09730605', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o09764999', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o09766851', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o09873212', 5);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o10068925', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f6', 'o10082169', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f4', 'o10439224', 2);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f3', 'o10505521', 1);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f8', 'o10662920', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f2', 'o10916816', 3);
INSERT INTO Food_order (FoodID, Invoice_num, Amount) VALUES ('f0', 'o10961404', 4);

