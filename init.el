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

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-appearance)
(require 'init-backups)

(straight-use-package 'crux)
(straight-use-package 'editorconfig)
(straight-use-package 'jinja2-mode)
(straight-use-package 'make-mode)
(straight-use-package 'restclient)
(straight-use-package 'avy)

(require 'init-helm)
(require 'init-projectile)
(require 'init-company-mode)
(require 'init-lsp-mode)
(require 'init-magit)
(require 'init-org)

(require 'init-dired)
(require 'init-term-mode)
(require 'init-defaults)
;; (require 'init-exec-path-from-shell)

;; languages
(require 'init-go)
(require 'init-lua-mode)
(require 'init-js2-mode)
(require 'init-python)
(require 'init-typescript-mode)
(require 'init-c++-mode)

;; file types
(require 'init-dockerfile-mode)
(require 'init-feature-mode)
(require 'init-json-mode)
(require 'init-makefile)
(require 'init-markdown-mode)
(require 'init-yaml-mode)

(require 'init-yasnippet)

;; (straight-use-package 'direnv)
;; (require 'direnv)
;; (straight-use-package 'multiple-cursors)
;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; (straight-use-package 'expand-region)
;; (require 'expand-region)

;; (straight-use-package 'which-key)
;; (require 'which-key)
;; (which-key-mode)
;; (straight-use-package 'direnv)
;; (require 'direnv)
;; (direnv-mode)
(require 'init-avy)
(require 'init-my-global-macros)
(require 'init-bindings)

(load-file (expand-file-name "tprost.el" user-emacs-directory))
