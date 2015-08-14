(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; package stuff
(require 'init-elpa)

;; unset some bindings because I am OCD
(require 'init-reset-bindings)

;; all the things
(require 'init-ace-jump-mode)
(require 'init-appearance)
(require 'init-auto-complete)
(require 'init-backups)
(require 'init-css-mode)
(require 'init-dired)
(require 'init-god-mode)
(require 'init-helm)
(require 'init-input)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-org)
(require 'init-osx)
(require 'init-paredit)
(require 'init-projectile)
(require 'init-rvm)
(require 'init-scss-mode)
(require 'init-shell)
(require 'init-smart-mode-line)
(require 'init-variables)
(require 'init-web-mode)
(require 'init-yasnippet)
(require 'init-zop-to-char)

;; my own shit
(require 'init-utils)

;; bindings
(require 'init-bindings)
