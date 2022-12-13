USE CINEMA;
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

INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v55009817','2022-12-17 10:13','2022-12-31 6:21','Male',4000000,470,'Martin Luther King Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v66199029','2022-12-20 18:55','2022-12-21 11:18','Non-binary',6400000,760,'Presidents\' Day',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v98346309','2022-12-20 22:53','2022-12-26 0:11','Female',100000,790,'Mother\'s Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v11176701','2022-12-16 17:16','2022-12-30 5:30','Male',5700000,910,'Armed Forces Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v47527039','2022-12-16 19:45','2022-12-23 23:42','Male',4100000,690,'Father\'s Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v34248916','2022-12-16 12:30','2022-12-31 17:37','Female',6700000,710,'Memorial Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v22725006','2022-12-17 20:05','2022-12-30 20:51','Polygender',7700000,910,'Parents\' Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v51985032','2022-12-20 6:50','2022-12-22 20:48','Male',4300000,310,'Labor Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v89544589','2022-12-17 12:55','2022-12-26 13:55','Female',6800000,430,'Columbus Day',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v26342508','2022-12-18 22:52','2022-12-20 16:57','Male',500000,250,'Thanksgiving',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v97192010','2022-12-19 19:17','2022-12-31 8:31','Female',5100000,250,'May Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v64972482','2022-12-16 1:28','2022-12-19 9:01','Male',1000000,1000,'Summer Bank Holiday',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v52326334','2022-12-20 5:47','2022-12-25 20:16','Male',8200000,700,'Late Summer Bank Holiday',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v29214952','2022-12-17 9:57','2022-12-19 14:54','Agender',6700000,250,'Taxes Due',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v30837199','2022-12-17 0:39','2022-12-19 4:46','Female',300000,1000,'Daylight Saving',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v45095227','2022-12-19 0:46','2022-12-27 4:25','Male',100000,250,'Grandparents Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v92726482','2022-12-18 13:50','2022-12-26 3:26','Male',8100000,960,'Admin Assist Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v07282948','2022-12-20 20:51','2022-12-26 8:55','Male',9600000,420,'Chinese New  Year',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v83774716','2022-12-19 3:53','2022-12-30 9:50','Female',6300000,150,'Easter',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v61860082','2022-12-16 19:15','2022-12-27 9:47','Male',2100000,900,'Easter Monday',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v06275396','2022-12-17 12:04','2022-12-20 2:36','Male',8100000,820,'Good Friday',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v90199682','2022-12-16 23:14','2022-12-29 21:24','Male',5400000,730,'Pentecost',40);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v52910230','2022-12-18 6:17','2022-12-26 6:10','Female',9700000,470,'Ash Wednesday',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v05456624','2022-12-18 14:28','2022-12-27 0:24','Female',5000000,520,'Mardi Gras',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v78267920','2022-12-18 13:15','2022-12-28 13:28','Female',100000,400,'Ramadan begins',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v20562648','2022-12-18 5:12','2022-12-22 4:19','Female',2800000,600,'End of Ramadan',40);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v92187932','2022-12-18 17:22','2022-12-22 1:51','Polygender',7800000,840,'Rosh Hashanah',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v00939305','2022-12-16 8:24','2022-12-25 18:44','Male',3200000,370,'Yom Kippur',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v35110683','2022-12-19 8:29','2022-12-21 4:39','Male',2100000,140,'Passover',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v90752992','2022-12-19 17:32','2022-12-28 11:01','Female',8200000,60,'Hanukkah begins',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v19454802','2022-12-19 8:25','2022-12-20 4:29','Male',3400000,790,'Victoria Day ',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v22212121','2022-12-16 12:10','2022-12-23 21:05','Male',2900000,40,'Vernal equinox',40);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v02106705','2022-12-18 8:09','2022-12-26 5:56','Female',1800000,250,'June Solstice',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v15924040','2022-12-17 19:54','2022-12-22 7:55','Female',7600000,290,'Autumnal equinox ',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v58153989','2022-12-16 10:24','2022-12-27 7:09','Male',8200000,880,'Dec. Solstice (GMT)',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v53192089','2022-12-17 2:22','2022-12-19 8:19','Male',3900000,320,'New Year\'s Day',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v60286024','2022-12-17 18:23','2022-12-29 20:15','Male',7900000,250,'Groundhog Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v75541334','2022-12-18 13:25','2022-12-29 4:27','Male',4100000,250,'Lincoln\'s B-Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v88655350','2022-12-17 18:38','2022-12-21 10:56','Male',900000,470,'Valentine\'s Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v65456414','2022-12-16 12:04','2022-12-19 0:14','Female',5800000,660,'St. Patrick\'s Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v88932261','2022-12-20 23:58','2022-12-26 9:50','Female',9700000,620,'April Fool\'s Day',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v83260835','2022-12-17 4:42','2022-12-20 14:58','Genderqueer',1100000,50,'Earth Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v31534255','2022-12-19 11:28','2022-12-27 22:12','Male',2000000,220,'Cinco de Mayo',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v05249117','2022-12-18 12:12','2022-12-28 20:11','Bigender',6100000,360,'Flag Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v83708465','2022-12-17 0:28','2022-12-31 8:42','Female',100000,950,'Juneteenth',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v08660037','2022-12-19 1:51','2022-12-30 10:01','Polygender',6200000,880,'Independence Day',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v07228385','2022-12-18 6:45','2022-12-19 0:33','Female',900000,250,'Aviation Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v89932194','2022-12-18 12:30','2022-12-20 21:47','Male',9500000,60,'Patriot Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v56150798','2022-12-18 11:34','2022-12-22 5:54','Female',7500000,260,'Constitution Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v60116222','2022-12-19 12:01','2022-12-21 0:00','Female',5900000,250,'Boss\'s Day',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v30810434','2022-12-16 3:56','2022-12-30 1:17','Female',100000,260,'United Nations Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v67040937','2022-12-16 10:10','2022-12-22 13:41','Female',5200000,250,'Halloween',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v76411498','2022-12-18 2:58','2022-12-31 3:03','Female',6800000,760,'Veterans Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v24044546','2022-12-18 16:28','2022-12-21 0:47','Female',6700000,450,'Pearl Harbor',40);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v79172274','2022-12-17 19:30','2022-12-31 3:08','Female',4600000,250,'Christmas Eve',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v87183312','2022-12-17 0:37','2022-12-31 11:27','Female',4100000,470,'Christmas Day',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v40904503','2022-12-20 7:16','2022-12-25 21:26','Male',100000,970,'Kwanzaa begins',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v66866248','2022-12-17 16:02','2022-12-29 0:55','Male',3000000,110,'Boxing Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v34617681','2022-12-17 6:27','2022-12-25 15:47','Female',1400000,910,'New Year\'s Eve',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v12739241','2022-12-19 19:32','2022-12-19 18:41','Male',7500000,250,'Martin Luther King Jr. Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v59610911','2022-12-17 10:53','2022-12-28 9:39','Male',9800000,630,'President\'s Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v00906575','2022-12-17 18:01','2022-12-23 15:57','Male',1600000,970,'Veteran\'s Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v72918463','2022-12-17 20:29','2022-12-24 3:41','Male',2400000,250,'Thanksgiving Day',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v16402923','2022-12-17 8:04','2022-12-31 15:14','Female',10000000,250,'Washington\'s Birthday',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v73762728','2022-12-16 19:11','2022-12-28 2:13','Male',1200000,80,'Easter Sunday',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v54740459','2022-12-20 10:23','2022-12-22 18:30','Female',10000000,740,'Tax Day',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v63137872','2022-12-19 12:50','2022-12-31 5:05','Female',100000,720,'Administrative Professionals Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v49224931','2022-12-17 5:33','2022-12-30 22:22','Female',100000,250,'Day after Thanksgiving Day',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v99457680','2022-12-17 4:38','2022-12-28 10:06','Male',5100000,50,'Kitchen guardians',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v64971023','2022-12-17 16:22','2022-12-24 10:56','Male',100000,970,'Vietnamese New Year Holidays',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v66175397','2022-12-16 4:34','2022-12-28 20:31','Female',1100000,310,'Vietnamese New Year',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v07284724','2022-12-19 13:16','2022-12-21 3:03','Female',8800000,460,'Communist Party of Viet Nam Foundation Anniversary',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v67427244','2022-12-20 12:53','2022-12-23 20:27','Female',4400000,350,'Victory of Ng?c H?i-??ng ?a',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v81729636','2022-12-17 21:36','2022-12-22 8:45','Female',8000000,250,'Lantern Festival',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v08121133','2022-12-16 1:13','2022-12-30 18:44','Female',400000,250,'International Women\'s Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v79353122','2022-12-19 14:12','2022-12-24 9:14','Female',7300000,250,'Hung Kings Commemorations',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v70102855','2022-12-19 14:02','2022-12-19 14:42','Female',6600000,30,'Vietnam Book Day',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v62115697','2022-12-20 3:21','2022-12-29 18:55','Female',400000,330,'Day of liberating the South for national reunification',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v42876003','2022-12-17 15:00','2022-12-29 0:49','Male',6800000,370,'Labour Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v73544877','2022-12-18 6:21','2022-12-20 14:04','Male',2100000,380,'Dien Bien Phu Victory Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v41451862','2022-12-19 21:09','2022-12-19 20:08','Female',2000000,390,'Buddha\'s Birthday',35);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v20286648','2022-12-17 17:10','2022-12-20 15:17','Male',4100000,500,'President Ho Chi Minh\'s Birthday',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v00116318','2022-12-18 21:08','2022-12-23 4:20','Male',2200000,30,'International Children\'s Day',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v84271795','2022-12-19 22:57','2022-12-25 5:05','Female',3800000,580,'Mid-year Festival',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v23826916','2022-12-18 8:51','2022-12-31 19:03','Female',100000,390,'Vietnamese Family Day',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v39007763','2022-12-18 3:54','2022-12-27 3:44','Male',9600000,670,'Remembrance Day',5);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v18432397','2022-12-18 13:29','2022-12-22 21:43','Female',7800000,840,'Ghost Festival',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v99873309','2022-12-19 18:34','2022-12-23 3:13','Female',2500000,710,'August Revolution Commemoration Day',50);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v18491661','2022-12-18 21:04','2022-12-22 12:14','Genderfluid',100000,250,'National Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v22936155','2022-12-17 20:27','2022-12-25 6:08','Female',100000,160,'Mid-Autumn Festival',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v72274175','2022-12-19 8:21','2022-12-19 11:21','Female',100000,690,'Capital Liberation Day',25);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v18303210','2022-12-20 21:20','2022-12-25 10:19','Male',3900000,140,'Vietnamese Women\'s Day',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v78118650','2022-12-18 11:20','2022-12-27 17:25','Male',100000,680,'Vietnamese Teacher\'s Day',30);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v42824026','2022-12-20 10:41','2022-12-26 14:08','Male',3100000,250,'National Defence Day',10);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v96864375','2022-12-19 0:11','2022-12-26 9:56','Male',7400000,170,'Women\'s day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v12692229','2022-12-17 20:10','2022-12-25 20:39','Male',2500000,250,' Labor Day',15);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v98488602','2022-12-19 7:47','2022-12-21 5:43','Female',2800000,380,'The East Asian Valentine\'s Day',45);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v20544592','2022-12-20 18:01','2022-12-21 12:19','Male',7100000,630,'Single\'s Day',40);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v30753049','2022-12-20 2:59','2022-12-19 20:11','Male',2700000,910,'White Monday',20);
INSERT INTO Voucher (VoucherID, S_time, E_time, Gender, Order_price ,Total_point, Description, Discount_percent) VALUES ('v05574781','2022-12-19 17:37','2022-12-23 0:07','Male',5300000,900,'Black Friday',10);
