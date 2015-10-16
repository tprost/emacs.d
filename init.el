(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

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
(require 'init-clojure-mode)
(require 'init-cider)
(require 'init-css-mode)
(require 'init-emmet-mode)
(require 'init-helm)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-osx)
(require 'init-paredit)
(require 'init-projectile)
(require 'init-python-mode)
(require 'init-rvm)
(require 'init-scss-mode)
(require 'init-smart-mode-line)
(require 'init-web-mode)

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

;; ;; (require 'init-yasnippet)
(require 'init-god-mode)
;; ;; (require 'init-org)
;; (require 'init-zop-to-char)

;; org 8.2.10 + org-drill 2.4.1 seems to be stable
(require 'init-org-drill)
(require 'init-org)
(require 'init-emms)

(require 'init-hz2py)
(require 'init-chinese-conv)
