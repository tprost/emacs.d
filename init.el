(load "~/.emacs.d/settings/package")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(custom-enabled-themes (quote (wombat)))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(json-reformat:indent-width 3)
 '(json-reformat:pretty-string\? t)
 '(org-drill-optimal-factor-matrix
	 (quote
		((3
			(2.08 . 2.142)
			(2.2800000000000002 . 2.418)
			(2.1399999999999997 . 2.288)
			(2.8000000000000003 . 2.785)
			(2.56 . 2.546)
			(2.6 . 2.6)
			(2.7 . 2.691)
			(2.2199999999999998 . 2.277)
			(2.36 . 2.412)
			(2.46 . 2.46))
		 (2
			(1.92 . 2.234)
			(2.22 . 2.22)
			(2.1799999999999997 . 2.325)
			(2.2199999999999998 . 2.328)
			(2.5 . 2.5)
			(2.36 . 2.412)
			(1.8199999999999998 . 2.112)
			(2.04 . 2.243)
			(2.7 . 2.679)
			(1.96 . 2.238)
			(2.46 . 2.496)
			(2.6 . 2.588))
		 (1
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
 '(org-modules
	 (quote
		(org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))
 '(tool-bar-mode nil))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Monaco")))))

(setq org-capture-templates
      '(    ;; ... other templates

        ("o" "Journal Entry"
         entry (file+datetree "~/org/journal.org")
         "* %?"
         :empty-lines 1)

        ("j" "Japanese Drill"
         entry (file "~/org/japanese.org")
				 (file "~/.emacs.d/org/capture-templates/japanese-drill.org")
         :empty-lines 1)

        ("w" "Do The Work"
         entry (file+datetree "~/org/the-work.org")
         (file "~/.emacs.d/org/capture-templates/do-the-work.org")
         :empty-lines 1)

        ))

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

;; appearance
(load "~/.emacs.d/settings/appearance")

;; mac
(load "~/.emacs.d/settings/mac")

;; global key bindings
(load "~/.emacs.d/settings/bindings")

;; variables
(load "~/.emacs.d/settings/variables")

;; mode setup
(load "~/.emacs.d/settings/autocomplete.mode")
(load "~/.emacs.d/settings/js2.mode")
(load "~/.emacs.d/settings/org.mode")
(load "~/.emacs.d/settings/projectile.mode")
(load "~/.emacs.d/settings/yasnippet.mode")

(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(scroll-bar-mode -1)

(rvm-use-default)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.swig?\\'" . web-mode))


