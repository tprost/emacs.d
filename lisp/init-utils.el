(defun tabify-buffer ()
	(interactive)
	(tabify (point-min) (point-max)))

(defun untabify-buffer ()
	(interactive)
	(untabify (point-min) (point-max)))

(defun indent-buffer ()
	(interactive)
	(indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
	"Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
	(interactive)
	(if indent-tabs-mode (tabify-buffer) (untabify-buffer))
	(delete-trailing-whitespace)
	(indent-buffer))


;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(defun my-electric-brace (arg)
	"Automatically add a closing '}' for every '{' inserted."
	(interactive "*P")
	(let ((count (prefix-numeric-value arg)))
		(self-insert-command count)
		(save-excursion
			(insert-char ?} count))))


(provide 'init-utils)