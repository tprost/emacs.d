(defun tprost-term-toggle-mode ()
  "Toggles term between line mode and char mode"
  (interactive)
  (if (term-in-line-mode)
      (term-char-mode)
    (term-line-mode)))

(defun tprost-term-mode-hook ()
  (local-set-key (kbd "C-x o") 'other-window)
  
  )

(add-hook 'term-mode-hook 'tprost-term-mode-hook)

(provide 'init-term-mode)
