-- TRIGGER 1: AFTER INSERTING 1 <ORDER> --> <CUSTOMER> total point += total price / 1000
DROP TRIGGER IF EXISTS addTotalPoint;

CREATE TRIGGER addTotalPoint
AFTER INSERT ON cOrder
FOR EACH ROW
	UPDATE Customer
	SET Total_point = Total_point + NEW.Total_price/1000
	WHERE CustomerID = NEW.CustomerID
;

-- test for trigger 1
INSERT INTO cOrder (Invoice_num, Pay_time, Total_price, CustomerID)
VALUES ('o11111111', '2022-11-02 19:07:34', 230000, 'c12345678');

-- ~~~~~~~~~~~~~~~~~~~~~~~~~ T3T)/ ~~~~~~~~~~~~~~~~~~~~~~~~~

-- TRIGGER 2: if a voucher has a total_point condition, the customer who satifies the condition 
-- and uses the voucher will be decreased an amount of total point corresponding to the condition
DROP TRIGGER IF EXISTS useTotalPoint;

DELIMITER //
CREATE TRIGGER useTotalPoint
AFTER INSERT ON isApplied
FOR EACH ROW
	BEGIN
		SET @point = (
			SELECT Total_point 
        	FROM Voucher
        	WHERE VoucherID = NEW.VoucherID
		);
		IF @point IS NOT NULL THEN
			SET @cID = (
				SELECT CustomerID
                FROM cOrder
                WHERE Invoice_num = NEW.Invoice_num
            );
            UPDATE Customer
        	SET Total_point = Total_point - @point
    		WHERE CustomerID = @cID;
		END IF;
    END //
DELIMITER ;

-- test for trigger 2
INSERT INTO Voucher (`VoucherID`,`S_time`,`E_time`,`Gender`,`Order_price`,`Total_point`,`Description`,`Discount_percent`)
VALUES ('v22222222','2022-12-17 10:13','2022-12-31 6:21','Male',4000000, 50,'Martin Luther King Day',45);

INSERT INTO cOrder (Invoice_num, Pay_time, Total_price, CustomerID)
VALUES ('o33333333', '2022-11-02 19:07:34', 9800000, 'c12345678');

INSERT INTO isApplied(VoucherID, Invoice_num) VALUES('v22222222','o33333333');

delete from voucher where VoucherID = 'v22222222';
delete from cOrder where Invoice_num = 'o33333333';
delete from isApplied where VoucherID = 'v22222222';
