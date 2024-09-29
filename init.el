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

(use-package projectile :defer t

  :config
  (projectile-mode +1)
  (setq projectile-completion-system 'default)
  )
(use-package vertico :init (vertico-mode))
(use-package magit :defer t)
(use-package clojure-ts-mode :defer t)
(use-package cider :defer t)

(setq inhibit-startup-screen t)

(disable-theme 't)
(load-theme 'misterioso t)
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

(use-package company
  :defer t)

(defun map! (destination k fn)
  (when (eq destination :n)
    (define-key evil-normal-state-map (kbd k) fn))
   (when (eq destination :i)
    (define-key evil-insert-state-map (kbd k) fn)) (when (eq destination :leader)
    (define-key evil-normal-state-map (kbd (concat " " k)) fn)))

(use-package evil
  :straight (helix :type git :host github :repo "tprost/helix")
  ;; :init
 ;; (require 'evil)      ;
  :config
  (require 'evil)
  (map! :n "u" 'undo)
  (map! :n "i" 'evil-insert-state)
  (map! :n "a" 'evil-append)
  (map! :i "<ESC>" 'evil-normal-state)
  (map! :leader "pp" 'projectile-switch-project)
  (evil-mode 1)
  )

(use-package which-key
  :config
  (which-key-mode)
  
  )

;; ;; (define-key emacs-lisp-mode-map (kbd "<RET>") 'eval-last-sexp)
;; (use-package multiple-cursors
;;   :defer t)

;; (require 'treesit)

;; (use-package ts-movement
;;   :straight (ts-movement :type git :host github :repo "haritkapadia/ts-movement")
;;   :defer t)

;; (require 'ts-movement)


;; (add-to-list
;;  'treesit-language-source-alist
;;  '(python "https://github.com/tree-sitter/tree-sitter-python.git"))
;; (add-to-list
;;  'treesit-language-source-alist
;;  '(lisp "https://github.com/tree-sitter-grammars/tree-sitter-commonlisp"))
