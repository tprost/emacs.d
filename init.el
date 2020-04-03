
;; bootstrap straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(straight-use-package 'ansi-color)
(straight-use-package 'beacon)
(straight-use-package 'company-lsp)
(straight-use-package 'crux)
(straight-use-package 'editorconfig)
(straight-use-package 'jinja2-mode)
(straight-use-package 'lsp-mode)
(straight-use-package 'make-mode)
(straight-use-package 'plantuml-mode)
(straight-use-package 'prodigy)
(straight-use-package 'restclient)
(straight-use-package 'telephone-line)

(require 'init-org)

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
(require 'init-osx)

;; packages
(require 'init-avy)
(require 'init-company-mode)
(require 'init-csharp-mode)
(require 'init-dockerfile-mode)
(require 'init-exec-path-from-shell)
(require 'init-feature-mode)
(require 'init-go-mode)
(require 'init-haxe-mode)
(require 'init-helm)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-markdown-mode)
(require 'init-miscellaneous)
(require 'init-projectile)
(require 'init-typescript-mode)
(require 'init-yaml-mode)

(telephone-line-mode 1)
(beacon-mode 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
(window-divider-mode -1)

(require 'init-lua-mode)

(put 'upcase-region 'disabled nil)

(require 'company-lsp)

(setq lsp-keymap-prefix "C-c C-l")

(require 'lsp-mode)
(add-hook 'lua-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)

