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
(straight-use-package 'which-key)

(require 'which-key)
(which-key-mode)

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
(require 'init-yasnippet)

(telephone-line-mode 1)
(beacon-mode 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)
(window-divider-mode -1)

(require 'init-lua-mode)

(put 'upcase-region 'disabled nil)

(global-unset-key (kbd "C-z"))


(setq lsp-keymap-prefix "C-c C-c")

(require 'lsp-mode)
(add-hook 'lua-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)

(require 'company-lsp)
(require 'company-yasnippet)

(global-set-key (kbd "C-<tab>") 'company-yasnippet)

(setq special-display-buffer-names
      `(("*compilation*" . ((name . "*compilation*")
                            ,@default-frame-alist
                            (left . (- 1))
                            (top . 0)))))

  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1)

(straight-use-package 'direnv)
(require 'direnv)

(straight-use-package 'multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(straight-use-package 'expand-region)
(require 'expand-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "M-A") 'beginning-of-buffer)
(global-set-key (kbd "M-E") 'end-of-buffer)

(global-set-key (kbd "<f1>") 'projectile-command-map)

(straight-use-package 'gitlab-ci-mode)

(direnv-mode)

(require 'init-makefile-mode)
