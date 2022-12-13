USE CINEMA;
SET GLOBAL log_bin_trust_function_creators = 1;

DROP FUNCTION IF EXISTS IdGenerator;
DELIMITER //
CREATE FUNCTION IdGenerator (Id_type VARCHAR(1))
RETURNS VARCHAR(9)
BEGIN
	SET @res = '';
    SET @num = '0123456789';
    SET @i = 0;
    WHILE (@i < 8) DO
        SET @res = CONCAT(@res, substring(@num, FLOOR(RAND() * 10 + 1), 1));
        SET @i = @i + 1;
    END WHILE;
    RETURN CONCAT(Id_type, @res);
END //
DELIMITER ;

select IdGenerator('m');

