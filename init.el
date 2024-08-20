(load-file "~/.emacs.d/elpaca-init.el")


(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/bindings")
(elpaca
    (catppuccin :repo "https://github.com/catppuccin/emacs.git" :main "catppuccin-theme.el" :wait t)

	(load-theme 'catppuccin :no-confirm))







;;; Bindings
(use-package evil :ensure t :demand t :config
	(evil-mode 1)

	(require 'bindings-evil-mode)
	(require 'bindings-emacs-lisp-mode)
	(require 'bindings-clojure-ts-mode)

	(setup-nasty-emacs-hybrid-evil-bindings)
	(setup-evil-mode-bindings)


	(setup-emacs-lisp-mode-bindings)

	(setup-clojure-ts-mode-bindings))

(elpaca 'helm (require 'setup-helm))




(elpaca 'projectile

	;; (require 'bindings-projectile-mode)
	(autoload 'projectile "setup-projectile" "Setup configuration of Projectile" t)
	(require 'setup-projectile))
(elpaca 'helm-projectile)

(elpaca 'crux)
(elpaca 'magit)

;; (elpaca 'projectile-variables)
(elpaca 'hydra)

(elpaca 'which-key (which-key-mode))
;; (elpaca 'ansi-color)

;; setup beacon

(elpaca 'beacon (setq beacon-lighter "") (beacon-mode 1))
;; setup 

(elpaca transient)

(setq inhibit-startup-screen t)
(setq initial-buffer-choice nil)

(require 'setup-appearance)

(require 'setup-defaults)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(elpaca (elfmt :host github :repo "riscy/elfmt" :main "elfmt.el") (require 'elfmt))
(elpaca 'eval-sexp-fu (require 'eval-sexp-fu))

(elpaca 'evil-cleverparens)

(elpaca 'lispy)

(elpaca 'company (global-company-mode))

(elpaca 'clojure-ts-mode (require 'clojure-ts-mode) (require 'bindings-clojure-ts-mode))


(elpaca 'paredit (require 'paredit))

(elpaca 'cider-eval-sexp-fu (require 'cider-eval-sexp-fu))

(elpaca 'cider)

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode) (python-mode . python-ts-mode)))

(require 'my-editing)
(require 'my-files)
(require 'my-functions)
(require 'my-projectile)

(setq backup-directory-alist
      '(("." . "~/.emacs.d/backup"))
			backup-by-copying t    ; Don't delink hardlinks
			version-control t      ; Use version numbers on backups
			delete-old-versions t  ; Automatically delete excess backups
			kept-new-versions 20   ; how many of the newest versions to keep
			kept-old-versions 5    ; and how many of the old
			)
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))
(setq create-lockfiles nil)

(elpaca 'exec-path-from-shell
	(when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))


(elpaca 'lsp-mode (require 'setup-lsp-mode))
(elpaca 'lsp-ui)
(elpaca 'helm-lsp)
(elpaca 'direnv (direnv-mode))

(elpaca 'envrc (envrc-global-mode))


(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(add-hook 'fundamental-mode-hook 'display-line-numbers-mode)


(defun my-mode-line-visual-bell () (setq visible-bell nil) (setq ring-bell-function 'my-mode-line-visual-bell--flash))

(defun my-mode-line-visual-bell--flash ()
  (let ((frame (selected-frame)))
    (run-with-timer
     0.1 nil
     #'(lambda (frame)
         (let ((inhibit-quit)
               (inhibit-redisplay t))
           (invert-face 'header-line frame)
           (invert-face 'header-line-highlight frame)
           (invert-face 'mode-line frame)
           (invert-face 'mode-line-inactive frame)))
     frame)
    (let ((inhibit-quit)
          (inhibit-redisplay t))
      (invert-face 'header-line frame)
      (invert-face 'header-line-highlight frame)
      (invert-face 'mode-line frame)
      (invert-face 'mode-line-inactive frame))))
(my-mode-line-visual-bell)
