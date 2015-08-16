(defun my-dired-mode-hook ()
	(dired-hide-details-mode)
	(local-set-key (kbd "<C-return>") 'xah-open-in-external-app))

(add-hook 'dired-mode-hook 'my-dired-mode-hook)

(provide 'init-dired)
