(require 'ffap)

(defun my-create-filepath-with-line-regex (filepath)
  "Create a regular expression that matches FILEPATH followed by an optional line number."
  (let ((quoted-filepath (regexp-quote filepath))
        (line-number-regex "\\([0-9]+\\)$"))
    (concat quoted-filepath ":" line-number-regex)))


(defun my-open-file-at-point-with-line ()
  "Open file at point and go to the line number if specified.
  The format expected is: /path/to/file:linenumber"
  (interactive)
  (let* ((filename (ffap-file-at-point))
         (line-number (and filename
													 (when (thing-at-point-looking-at (my-create-filepath-with-line-regex filename))
														 (string-to-number (match-string 1))))))		
    (if filename
        (progn
          (find-file filename)
          (when line-number
            (goto-line line-number)))
      (message "No file found at point"))))

(provide 'my-files)
