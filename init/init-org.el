;; (require-package 'org)

(setq org-agenda-files (quote ("~/org/agenda.org")))
(setq org-agenda-span (quote fortnight))


;; org-mode config
(setq org-use-extra-keys t)

;; (require 'org-drill)


;; when you open an org file make it start with everything expanded
(setq org-startup-folded 'all)

(defun outline-forward-up ()
	"Move cursor to next heading that is the same level as the current parent."
	(interactive)
	(outline-up-heading 1)
	(org-forward-heading-same-level 1))

(defun my-org-mode-hook ()
	;; moving forwards and backwards like paredit
	(local-set-key (kbd "C-M-f") 'org-forward-heading-same-level)
	(local-set-key (kbd "C-M-b") 'org-backward-heading-same-level)

	;; descending forwards and ascending backwards
	(local-set-key (kbd "C-M-d") 'outline-next-visible-heading)
	(local-set-key (kbd "C-M-u") 'outline-up-heading)

	;; descending backwards and ascending forwards
	(local-set-key (kbd "C-M-p") 'outline-previous-visible-heading)
	(local-set-key (kbd "C-M-n") 'outline-forward-up)

	;; structure editing
	(local-set-key (kbd "M-(") 'org-demote-subtree)
	(local-set-key (kbd "M-)") 'org-promote-subtree)

	;; promote/demote heading                            M-LEFT/RIGHT
	;; promote/demote current subtree                    M-S-LEFT/RIGHT

	(local-set-key (kbd "C-c d d") 'org-drill)
	(local-set-key (kbd "C-c d r") 'org-drill-resume)


)

(add-hook 'org-mode-hook 'my-org-mode-hook)
(setq org-capture-templates
			'(		;; ... other templates

				("o" "Journal Entry"
				 entry (file+datetree "~/org/journal.org")
				 "* %?"
				 :empty-lines 1)

				("j" "Japanese Drill"
				 entry (file "~/org/drill/japanese.org")
				 (file "~/.emacs.d/org/capture-templates/japanese-drill.org")
				 :empty-lines 1)

				("w" "Do The Work"
				 entry (file+datetree "~/org/the-work.org")
				 (file "~/.emacs.d/org/capture-templates/do-the-work.org")
				 :empty-lines 1)

				))

(provide 'init-org)
