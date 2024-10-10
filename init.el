(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq straight-vc-git-default-protocol 'ssh)
(setq straight-use-package-by-default t)

(use-package vertico
  :defer t
  :init (vertico-mode))
(use-package magit :defer t)
(use-package clojure-ts-mode :defer t)
(use-package cider :defer t)

(setq inhibit-startup-screen t) 
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; Hide the menu bar
(menu-bar-mode -1)

;; Hide the tool bar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Hide the scroll bar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
;; Enable relative line numbers
(setq display-line-numbers-type 'relative)

;; Enable line numbers globally
(global-display-line-numbers-mode t)
(set-face-attribute 'default nil
                    :family "PragmataPro Mono"
                    :height 120) ;; Height is size * 10



;; Customize the current line number face
(set-face-attribute 'line-number-current-line nil
                    :foreground "white"  ;; Color of the current line number
                    :weight 'bold)        ;; Make it bold if desired
;; Disable auto-save
(setq auto-save-default nil)

;; Disable backup files (those ending in ~)
(setq make-backup-files nil)

;; Disable auto-save for visited files
(setq auto-save-visited-file-name nil)

;; Disable lock files (those starting with .#)
(setq create-lockfiles nil)
(defun +find-nixos-configuration-file ()
  (interactive)
  (find-file "/etc/nixos/configuration.nix")

  )


(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; Optionally use the `orderless' completion style.
(use-package orderless
  :defer t
  :custom
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (orderless-style-dispatchers '(+orderless-consult-dispatch orderless-affix-dispatch))
  ;; (orderless-component-separator #'orderless-escapable-split-on-space)
  (completion-styles '(orderless basic))
  (completion-category-defaults nil)
  (completion-category-overrides '((file (styles partial-completion)))))

(use-package corfu
  :defer t
  :init
  (global-corfu-mode))

(which-key-mode)


;; (use-package '(evil-mc :type git :host github :repo "gabesoft/evil-mc" :demand nil))
;; (use-package evil-multiedit)		;
;; (use-package evil-mc
;;   :straight (evil-mc :type git :host github :repo "tprost/evil-mc" :demand nil)
;;   :defer t)


(use-package multiple-cursors		;
  :defer t
  :config
  (require 'multiple-cursors))

;; (use-package treesit-auto
;;   :custom
;;   (treesit-auto-install 'prompt)
;;   :config
;;   ;; (treesit-auto-add-to-auto-mode-alist 'all)
;;   (global-treesit-auto-mode))

;; (use-package treesit :defer t)
(require 'treesit)
(defun +setup-install-grammars ()
  "Install Tree-sitter grammars if they are absent."
  (interactive)
  (dolist (grammar
           ;; Note the version numbers. These are the versions that
           ;; are known to work with Combobulate *and* Emacs.
           '((css . ("https://github.com/tree-sitter/tree-sitter-css" "v0.20.0"))
             (go . ("https://github.com/tree-sitter/tree-sitter-go" "v0.20.0"))
             (html . ("https://github.com/tree-sitter/tree-sitter-html" "v0.20.1"))
             (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript" "v0.20.1" "src"))
             (json . ("https://github.com/tree-sitter/tree-sitter-json" "v0.23.0"))
             (markdown . "https://github.com/ikatyang/tree-sitter-markdown")
             (python . ("https://github.com/tree-sitter/tree-sitter-python" "v0.20.4"))
             (rust . "https://github.com/tree-sitter/tree-sitter-rust")
             (toml . ("https://github.com/tree-sitter/tree-sitter-toml" "v0.5.1"))
             (tsx . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "tsx/src"))
             (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript" "v0.20.3" "typescript/src"))
             (yaml . ("https://github.com/ikatyang/tree-sitter-yaml" "v0.5.0"))
	     (commonlisp . ("https://github.com/tree-sitter-grammars/tree-sitter-commonlisp"))
	     (elisp . ("https://github.com/Wilfred/tree-sitter-elisp"))
	     ))
    (add-to-list 'treesit-language-source-alist grammar)
    ;; Only install `grammar' if we don't already have it
    ;; installed. However, if you want to *update* a grammar then
    ;; this obviously prevents that from happening.
    (unless (treesit-language-available-p (car grammar))
      (treesit-install-language-grammar (car grammar)))))

(dolist (mapping
         '((python-mode . python-ts-mode)
           (css-mode . css-ts-mode)
           (typescript-mode . typescript-ts-mode)
           (js2-mode . js-ts-mode)
           (bash-mode . bash-ts-mode)
           (conf-toml-mode . toml-ts-mode)
           (go-mode . go-ts-mode)
           (css-mode . css-ts-mode)
	   (clojure-mode . clojure-ts-mode)
           (json-mode . json-ts-mode)
           (js-json-mode . json-ts-mode)))
  (add-to-list 'major-mode-remap-alist mapping))
(+setup-install-grammars)


(defun +setup-common-lisp-treesitter ()
  (treesit-parser-create 'commonlisp))
(add-hook 'lisp-mode-hook '+setup-common-lisp-treesitter)

(defun +setup-emacs-lisp-treesitter ()
  (treesit-parser-create 'elisp))
(add-hook 'emacs-lisp-mode-hook '+setup-common-lisp-treesitter)

(use-package sly
  
  :defer t
  :init

  :config
  (define-key sly-editing-mode-map (kbd "M-p") nil)
  (define-key sly-editing-mode-map (kbd "M-n") nil)
  (define-key sly-mode-map (kbd "C-<return>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (define-key sly-mode-map (kbd "M-<return>") 'eval-sexp-fu-sly-eval-expression-inner-list))


(setf (alist-get "*Test Results*" display-buffer-alist nil nil 'equal)
      '((display-buffer-reuse-window
         display-buffer-in-side-window)
        (side . bottom)
        (window-height . 0.25))) 

(use-package slite
  :after (sly)
  :straight (slite :type git :host github :repo "tdrhq/slite"))

(defun +slite-run-at-point (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (prin1-to-string
    `(parachute:test
      ,(let ((name (sly-parse-toplevel-form)))
         (if (symbolp name)
             `(quote ,(intern (sly-qualify-cl-symbol-name name)))
           name))))))

(defun +slite-run-at-point-dwim (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (cl-flet ((top-level-first-sexp
               ()
               (ignore-errors
                 (save-excursion
                   (goto-char (car (sly-region-for-defun-at-point)))
                   (down-list 1)
                   (car (last (sly-parse-context (read (current-buffer)))))))))
     (prin1-to-string
      `(,(cond
          ((let ((case-fold-search t))
             (string-match-p "define-test$" (symbol-name (top-level-first-sexp)) ))
           'parachute:test)
          (t
           'fiveam:run))
        ,(let ((name (sly-parse-toplevel-form)))
           (if (symbolp name)
               `',(intern (sly-qualify-cl-symbol-name name))
             name)))))))



(define-prefix-command '+project-prefix-command)
(define-key +project-prefix-command (kbd "p") 'project-switch-project)
(define-key +project-prefix-command (kbd "f") 'project-find-file)
(define-key +project-prefix-command (kbd "b") 'project-switch-to-buffer)
(define-key +project-prefix-command (kbd "t") '+makefile-execute-test)

(define-prefix-command '+open-prefix-command)
(define-key +open-prefix-command (kbd "f") 'make-frame)

(define-prefix-command '+file-prefix-command)
(define-key +file-prefix-command (kbd "f") 'find-file)
(define-key +file-prefix-command (kbd "s") 'save-buffer)

(define-prefix-command '+buffer-prefix-command)
(define-key +buffer-prefix-command (kbd "b") 'switch-to-buffer)
(define-key +buffer-prefix-command (kbd "r") 'revert-buffer)
(define-key +buffer-prefix-command (kbd "p") 'previous-buffer)
(define-key +buffer-prefix-command (kbd "n") 'next-buffer)
(define-key +buffer-prefix-command (kbd "k") 'kill-buffer)

(define-prefix-command '+window-prefix-command)
(define-key +window-prefix-command (kbd "c") 'tab-new)
(define-key +window-prefix-command (kbd "\"") 'split-window-horizontally)
(define-key +window-prefix-command (kbd "%") 'split-window-vertically) ;; Tmux: split window vertically
(define-key +window-prefix-command (kbd "x") 'delete-window) ;; Tmux: kill pane
(define-key +window-prefix-command (kbd "o") 'other-window) ;; Tmux: switch to next pane
(define-key +window-prefix-command (kbd "w") 'list-buffers) ;; Tmux: list windows (adapted to Emacs)
(define-key +window-prefix-command (kbd "n") 'next-buffer) ;; Tmux: next window (adapted to buffer)
(define-key +window-prefix-command (kbd "p") 'previous-buffer) ;; Tmux: previous window (adapted to buffer)
(define-key +window-prefix-command (kbd "r") 'windmove-left) ;; Tmux: move to pane left
(define-key +window-prefix-command (kbd "s") 'windmove-down) ;; Tmux: move to pane down
(define-key +window-prefix-command (kbd "f") 'windmove-up) ;; Tmux: move to pane up
(define-key +window-prefix-command (kbd "t") 'windmove-right) ;; Tmux: move to pane right
(define-key +window-prefix-command (kbd ",") 'rename-buffer) ;; Tmux: rename window (adapted to buffer)
(define-key +window-prefix-command (kbd "q") 'kill-buffer-and-window) ;; Tmux: kill window
(define-key +window-prefix-command (kbd "!") 'delete-other-windows) ;; Tmux: kill window
(global-set-key (kbd "<f1>") '+window-prefix-command)
(global-set-key (kbd "<f2>") 'meow-normal-mode)

(define-prefix-command '+goto-prefix-command)
(define-key +goto-prefix-command (kbd "r") 'beginning-of-line)


(define-prefix-command '+leader-prefix-command)
(define-key '+leader-prefix-command (kbd "g") 'magit)
(define-key '+leader-prefix-command (kbd "p") '+project-prefix-command)
(define-key '+leader-prefix-command (kbd "o") '+open-prefix-command)
(define-key '+leader-prefix-command (kbd "f") '+file-prefix-command)
(define-key '+leader-prefix-command (kbd "b") '+buffer-prefix-command)
(define-key '+leader-prefix-command (kbd "d") 'dired)
(define-key '+leader-prefix-command (kbd "w") '+window-prefix-command)

(use-package helix
  :straight (helix :type git :host github :repo "tprost/helix"))

(require 'helix)

(eval-after-load 'dired
  '(progn
     ;; use the standard Dired bindings as a base
     (defvar dired-mode-map)
     (evil-make-overriding-map dired-mode-map 'normal)
     (evil-add-hjkl-bindings dired-mode-map 'normal
       "J" 'dired-goto-file                   ; "j"
       "K" 'dired-do-kill-lines               ; "k"
       "r" 'dired-do-redisplay                ; "l"
       ;; ":d", ":v", ":s", ":e"
       ";" (lookup-key dired-mode-map ":"))))


(use-package makefile-executor)

(defun +makefile-execute-test ()
  (interactive)
  (makefile-executor-execute-target (concat (project-root (project-current)) "Makefile") "test"))

(defmacro map! (&rest args)
  `(evil-define-key ,@args))

(use-package avy)

(map! 'normal 'global (kbd "f") 'helix-previous-line)
(map! 'normal 'global (kbd "s") 'helix-next-line)
(map! 'normal 'global (kbd "t") 'helix-forward-char)
(map! 'normal 'global (kbd "r") 'helix-backward-char)
(map! 'visual 'global (kbd "f") 'previous-line)
(map! 'visual 'global (kbd "s") 'next-line)
(map! 'visual 'global (kbd "t") 'forward-char)
(map! 'visual 'global (kbd "r") 'backward-char)

(map! 'normal 'global (kbd "n") 'helix-find-char)
(map! 'normal 'global (kbd "N") 'helix-find-until-char)
(map! 'normal 'global (kbd "h") 'helix-find-prev-char)
(map! 'normal 'global (kbd "H") 'helix-find-until-prev-char)
(map! 'normal 'global (kbd "k") 'helix-find-prev-until-char)
(map! 'normal 'global (kbd "l") 'mc/mark-all-in-region-regexp)
(map! 'normal 'global (kbd "k") 'helix-replace-char)
(map! 'normal 'global (kbd "j") 'avy-goto-char)

(define-key 'helix-goto-prefix-command (kbd "t") 'end-of-line)
(define-key 'helix-goto-prefix-command (kbd "r") 'beginning-of-line)

(map! nil sly-mode-map (kbd "<localleader>eb") 'sly-eval-buffer)
(map! nil sly-mode-map (kbd "<localleader>et") '+slite-run-at-point-dwim)
(map! nil sly-mode-map (kbd "<localleader>'") 'sly)
(map! nil sly-mode-map (kbd "<localleader>xb") 'sly-eval-buffer)
(map! nil sly-mode-map (kbd "<f4>") 'sly-eval-buffer)
(map! nil sly-mode-map (kbd "<localleader>xt") '+slite-run-at-point-dwim)
(map! nil sly-mode-map (kbd "<localleader>'") 'sly)
;; (add-hook 'wdired-mode-hook #'evil-change-to-initial-state)

(evil-global-set-key 'normal (kbd "<leader>p") '+project-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>o") '+open-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>f") '+file-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>b") '+buffer-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>w") '+window-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>d") 'dired)
(evil-global-set-key 'normal (kbd "<leader>g") 'magit)
(evil-global-set-key 'normal (kbd "<leader>Q") 'kmacro-start-macro)
(evil-global-set-key 'normal (kbd "<leader>q") 'kmacro-call-macro)
(evil-global-set-key 'normal (kbd "<leader>r") '+roam-prefix-command)
(evil-global-set-key 'normal (kbd "<leader>/") 'project-find-regexp)


(evil-set-leader '(normal) (kbd "SPC"))
(evil-set-leader '(normal) (kbd "<f4>") t)

(evil-mode)


(use-package yasnippet)

(use-package markdown-mode
  :defer t)
(use-package cider-eval-sexp-fu)


(define-prefix-command '+clojure-localleader-prefix-command)
(define-key '+clojure-localleader-prefix-command (kbd "'") 'cider-jack-in)

(use-package clojure-ts-mode
  :defer t
  :config
  
  (define-key clojure-ts-mode-map (kbd "C-<return>") 'eval-sexp-fu-cider-eval-expression-inner-sexp)
  (define-key clojure-ts-mode-map (kbd "M-<return>") 'eval-sexp-fu-cider-eval-expression-inner-list)
  (define-key clojure-ts-mode-map (kbd "<localleader>xb") 'cider-eval-buffer)

  )

(global-set-key (kbd "<TAB>") 'completion-at-point)

(setq straight-vc-git-default-protocol 'ssh)

(use-package flit
  :straight (flit :type git :host github :repo "tprost/flit.el"))

(global-set-key (kbd "M-i") 'flit-shrink-selection)
(global-set-key (kbd "M-o") 'flit-expand-selection)
(global-set-key (kbd "M-n") 'flit-select-next-sibling)
(global-set-key (kbd "M-p") 'flit-select-prev-sibling)

(use-package org :straight (:type built-in) :defer t

  :config

  (setq org-directory "~/org/")
  (setq org-capture-templates
        (setq org-capture-templates
              '(("i" "Inbox" entry (file+headline "~/org/todo/inbox.org" "Getting Things Done Inbox")
                 "* TODO %?\n  %i")
                ("j" "Journal" entry (file+datetree "~/org/journal.org")
                 "* %?\nEntered on %U\n  %i\n  %a")))

        )

  (require 'org-roam)
  (setq org-roam-directory "~/org/roam")

  (cl-defmethod org-roam-node-slug :around ((node org-roam-node))
    (string-replace "_" "-" (cl-call-next-method)))


  (setq org-roam-dailies-directory "daily/")
  (setq org-roam-dailies-capture-templates
        '(("d" "default" entry
           "* %?"
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n"))))

(define-prefix-command '+roam-prefix-command)
(define-key +roam-prefix-command (kbd "i") 'org-roam-node-insert)
(define-key +roam-prefix-command (kbd "f") 'org-roam-node-find)


;; (map! :leader "rr" #'org-roam-dailies-capture-today) hello
;; (map! :leader "rgd" #'org-roam-dailies-goto-today)
;; (map! :leader "rgy" #'org-roam-dailies-goto-yesterday)
;; (map! :leader "gr" nil)
;; (map! :leader "grd" #'org-roam-dailies-goto-today)
  )
(use-package org-roam :defer t)

(use-package envrc
  :defer t
  :init
  (envrc-global-mode))

(use-package exec-path-from-shell
  :init
  (when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c C-l")
  ;; :hook
  ;; (python-ts-mode . lsp-deferred)
  ;; (clojure-ts-mode . lsp-deferred)
  ;; (clojure-mode . lsp-deferred)

  )


(use-package eval-sexp-fu
  :defer t

  
  :init

  (define-key emacs-lisp-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-sexp)
  (define-key emacs-lisp-mode-map (kbd "M-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
  (define-key emacs-lisp-mode-map (kbd "H-<return>") 'eval-defun)

  (require 'eval-sexp-fu)
  (set-face-attribute 'show-paren-match nil :background nil)

)

(setq compilation-scroll-output t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eval-sexp-fu-flash ((t (:background "gray22"))))
 '(fixed-pitch ((t nil))))


(use-package rust-mode
  :init
  (setq rust-mode-treesitter-derive t))
;; (use-package combobulate
;; :defer t
;; )

;; (require 'combobulate)
