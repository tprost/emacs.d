(defun my-dired-mode-hook ()
	(dired-hide-details-mode)
	(local-set-key (kbd "<C-return>") 'xah-open-in-external-app))

(add-hook 'dired-mode-hook 'my-dired-mode-hook)

(defun my-dired-dwim ()
  "Open dired mode for the folder containing the file of the current buffer or whatever."
  (interactive)
	(dired default-directory))

(provide 'setup-dired)
