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
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'my-dictionary-functions)
(require 'my-editing)
(require 'my-functions)
(require 'my-projectile)
(require 'my-python-functions)

(require 'setup-defaults)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-company-mode)
(require 'setup-magit)
(require 'setup-dired)
;; (require 'setup-term-mode)
;; (require 'setup-defaults)
;; (require 'setup-exec-path-from-shell)

;; languages
(require 'setup-go-mode)
;; (require 'setup-lua-mode)
;; (require 'setup-js2-mode)
(require 'setup-python-mode)
;; (require 'setup-typescript-mode)
;; (require 'setup-c++-mode)

;; file types
;; (require 'setup-dockerfile-mode)
;; (require 'setup-feature-mode)
;; (require 'setup-json-mode)
;; (require 'setup-makefile)
;; (require 'setup-markdown-mode)
;; (require 'setup-yaml-mode)

;; (require 'setup-yasnippet)

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
;; (require 'setup-avy)
;; (require 'setup-my-global-macros)

;; (load-file (expand-file-name "tprost.el" user-emacs-directory))
;; (load-file (expand-file-name "editing.el" user-emacs-directory))

(require 'init-appearance)

(require 'setup-evil)
(require 'setup-org)
(require 'setup-haskell-mode)
(require 'setup-yasnippet)
(require 'setup-lsp-mode)
(require 'setup-markdown-mode)
(require 'setup-haskell-mode)
(require 'setup-restclient)

(require 'setup-miscellaneous)
(require 'stack)
(require 'bindings)

(load-file (expand-file-name "custom.el" user-emacs-directory))

(hydra-startup/body)

;; (global-set-key (kbd "M-`") 'other-window)




