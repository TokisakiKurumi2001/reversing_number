DELIMITER //
CREATE OR REPLACE FUNCTION reverse_number(num VARCHAR(50))
	RETURNS VARCHAR(50)
BEGIN
	DECLARE neg_len INT;
	DECLARE return_str VARCHAR(50);
	DECLARE temp CHAR(1);
	DECLARE j INT;

	SET neg_len = (-1)*LENGTH(num);
	SET j = -1;
	SET return_str = '';

	for_loop: LOOP
		SET temp = SUBSTRING(num, j, 1);
		SET return_str = CONCAT(return_str, temp);
		IF j <= neg_len THEN
			LEAVE for_loop;
		END IF;
		SET j = j - 1;
	END LOOP for_loop;

	RETURN return_str;
END //
DELIMITER ;

SELECT reverse_number('123456789098765432123');