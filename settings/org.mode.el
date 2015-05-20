;; org-mode config
(setq org-use-extra-keys t)

;; (require 'org-drill)
(setq org-drill-add-random-noise-to-intervals-p t)

(defun my-org-mode-hook ()
	(local-set-key (kbd "C-c d") 'org-drill)
	(local-set-key (kbd "C-c r") 'org-drill-resume))

(add-hook 'org-mode-hook 'my-org-mode-hook)
