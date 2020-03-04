(defun divide-by-10 (num)
	(/ (- num (mod num 10)) 10)
)

(defun reverse-number (num)
	(setq sum 0)
	
	(loop
		(setq digit (mod num 10))
		(setq sum (+ (* sum 10) digit))
		(setq num (divide-by-10 num))
		(when (= num 0) (return-from reverse-number sum))
	)
)

(setq number (read))
(setq res (reverse-number number))
(format t "~d~%" res)