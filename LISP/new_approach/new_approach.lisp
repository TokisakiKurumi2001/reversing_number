(defun divide-by-2 (num)
	(cond
		( (= (mod num 2) 0)
			(return-from divide-by-2 (/ num 2))
		)
		( t
			(return-from divide-by-2 (/ (- num 1) 2))
		)
	)
)

(defun reverse-number (num)
	(setq len (length num))
	(setq bound (divide-by-2 len))
	(setq *arr* (string num))

	(loop for i from 0 to bound do
		(setq symmetry (- len 1 i))
		(setf temp (char *arr* i))
		(setf (char *arr* i) (char *arr* symmetry))
		(setf (char *arr* symmetry) temp)
	)

	(return-from reverse-number *arr*)
)

(setq number (read-line))
(setq res (reverse-number number))
(write res)
(terpri)