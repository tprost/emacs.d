(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

;; my own shit
(require 'init-utils)

;; bindings
(require 'init-reset-bindings)
(require 'init-bindings)

;; basic config
(require 'init-appearance)
(require 'init-backups)
(require 'init-dired)
(require 'init-input)
(require 'init-shell)
(require 'init-variables)

;; package stuff
(require 'init-elpa)

;; all the melpa-stable things
(require 'init-ace-jump-mode)
(require 'init-auto-complete)
(require 'init-css-mode)
(require 'init-helm)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-osx)
(require 'init-paredit)
(require 'init-projectile)
(require 'init-scss-mode)
(require 'init-smart-mode-line)
(require 'init-web-mode)

;; ;; (require 'init-yasnippet)
;; ;; (require 'init-god-mode)
;; ;; (require 'init-org)
;; (require 'init-zop-to-char)
;; rvm


;; org 8.2.10 + org-drill 2.4.1 seems to be stable
(require 'init-org-drill)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-drill-optimal-factor-matrix
	 (quote
		((4
			(2.56 . 2.56))
		 (5
			(2.08 . 2.142))
		 (1
			(2.5 . 4.0))
		 (3
			(2.36 . 2.36)
			(2.46 . 2.443)
			(2.5 . 2.5))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
