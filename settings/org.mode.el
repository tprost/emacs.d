(require 'org-drill)

;; org-mode config
(setq org-use-extra-keys t)

;; (require 'org-drill)
(setq org-drill-add-random-noise-to-intervals-p t)

(defun my-org-mode-hook ()
	(local-set-key (kbd "s-n") 'outline-next-visible-heading)
	(local-set-key (kbd "s-p") 'outline-previous-visible-heading)
	(local-set-key (kbd "s-f") 'org-forward-heading-same-level)
	(local-set-key (kbd "s-b") 'org-backward-heading-same-level)
	(local-set-key (kbd "s-u") 'outline-up-heading)
	(local-set-key (kbd "s-j") 'org-goto)
	(local-set-key (kbd "s-^") 'org-sort)
	(local-set-key (kbd "s-*") 'org-toggle-heading)
	(local-set-key (kbd "<f12> o d") 'org-drill)
	(local-set-key (kbd "<f12> o r") 'org-drill-resume))

(add-hook 'org-mode-hook 'my-org-mode-hook)
