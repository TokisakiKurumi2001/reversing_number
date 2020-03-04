(defun reverse-number (num)
	(reverse num)
)

(setq number (read-line))
(setq res (reverse-number number))
(write res)
(terpri)