
(setq org-agenda-files (quote ("~/org/agenda.org")))
(setq org-agenda-span (quote fortnight))
(setq org-drill-optimal-factor-matrix
	 (quote
		((4
			(2.08 . 2.08)
			(2.46 . 2.46)
			(2.36 . 2.36)
			(2.22 . 2.22))
		 (3
			(1.9000000000000001 . 2.065)
			(2.1799999999999997 . 2.325)
			(2.22 . 2.22)
			(2.04 . 2.243)
			(2.5 . 2.5)
			(2.08 . 2.142)
			(2.2800000000000002 . 2.418)
			(2.1399999999999997 . 2.288)
			(2.8000000000000003 . 2.785)
			(2.56 . 2.583)
			(2.6 . 2.588)
			(2.7 . 2.679)
			(2.2199999999999998 . 2.328)
			(2.36 . 2.412)
			(2.46 . 2.496))
		 (2
			(2.08 . 2.142)
			(2.32 . 2.41)
			(1.92 . 2.234)
			(2.22 . 2.22)
			(2.1799999999999997 . 2.325)
			(2.2199999999999998 . 2.328)
			(2.5 . 2.5)
			(2.36 . 2.412)
			(1.8199999999999998 . 2.159)
			(2.04 . 2.243)
			(2.7 . 2.679)
			(1.96 . 2.238)
			(2.46 . 2.496)
			(2.6 . 2.588))
		 (1
			(2.3200000000000003 . 4.14)
			(1.9000000000000001 . 3.72)
			(1.8199999999999998 . 3.455)
			(1.92 . 3.58)
			(2.46 . 4.0)
			(2.1399999999999997 . 3.72)
			(2.04 . 3.59)
			(2.2199999999999998 . 3.725)
			(1.96 . 3.58)
			(2.1799999999999997 . 3.72)
			(2.6 . 4.14)
			(2.5 . 4.0)
			(2.36 . 3.86)
			(1.7000000000000002 . 3.44)))))

 (setq org-modules
	 (quote
		(org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))

(require 'org-drill)

;; org-mode config
(setq org-use-extra-keys t)

;; (require 'org-drill)
(setq org-drill-add-random-noise-to-intervals-p t)

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
