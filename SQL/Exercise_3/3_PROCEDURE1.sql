USE CINEMA;


-- List all customer information that has gender = x and customer's order total_price greater or equal ... 

-- Used tables: Customer, cOrder

DROP PROCEDURE IF EXISTS customer_orders;
DELIMITER //
CREATE PROCEDURE customer_orders (
    IN
    Gender VARCHAR(50),
    minPrice FLOAT
)
BEGIN
    IF (Gender = 'Male' or Gender = 'Female' or Gender = 'Other') THEN
        SELECT Customer.Username,Customer.Password,Customer.Email, Customer.Name, Customer.Birthday, Customer.Address, Customer.Phone, Customer.Gender,Customer.Total_point, cOrder.Total_price FROM Customer, cOrder
        WHERE Customer.CustomerID = cOrder.CustomerID AND Customer.Gender = Gender AND cOrder.Total_price >= minPrice
        ORDER BY Customer.Name;
    END IF;
END //
DELIMITER ;

call customer_orders('Male', 5000000);
