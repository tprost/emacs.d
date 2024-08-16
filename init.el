(defun efs/display-startup-time ()
  (message "Emacs loaded in %s with %d garbage collections."
           (format "%.2f seconds"
                   (float-time
										(time-subtract after-init-time before-init-time)))
           gcs-done))

(add-hook 'emacs-startup-hook #'efs/display-startup-time)

(defvar elpaca-installer-version 0.7)
(defvar elpaca-directory (expand-file-name "elpaca/" user-emacs-directory))
(defvar elpaca-builds-directory (expand-file-name "builds/" elpaca-directory))
(defvar elpaca-repos-directory (expand-file-name "repos/" elpaca-directory))
(defvar elpaca-order '(elpaca :repo "https://github.com/progfolio/elpaca.git"
                              :ref nil :depth 1
                              :files (:defaults "elpaca-test.el" (:exclude "extensions"))
                              :build (:not elpaca--activate-package)))
(let* ((repo  (expand-file-name "elpaca/" elpaca-repos-directory))
       (build (expand-file-name "elpaca/" elpaca-builds-directory))
       (order (cdr elpaca-order))
       (default-directory repo))
  (add-to-list 'load-path (if (file-exists-p build) build repo))
  (unless (file-exists-p repo)
    (make-directory repo t)
    (when (< emacs-major-version 28) (require 'subr-x))
    (condition-case-unless-debug err
        (if-let ((buffer (pop-to-buffer-same-window "*elpaca-bootstrap*"))
                 ((zerop (apply #'call-process `("git" nil ,buffer t "clone"
                                                 ,@(when-let ((depth (plist-get order :depth)))
                                                     (list (format "--depth=%d" depth) "--no-single-branch"))
                                                 ,(plist-get order :repo) ,repo))))
                 ((zerop (call-process "git" nil buffer t "checkout"
                                       (or (plist-get order :ref) "--"))))
                 (emacs (concat invocation-directory invocation-name))
                 ((zerop (call-process emacs nil buffer nil "-Q" "-L" "." "--batch"
                                       "--eval" "(byte-recompile-directory \".\" 0 'force)")))
                 ((require 'elpaca))
                 ((elpaca-generate-autoloads "elpaca" repo)))
            (progn (message "%s" (buffer-string)) (kill-buffer buffer))
          (error "%s" (with-current-buffer buffer (buffer-string))))
      ((error) (warn "%s" err) (delete-directory repo 'recursive))))
  (unless (require 'elpaca-autoloads nil t)
    (require 'elpaca)
    (elpaca-generate-autoloads "elpaca" repo)
    (load "./elpaca-autoloads")))
(add-hook 'after-init-hook #'elpaca-process-queues)
(elpaca `(,@elpaca-order))

(add-to-list 'load-path "~/.emacs.d/elisp")
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/bindings")


(elpaca 'helm
	(require 'setup-helm))
(elpaca 'projectile
	(require 'setup-projectile))
(elpaca 'crux)
;; (elpaca 'projectile-variables)
(elpaca 'helm-projectile)
(elpaca 'magit)
(elpaca 'hydra
	(require 'bindings-hydras))

(elpaca 'which-key
	(which-key-mode))
;; (elpaca 'ansi-color)

;; setup beacon
(elpaca 'beacon
	(beacon-mode 1)
	(setq beacon-lighter ""))

;; setup 
(require 'bindings-evil-mode)

(elpaca transient)
(elpaca 'evil
	(evil-mode 1)
	(setup-evil-mode-bindings))
(elpaca (catppuccin :repo "https://github.com/catppuccin/emacs.git" :main "catppuccin-theme.el")
	(load-theme 'catppuccin :no-confirm))

(setq inhibit-startup-screen t)
(setq initial-buffer-choice nil)

(require 'setup-appearance)
(require 'bindings)

(require 'setup-defaults)
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(elpaca (highlight-sexp :host github :repo "daimrod/highlight-sexp"))

(elpaca 'eval-sexp-fu
	(require 'eval-sexp-fu))

(elpaca 'lispy
	(require 'lispy))

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

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
			backup-by-copying t    ; Don't delink hardlinks
			version-control t      ; Use version numbers on backups
			delete-old-versions t  ; Automatically delete excess backups
			kept-new-versions 20   ; how many of the newest versions to keep
			kept-old-versions 5    ; and how many of the old
			)

(setq create-lockfiles nil)
;; (require 'my-python-functions)


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


