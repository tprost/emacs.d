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

	(require 'bindings)

	(require 'bindings-evil-mode)
	(require 'bindings-emacs-lisp-mode)

	(setup-nasty-emacs-hybrid-evil-bindings)
	(setup-evil-mode-bindings)


	(setup-emacs-lisp-mode-bindings))

(elpaca 'helm (require 'setup-helm))




(elpaca 'projectile

	(require 'bindings-projectile-mode)
	(require 'setup-projectile))
(elpaca 'helm-projectile)

(elpaca 'crux)
(elpaca 'magit)

;; (elpaca 'projectile-variables)
(elpaca 'hydra (require 'bindings-hydras))

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

;; (elpaca 'python-ts-mode)
;; (treesit-install-language-grammar 'python)

(elpaca 'cider)

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode) (python-mode . python-ts-mode)))

;; (message "hello world" (+ 1 1))
;; (add-hook 'lisp-mode-hook 'highlight-sexp-mode)
;; (add-hook 'emacs-lisp-mode-hook 'highlight-sexp-mode)


;; (add-hook 'elpaca-after-init-hook
;; 					(lambda ()						
;; 						(setup-evil-mode-bindings)))

;; (require 'setup-helm)


;; (elpaca 'projectile)

;; (require 'setup-org-mode)

;; (require 'setup-appearance)



;; (require 'setup-tab-bar-mode)
;; (require 'setup-text-mode)
;; (require 'setup-emacs-lisp-mode)

;; (require 'setup-projectile)
;; (require 'projectile-buffer-registers)

;; (require 'setup-lsp-mode)
;; (require 'setup-company-mode)

;; (require 'setup-magit)
;; (require 'setup-dired)
;; (require 'setup-csv-mode)
;; ;; (require 'setup-term-mode)
;; ;; (require 'setup-defaults)
;; ;; (require 'setup-exec-path-from-shell)

;; ;; languages
;; (require 'setup-go-mode)
;; ;; (require 'setup-lua-mode)
;; ;; (require 'setup-js2-mode)
;; (require 'setup-python-mode)
;; (require 'setup-bazel)
;; ;; (require 'setup-typescript-mode)
;; ;; (require 'setup-c++-mode)

;; ;; file types
;; ;; (require 'setup-dockerfile-mode)
;; ;; (require 'setup-feature-mode)
;; (require 'setup-json-mode)
;; ;; (require 'setup-makefile)
;; ;; (require 'setup-markdown-mode)
;; ;; (require 'setup-yaml-mode)
;; (require 'setup-flycheck)
;; (require 'setup-yasnippet)
;; (require 'setup-ligature)
;; ;; (straight-use-package 'multiple-cursors)
;; ;; (require 'multiple-cursors)
;; ;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; ;; (straight-use-package 'expand-region)
;; ;; (require 'expand-region)

;; ;; (straight-use-package 'which-key)
;; ;; (require 'which-key)
;; ;; (which-key-mode)
;; ;; (require 'setup-avy)
;; ;; (require 'setup-my-global-macros)

;; ;; (load-file (expand-file-name "tprost.el" user-emacs-directory))
;; ;; (load-file (expand-file-name "editing.el" user-emacs-directory))1


;; (require 'setup-yasnippet)
;; (require 'setup-markdown-mode)
;; (require 'setup-restclient)

;; (require 'setup-haskell-mode)
;; (require 'setup-clojure)
;; ;; (require 'setup-structured-haskell-mode) ;; package cl is deprecated oh no
;; (require 'setup-rustic-mode)
;; (require 'setup-haxe-mode)
;; (require 'setup-common-lisp)

;; (require 'setup-miscellaneous)
;; (require 'stack)

;; (require 'my-dictionary-functions)

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
;; (require 'my-python-functions)

;; (exec-path-from-shell-initialize)
;; ;; (require 'haskell-stack-mode)

;; (load-file (expand-file-name "custom.el" user-emacs-directory))

;; (setq frame-resize-pixelwise t)



;; ;; (global-set-key (kbd "M-`") 'other-window)




;; (defun afs/org-replace-all-links-by-description (&optional start end)
;;   "Find all org links and replace by their descriptions."
;;   (interactive
;;    (if (use-region-p) (list (region-beginning) (region-end))
;;      (list (point-min) (point-max))))
;;   (save-excursion
;;     (save-restriction
;;       (narrow-to-region start end)
;;       (goto-char (point-min))
;;       (while (re-search-forward org-link-bracket-re nil t)
;;         (replace-match (match-string-no-properties 
;;                         (if (match-end 2) 2 1)))))))

;; (setq backup-directory-alist `(("." . "~/.saves")))
;; (setq auto-save-default nil)

;; (put 'downcase-region 'disabled nil)
;; (straight-use-package 'csound-mode)
;; (straight-use-package 'rust-mode)
;; (straight-use-package 'helm-make)

;; (push '("\\*compilation\\*" . (nil (reusable-frames . t))) display-buffer-alist)

;; (straight-use-package 'aggressive-indent)

;; (straight-use-package 'helm-swoop)


;; (setq lsp-enable-automatic-install nil)

;; (setq display-buffer-alist
;;       '(("\\*compilation\\*"
;;          (display-buffer-use-some-frame)
;;          (inhibit-same-window . t))
;; 				("\\*vterm*"
;;          (display-buffer-use-some-frame)
;;          (inhibit-same-window . t))




;; 				))

;; (straight-use-package 'csharp-mode)


;; (straight-use-package 'typescript-mode)

;; ;; ANSI colors for compilation buffers
;; (require 'ansi-color)
;; (defun colorize-compilation-buffer ()
;;   (toggle-read-only)
;;   (ansi-color-apply-on-region compilation-filter-start (point))
;;   (toggle-read-only))
;; (add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; (straight-use-package 'vue-mode)

;; (require 'bindings)
;; (hydra-startup/body)

;; (straight-use-package 'web-mode)

;; (flycheck-add-mode 'javascript-eslint 'web-mode)

;; (straight-use-package 'iy-go-to-char)
;; (straight-use-package 'god-mode)

;; (straight-use-package 'direnv)

;; (require 'direnv)

;; (require 'god-mode)

;; (defun pre-commit-on-current-file ()
;;   "Run pre-commit on the current file before saving."
;; 	(interactive)
;;   (when (and (buffer-file-name)
;;              (executable-find "pre-commit"))
;;     (shell-command-to-string (format "pre-commit run --files %s"
;; 																		 (shell-quote-argument
;; 																			(buffer-file-name))))))

;; (defun pre-commit ()
;;   "Run pre-commit on the current file before saving."
;; 	(interactive)
;;   (when (executable-find "pre-commit")
;;     (shell-command-to-string "pre-commit run")))


;; (direnv-mode)


;; ;; (straight-use-package 'swank-js)

;; ;; ;;(global-set-key [f5] 'slime-js-reload)
;; ;; (add-hook 'js2-mode-hook
;; ;;           (lambda ()
;; ;;             (slime-js-minor-mode 1)))

;; (straight-use-package 'indium)

;; (setq indium-client-debug t)
;; (require 'indium)

;; (setq indium-client-debug t)


;; (straight-use-package 'nodejs-repl)


