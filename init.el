(load "~/.emacs.d/settings/package")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(json-reformat:indent-width 2)
 '(json-reformat:pretty-string\? t)
 '(org-drill-optimal-factor-matrix
	 (quote
		((2
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
			(2.04 . 3.59)
			(2.2199999999999998 . 3.725)
			(1.96 . 3.58)
			(2.1799999999999997 . 3.72)
			(2.6 . 4.14)
			(2.5 . 4.0)
			(2.36 . 3.86)
			(1.7000000000000002 . 3.44)))))
 '(tool-bar-mode nil))

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
(load "~/.emacs.d/settings/yasnippet.mode")
