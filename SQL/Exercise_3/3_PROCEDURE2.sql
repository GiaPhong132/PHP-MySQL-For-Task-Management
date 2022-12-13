USE CINEMA;

-- List all customer that ordered after "DateFrom", 
-- and buy food whose name is "NameFood", 
-- and have the amount of food is greater than "Amount"

-- Used tables: Food, cOrder, Food_order, Customer

DROP PROCEDURE IF EXISTS findOrderAfter;
DELIMITER //
CREATE PROCEDURE findOrderAfter(
    IN
    DateFrom DATE,
    Amount INT, 
    NameFood VARCHAR(255),
    Usrname VARCHAR(255)
)
BEGIN
    IF NOT EXISTS(SELECT * FROM Food WHERE Name=NameFood) THEN
        SELECT "The food name doesn't exist!" AS Response;
    ELSE
        SELECT  Customer.Username, Customer.Gender, Customer.Name, Customer.Birthday, Customer.Address, Customer.Phone, SUM(Food_order.Amount) AS OrderAmount
        FROM Food, cOrder, Food_order, Customer
        WHERE CONVERT(cOrder.Pay_time, DATE) > DateFrom
            AND Food_order.Invoice_num=cOrder.Invoice_num
            AND Food.FoodID=Food_order.FoodID
            AND cOrder.CustomerID=Customer.CustomerID
            AND Food.Name=NameFood
        GROUP BY Customer.Username
        HAVING  SUM(Food_order.Amount) > Amount
        ORDER BY Customer.Username;
    END IF;
END //
DELIMITER ;

call findOrderAfter('2021-01-01', 2, 'Coca');
