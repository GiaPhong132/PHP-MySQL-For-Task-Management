SET GLOBAL log_bin_trust_function_creators = 1;
DROP FUNCTION IF EXISTS dayReachTarget;

-- hàm tính xem đến ngày thứ bao nhiêu thì rạp phim X đạt chỉ tiêu doanh thu đặt ra của tháng Y
-- INPUT (THÁNG, NĂM, RẠP, CHỈ TIÊU)
-- OUTPUT: NGÀY ĐẠT ĐƯỢC CHỈ TIÊU HOẶC THÁNG ĐÓ KO ĐẠT CHỈ TIÊU


-- this function uses these tables: Ticket, cOrder
DELIMITER //
CREATE FUNCTION dayReachTarget(
	month	INT,
    year 	INT,
    bCode 	VARCHAR(255),
    target 	INT) -- 1 = 1 Million
RETURNS VARCHAR(255)
BEGIN
	DECLARE rev INT DEFAULT 0;
    DECLARE d VARCHAR(2) DEFAULT '';
	-- CHECK INPUT
    IF (month < 0 OR month > 12) THEN
			RETURN 'THE VALUE OF MONTH MUST BE FROM 1 - 12';
	END IF;

    IF (year < 1999 OR year > YEAR(CURDATE())) THEN
		RETURN CONCAT('THE VALUE OF YEAR MUST BE FROM 1999 - ', YEAR(CURDATE()));
	END IF;

    IF (CHAR_LENGTH(bCode) <> 2 OR LEFT(bCode, 1) <> 'b') THEN
		RETURN 'INVALID BRANCH CODE';
	END IF;

    IF (target < 0 OR target > 500000000) THEN
		RETURN 'INVALID TARGET';
    END IF;

    -- LOOP
    BEGIN
		DECLARE notReach INT DEFAULT 0;
        DECLARE price INT DEFAULT 0;
        DECLARE ptime DATE;
		DECLARE p CURSOR FOR SELECT *
        FROM (
			SELECT Total_price, Pay_time
            FROM (
				SELECT DISTINCT Invoice_num
                FROM Ticket
                WHERE Branch_code = bCode
            ) t INNER JOIN cOrder ON t.Invoice_num = cOrder.Invoice_num
            WHERE MONTH(Pay_time) = month and YEAR(Pay_time) = year
            ORDER BY Pay_time ASC -- < in case the times were not ordered correctly >
        ) pt;
        -- declare NOT FOUND handler
		DECLARE CONTINUE HANDLER
        FOR NOT FOUND SET notReach = 1;
        OPEN p;
		isReach: LOOP
			IF (rev >= target OR notReach = 1) THEN LEAVE isReach;
			END IF;
			FETCH p INTO price, ptime;
            SET rev = rev + price;
            SET d = DAY(ptime);
		END LOOP isReach;
        CLOSE p;
    END;
    IF (rev > target) THEN
		RETURN CONCAT('DOANH THU THANG ', month, ' NAM ', year, ' DAT CHI TIEU TRONG VONG ', d, ' NGAY');
    ELSE
		RETURN CONCAT('DOANH THU THANG ', month , ' NAM ', year, ' KHONG DAT CHI TIEU');
    END IF;
END //
DELIMITER ;

select dayReachTarget(1,2021,'b0', 10000000);

-- check if a customer is old enough to watch a movie
DROP FUNCTION IF EXISTS checkAge;
DELIMITER //
CREATE FUNCTION checkAge(
   mCode		VARCHAR(255),
   cID			VARCHAR(255))
   RETURNS 		VARCHAR(20)

BEGIN
	DECLARE bday DATE;
    DECLARE age VARCHAR(3);
	-- CHECK INPUT
    IF (CHAR_LENGTH(mCode) <> 9 OR LEFT(mCode, 1) <> 'm') THEN
		RETURN 'INVALID VALUE OF MOVIE CODE';
	END IF;

    IF (CHAR_LENGTH(cID) <> 9 OR LEFT(cID, 1) <> 'c') THEN
		RETURN 'INVALID VALUE OF CUSTOMER ID';
	END IF;

    -- FUNCTION BODY
    SET bday = (SELECT Birthday
				FROM Customer
                WHERE CustomerID = cID);
	SET age = (SELECT Age_limit
				FROM Movie
                WHERE Movie_code = mCode);
	IF (YEAR(CURDATE()) - YEAR(bday)) >= age OR (age = 'All') THEN
		RETURN 'You are old enough';
	ELSE RETURN 'You are not old enough!';
    END IF;
END //
DELIMITER ;

# select checkAge('m78126847','c00440411');

