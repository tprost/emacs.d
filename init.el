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

(setq straight-use-package-by-default t)

(use-package vertico :init (vertico-mode))
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

;; (defun map! (destination key fn)
;;   (when (eq destination :leader)
;;     (meow-leader-define-key '(key . fn))
;;     (message "derp")))

;; (map! :leader "fn" #'+find-nixos-configuration-file)
(setq ring-bell-function 'ignore)
(setq visible-bell t)

;; Optionally use the `orderless' completion style.
(use-package orderless
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

;; (defun map! (destination k fn)
;;   (when (eq destination :n)
;;     (define-key evil-normal-state-map (kbd k) fn))
;;    (when (eq destination :i)
;;      (define-key evil-insert-state-map (kbd k) fn))
;;    (when (eq destination :leader)
;;     (define-key evil-normal-state-map (kbd (concat " " k)) fn)))


;;   ;; :init
;;  ;; (require 'evil)      ;
;;   :config
;;   (require 'evil)
;;   (map! :n "u" 'undo)
;;   (map! :n "i" 'evil-insert-state)
;;   (map! :n "a" 'evil-append)
;;   (map! :n "C" 'evil-copy-selection-on-next-line)
;;   (map! :n "w" 'evil-move-next-word-start)
;;   (map! :n "e" 'evil-move-next-word-end)
;;   (map! :n "b" 'evil-move-prev-word-start)
;;   (map! :n "d" 'evil-delete-selection)
;;   (map! :n "o" 'evil-open-below)
;;   (map! :n ";" 'evil-collapse-selection)
;;   (map! :i "<ESC>" 'evil-normal-state)
;;   (map! :leader "pp" 'projectile-switch-project) 
;;   ;; (map! :leader "of" 'make-frame) 
;;   (evil-mode 1))

(which-key-mode)

;; (define-key emacs-lisp-mode-map (kbd "<RET>") 'eval-last-sexp)
(use-package multiple-cursors
  :defer t
  :config
  (require 'multiple-cursors))


(require 'treesit)
(defun mp-setup-install-grammars ()
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
           (json-mode . json-ts-mode)
           (js-json-mode . json-ts-mode)))
  (add-to-list 'major-mode-remap-alist mapping))
(mp-setup-install-grammars)

;; (defvar +project-map (make-sparse-keymap)
;;   "A keymap for my Project prefix commands.")

(define-prefix-command '+project-prefix-command)
(define-key +project-prefix-command (kbd "p") 'project-switch-project)
(define-key +project-prefix-command (kbd "f") 'project-find-file)
(define-key +project-prefix-command (kbd "b") 'project-switch-to-buffer)

(define-prefix-command '+open-prefix-command)
(define-key +open-prefix-command (kbd "f") 'make-frame)

(define-prefix-command '+file-prefix-command)
(define-key +file-prefix-command (kbd "f") 'find-file)

(define-prefix-command '+buffer-prefix-command)
(define-key +buffer-prefix-command (kbd "b") 'list-buffers)
(define-key +buffer-prefix-command (kbd "p") 'previous-buffer)
(define-key +buffer-prefix-command (kbd "n") 'next-buffer)

(use-package meow
  :straight (meow :type git :host github :repo "tprost/helix" :files ("*.el" "tutor.txt"))
:init
(defun meow-setup ()
  (setq meow-cheatsheet-layout meow-cheatsheet-layout-qwerty)
  (meow-motion-overwrite-define-key
   '("j" . meow-next)
   '("k" . meow-prev)
   '("<escape>" . ignore))
  (meow-leader-define-key
   ;; SPC j/k will run the original command in MOTION state.
   '("j" . "H-j")
   '("k" . "H-k")
   ;; Use SPC (0-9) for digit arguments.
   '("p" . +project-prefix-command)
   '("o" . +open-prefix-command)
   '("f" . +file-prefix-command)
   '("b" . +buffer-prefix-command)
   ;; '("g" . magit)

   '("/" . meow-keypad-describe-key)
   '("?" . meow-cheatsheet))
  (meow-normal-define-key
   '("0" . meow-digit-argument)
   '("9" . meow-digit-argument)
   '("8" . meow-digit-argument)
   '("7" . meow-digit-argument)
   '("6" . meow-digit-argument)
   '("5" . meow-digit-argument)
   '("4" . meow-digit-argument)
   '("3" . meow-digit-argument)
   '("2" . meow-digit-argument)
   '("1" . meow-digit-argument)
   '("-" . negative-argument)
   '(";" . meow-reverse)
   '("," . meow-inner-of-thing)
   '("." . meow-bounds-of-thing)
   '("[" . meow-beginning-of-thing)
   '("]" . meow-end-of-thing)
   '("a" . meow-append)
   '("A" . meow-insert-at-line-end)
   '("b" . meow-move-prev-word-start)
   '("B" . meow-back-symbol)
   '("c" . meow-change)
   '("d" . meow-delete-selection)
   '("D" . meow-backward-delete)
   '("e" . meow-move-next-word-end)
   '("E" . meow-next-symbol)
   '("f" . meow-find)
   '(";" . meow-cancel-selection)
   '("G" . meow-grab)
   '("h" . meow-left)
   '("H" . meow-left-expand)
   '("i" . meow-insert)
   '("I" . meow-insert-at-line-start)
   '("j" . meow-next)
   '("J" . meow-next-expand)
   '("k" . meow-prev)
   '("K" . meow-prev-expand)
   '("l" . meow-right)
   '("L" . meow-right-expand)
   '("m" . meow-join)
   '("n" . meow-search)
   '("o" . meow-open-below)
   '("O" . meow-open-above)
   '("p" . meow-yank)
   '("q" . meow-quit)
   '("Q" . meow-goto-line)
   '("r" . meow-replace)
   '("R" . meow-swap-grab)
   '("s" . meow-kill)
   '("t" . meow-till)
   '("u" . meow-undo)
   '("U" . meow-redo)
   '("v" . meow-visit)
   '("w" . meow-move-next-word-start)
   '("W" . meow-mark-symbol)
   '("x" . meow-line)
   '("X" . meow-goto-line)
   '("y" . meow-save)
   '("Y" . meow-sync-grab)
   '("z" . meow-pop-selection)
   '("'" . repeat)
   '("<escape>" . ignore)))

(require 'meow)
(meow-setup)
(meow-global-mode 1)
)

(use-package markdown-mode
  :defer t)

(use-package clojure-ts-mode
  :defer t)

(global-set-key (kbd "<TAB>") 'completion-at-point)

(defun mark-node ()
  (interactive)
  (let ((node (treesit-node-at (point))))
    (set-mark (treesit-node-start node))
    (goto-char (treesit-node-end node))))


(defun mark-parent ()
  (interactive)
  (let* ((node (treesit-node-at (point)))
	 (parent (treesit-node-parent (treesit-node-parent node))))
    
    ;; (when (treesit-node-eq node parent)
    ;;   (error "node at point is same as parent?"))
    (if (not parent)
	(error "node has no parent")
      
      (set-mark (treesit-node-start parent))
      (goto-char (treesit-node-end parent)))))


(use-package org :straight (:type built-in) :defer t)

(use-package eval-sexp-fu
  :defer t
  :init

  (define-key emacs-lisp-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-sexp)
  (define-key emacs-lisp-mode-map (kbd "M-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
  (define-key emacs-lisp-mode-map (kbd "H-<return>") 'eval-defun)

  ;; (require 'eval-sexp-fu)

  )

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
 '(eval-sexp-fu-flash ((t (:background "gray22")))))
