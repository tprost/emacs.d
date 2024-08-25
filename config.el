;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

(setq doom-font (font-spec :family "PragmataPro Mono" :size 16))


;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-horizon)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(use-package! eval-sexp-fu)
(use-package! slite)

;; (elpaca (elfmt :host github :repo "riscy/elfmt" :main "elfmt.el") (require 'elfmt))
(after! evil
  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "t") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "s") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "S") nil)

  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "k") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "K") nil)

  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
  (define-key evil-motion-state-map (kbd "f") 'evil-previous-line)
  (define-key evil-motion-state-map (kbd "F") 'evil-lookup)
  (define-key evil-motion-state-map (kbd "s") 'evil-next-line)
  (define-key evil-normal-state-map (kbd "S") 'evil-join)
  ;; (evil-define-key 'normal 'global (kbd  "s") 'evil-next-line)
  (define-key evil-normal-state-map (kbd "J") nil)
  (define-key evil-normal-state-map (kbd "T") nil)
  (define-key evil-motion-state-map (kbd "T") nil)
  (define-key evil-normal-state-map (kbd "R") nil)
  (define-key evil-motion-state-map (kbd "R") nil)
  ;; T is a would-be motion-state window command
  (define-key evil-motion-state-map (kbd "t") 'evil-forward-char)
  ;; R is a would-be motion-state window command

  (define-key evil-motion-state-map (kbd "r") 'evil-backward-char)

  ;; t
  (define-key evil-motion-state-map (kbd "h") 'evil-find-char-to)
  (define-key evil-motion-state-map (kbd "H") 'evil-find-char-to-backward)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "h") 'evil-snipe-t)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "H") 'evil-snipe-T)

  ;; f
  (define-key evil-motion-state-map (kbd "j") 'evil-find-char)
  (define-key evil-motion-state-map (kbd "J") 'evil-find-char-backward)

  ;; s
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "j") 'evil-snipe-s)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "J") 'evil-snipe-S)
  (define-key evil-normal-state-map (kbd "k") 'evil-substitute)
  (define-key evil-normal-state-map (kbd "K") 'evil-change-whole-line)

  ;; r
  (define-key evil-normal-state-map (kbd "l") 'evil-replace)
  (define-key evil-normal-state-map (kbd "L") 'evil-enter-replace-state)
  (define-key evil-normal-state-map (kbd "r") nil)
  (define-key evil-normal-state-map (kbd "s") nil)
  (evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state))

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode)
                               (python-mode . python-ts-mode)))
(map! :localleader
      :map (clojure-lisp-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("d" . "debug")
               "f" #'+emacs-lisp/edebug-instrument-defun-on
               "F" #'+emacs-lisp/edebug-instrument-defun-off)
      (:prefix ("e" . "eval")
               "b" #'eval-buffer
               "d" #'eval-defun
               "p" #'eval-sexp-fu-eval-sexp-inner-list
               "e" #'eval-sexp-fu-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'eval-region
               "l" #'load-library)
      (:prefix ("g" . "goto")
               "f" #'find-function
               "v" #'find-variable
               "l" #'find-library))



(use-package! evil-cleverparens)
(after! evil-cleverparens
  (require 'evil-cleverparens-text-objects)

  (add-to-list 'evil-cp-additional-movement-keys '("R" . evil-cp-backward-sexp))
  (add-to-list 'evil-cp-additional-movement-keys '("T" . evil-cp-forward-sexp))

  (setq evil-cp-additional-movement-keys
        (assoc-delete-all "H" evil-cp-additional-movement-keys))
  (setq evil-cp-additional-movement-keys
        (assoc-delete-all "L" evil-cp-additional-movement-keys))
  (evil-cp-set-additional-movement-keys))

(load! "evilisp.el")

(load! "config-clojure.el")
(load! "config-emacs-lisp.el")

;; disable smartparns everywhere
(after! smartparens
  (remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)
  (remove-hook 'lisp-mode-hook #'smartparens-global-mode)

  (smartparens-global-mode -1))

(after! evil
  (evil-define-key 'visual 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'visual 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state))
(use-package! envrc)
(after! envrc
  (envrc-global-mode))
(after! exec-path-from-shell
  (when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))

(load! "config-rice.el")

(use-package! expand-region)


(load! "config-common-lisp.el")


(defun +expand-region-to-parent ()
  "Expand the region to the parent form in Lisp."
  (interactive)
  (er/expand-region 2))

;; (use-package! bind-map)
;; (use-package! evil-lisp-state
;;   (after! evil-lisp-state

;;     (evil-lisp-state-leader "z")))
(defun +clean-up-trailing-parentheses ()
  "Remove any whitespace between the last symbol in a defun and the closing parenthesis."
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (evil-cp-end-of-defun)                                    ; Move to the end of the defun
    (backward-char)                     ; Move back over the last symbol
    (while (looking-at "[ \t\n]")       ; While there's whitespace
      (delete-char 1)
      (backward-char))                  ; Delete the whitespace
    (message "Trailing parentheses cleaned up!")))

