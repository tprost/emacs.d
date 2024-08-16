
(defun eval-parent-sexp-and-move-point ()
  "Move to the beginning of the parent expression and evaluate it."
  (interactive)
  (backward-up-list)
	(forward-sexp)
  (eval-last-sexp nil))

(defun eval-symbol-at-point ()
  "Evaluate the symbol at point."
  (interactive)
  (let ((symbol (thing-at-point 'symbol t)))
    (if symbol
        (eval (read symbol))
      (message "No symbol at point"))))
(defun eval-symbol-at-point ()
  "Evaluate the symbol at point using eval-region and return the result."
  (interactive)
  (save-excursion
    (let ((bounds (bounds-of-thing-at-point 'symbol)))
      (if bounds
          (let ((start (car bounds))
                (end (cdr bounds))
                result)
            ;; Evaluate the region and store the result
            (setq result (eval-region start end))
            ;; Reset the region
            (deactivate-mark)
            ;; Return the result of eval-region
            result)
        (message "No symbol at point")
        nil))))
(defun eval-symbol-at-point ()
  "Evaluate the symbol at point using eval-region."
  (interactive)
  (save-excursion
    (let ((bounds (bounds-of-thing-at-point 'symbol)))
      (if bounds
          (let ((start (car bounds))
                (end (cdr bounds)))
            ;; Mark the region and evaluate it
            (eval-region start end)
						(message "heres the start and end %d %d" start end)
            ;; Reset the region
            (deactivate-mark))
        (message "No symbol at point" start end)))))

(provide 'my-elisp-mode)

