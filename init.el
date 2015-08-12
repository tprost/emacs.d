(package-initialize)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; prelude related stuff
(require 'init-projectile)
(require 'init-prelude)

;; all the things

(require 'init-appearance)
(require 'init-auto-complete)
(require 'init-backups)
(require 'init-bindings)
(require 'init-css-mode)
(require 'init-god-mode)
(require 'init-input)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-org)
(require 'init-osx)
(require 'init-paredit)
(require 'init-rvm)
(require 'init-scss-mode)
(require 'init-shell)
(require 'init-utils)
(require 'init-variables)
(require 'init-web-mode)
(require 'init-yasnippet)
