DELIMITER //
CREATE OR REPLACE FUNCTION reverse_number(num INT)
	RETURNS INT
BEGIN
	DECLARE sum INT;
	DECLARE digit INT;
	SET sum = 0;
	SET digit = 0;

	WHILE num != 0 DO
		SET digit = num % 10;
		SET sum = sum * 10 + digit;
		SET num = FLOOR(num / 10);
	END WHILE;

	RETURN sum;
END //
DELIMITER ;

SELECT reverse_number(123456789);