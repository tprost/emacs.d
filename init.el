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
(require 'init-purpose)
(require 'init-term-mode)
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
(global-unset-key (kbd "C-x l"))
(setq lsp-keymap-prefix "C-x l")

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




(straight-use-package 'gitlab-ci-mode)

(direnv-mode)

(require 'init-makefile)
(require 'init-c++-mode)
(global-set-key (kbd "C-<next>") 'end-of-buffer)
(global-set-key (kbd "C-<prior>") 'beginning-of-buffer)
(add-hook 'c++-mode-hook #'lsp)

(straight-use-package 'ccls)
(straight-use-package 'cpp-auto-include)

(global-set-key (kbd "C-M-r") 'lsp-rename)
(global-set-key (kbd "C-M-o") 'lsp-organize-imports)
(global-set-key (kbd "C-M-c") 'crux-cleanup-buffer-or-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-t") 'set-mark-command)
(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "M-A") 'beginning-of-buffer)
(global-set-key (kbd "M-E") 'end-of-buffer)

(global-unset-key (kbd "<f1>"))
(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<f5>"))
(global-unset-key (kbd "C-x c"))

(global-set-key (kbd "<f1>") 'cleanup-buffer)
(global-set-key (kbd "C-x c") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "C-x o") 'other-window)

(global-unset-key (kbd "C-x i"))
(global-set-key (kbd "C-x C-i") 'tprost-init-file)
(global-set-key (kbd "C-x i i") 'tprost-init-file)
(global-set-key (kbd "C-x i I") 'tprost-init-file-for-major-mode)
(global-set-key (kbd "C-x i f") 'tprost-find-emacsd-file)
(global-set-key (kbd "C-x i d") 'tprost-init-directory)
(global-set-key (kbd "C-x i t") 'tprost-init-todo-file)

(global-set-key (kbd "C-x t") 'projectile-test-project)
(global-set-key (kbd "C-x s") 'tprost-project-term)
(global-set-key (kbd "C-x m") 'helm-make-projectile)
(global-set-key (kbd "C-x L") 'tprost-project-layout)


(global-set-key (kbd "C-x y y") 'company-yasnippet)
(global-set-key (kbd "C-x y r") 'yas-reload-all)
(global-set-key (kbd "C-x y s") 'tprost-open-snippets-directory-dwim)
(global-set-key (kbd "C-x C-y") 'company-yasnippet)

(global-set-key (kbd "<f2>") 'projectile-commander)
(global-set-key (kbd "<f3>") 'projectile-test-project)
(global-set-key (kbd "<f4>") 'helm-make-projectile)
(global-set-key (kbd "<f5>") 'crux-find-user-init-file)
(global-set-key (kbd "<f8>") 'crux-find-user-init-file)

(global-set-key (kbd "C-<down>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<up>") 'enlarge-window-horizontally)

(setq explicit-shell-file-name "/bin/bash")

(global-unset-key (kbd "C-x C-f"))
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(local-unset-key (kbd "C-x C-f"))

(require 'ccls)
(put 'downcase-region 'disabled nil)

(straight-use-package 'org-drill)

(require 'org-drill)

(straight-use-package 'xah-lookup)

(require 'xah-lookup)

(defun tprost-lookup-japanese-wiktionary (&optional @word)
  "Lookup definition of current word or text selection in URL `https://ja.wiktionary.org/'
Version 2017-02-09"
  (interactive)
  (xah-lookup-word-on-internet
   @word
   (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-url )
   (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function )))

(put 'tprost-lookup-japanese-wiktionary 'xah-lookup-url "https://ja.wiktionary.org/wiki/word02051")
(put 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function xah-lookup-browser-function)

(defun tprost-parse-japanese-wiktionary (&optional @word)
  "Hit https://ja.wiktionary.org and parse the contents"
  
(with-current-buffer (url-retrieve-synchronously "https://ja.wiktionary.org/wiki/test")
  (prog1
      (buffer-string)
    (kill-buffer))))


(require 'init-org-drill)
