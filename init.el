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

(straight-use-package 'dash)
(straight-use-package 'crux)
(straight-use-package 'editorconfig)
(straight-use-package 'jinja2-mode)
(straight-use-package 'make-mode)
(straight-use-package 'restclient)
(straight-use-package 'avy)
(straight-use-package 'hydra)

(straight-use-package 'expand-region)
(straight-use-package 'multiple-cursors)

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

;; (require 'init-yasnippet)

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

(straight-use-package 'cider)
(straight-use-package 'clojure-mode)
(straight-use-package 'haxe-mode)

(load-file (expand-file-name "tprost.el" user-emacs-directory))
(load-file (expand-file-name "monster.el" user-emacs-directory))
(load-file (expand-file-name "editing.el" user-emacs-directory))


(require 'init-appearance)
(require 'init-backups)

(straight-use-package 'exec-path-from-shell)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(straight-use-package 'feature-mode)

(straight-use-package 'pyenv-mode)
;; (straight-use-package 'virtualenv)ost
;; (straight-use-package 'auto-virtualenv)

;; (defun projectile-pyenv-mode-set ()
;;   "Set pyenv version matching project name."
;;   (let ((project (projectile-project-name)))
;;     (if (member project (pyenv-mode-versions))
;;         (pyenv-mode-set project)
;;       (pyenv-mode-unset))))

;; (add-hook 'projectile-after-switch-project-hook 'projectile-pyenv-mode-set)

;; (require 'auto-virtualenv)
;; (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

;; (straight-use-package 'virtualenvwrapper)
;; (require 'virtualenvwrapper)
;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (venv-initialize-eshell) ;; if you want eshell support
;; note that setting `venv-location` is not necessary if you
;; use the default location (`~/.virtualenvs`), or if the
;; the environment variable `WORKON_HOME` points to the right place
;; (setq venv-location "/path/to/your/virtualenvs/")

;; (setq venv-dirlookup-names '(".venv" "pyenv" ".virtual"))

 (defun pyvenv-autoload ()
    (require 'projectile)
    (let* ((pdir (projectile-project-root)) (pfile (concat pdir ".venv")))
      (if (file-exists-p pfile)
          (pyvenv-workon (with-temp-buffer
                           (insert-file-contents pfile)
                           (nth 0 (split-string (buffer-string))))))))
  (add-hook 'python-mode-hook 'pyvenv-autoload)


(straight-use-package 'pony-mode)
(straight-use-package 'vterm)

(defun projectile-run-vterm-dwim (commands &optional name)
 "Create project level vterm and run given command. If buffer with name
  that matches command already, switch to existing buffer."
  (interactive "sCommand: ")
  (let* ((project (projectile-acquire-root))
         (buffer-name (projectile-generate-process-name (or name commands) nil)))
    (unless (buffer-live-p (get-buffer buffer-name))
      (unless (require 'vterm nil 'noerror)
        (error "Package 'vterm' is not available"))
      (projectile-with-default-dir project
        (vterm buffer-name)
        (cond ((stringp commands)
               (vterm-send-string commands)
               (vterm-send-return))         
              ((listp commands)
               (dolist (command commands v)
                 (vterm-send-string command)
                 (vterm-send-return))))))                 
    (switch-to-buffer buffer-name)))

(defun my-fire-up-django-project ()
  "Set up terminals with appropriate commands for a Django project."
  (interactive)  
  (projectile-run-vterm-dwim "docker-compose up")
  (projectile-run-vterm-dwim
   '("source .venv/bin/activate" "python manage.py runserver") "runserver"))

(require 'pony-mode)

(straight-use-package 'whole-line-or-region)
(straight-use-package 'which-key)

(straight-use-package 'haskell-mode)

(straight-use-package 'lsp-haskell)


;; (require 'lsp)
(require 'lsp-haskell)
;; Hooks so haskell and literate haskell major modes trigger LSP setup

(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(add-hook 'haskell-mode-hook
          (lambda () (local-set-key (kbd "C-M-x") #'my-haskell-send-region)))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;; (add-to-list 'company-backends 'company-ghc)
          
(defun my-haskell-send-region (start end)
    "Send region to Haskell Interactive"
    (interactive "r")
    (if (use-region-p)        
          (let ((b (current-buffer))
                (regionp (buffer-substring start end)))                 
              (haskell-interactive-bring)
              (insert regionp)
              (haskell-interactive-mode-return)
              (pop-to-buffer b))
        (message "Region not active")))

(setq explicit-shell-file-name "/bin/bash")

(straight-use-package 'glsl-mode)

(put 'downcase-region 'disabled nil)

(straight-use-package 'frame-cmds)

(add-to-list 'load-path "~/.emacs.d/settings")

(require 'editing)
(require 'bindings)

;; (load-file (expand-file-name "bindings.el" user-emacs-directory))

;; (global-set-key (kbd "M-`") 'other-window)
