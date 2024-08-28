;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(load! "config-rice.el")

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

;; (elpaca (elfmt :host github :repo "riscy/elfmt" :main "elfmt.el") (require 'elfmt))

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode)
                               (python-mode . python-ts-mode)))
(defun is-macosx ()
  (eq system-type 'darwin))

;;; add to ~/.doom.d/config.el
(setq doom-leader-key "<SPC>"
      doom-localleader-key "<SPC> m")

(load! "evilisp.el")

(load! "config-evil.el")
(load! "config-clojure.el")
(load! "config-emacs-lisp.el")

;; disable smartparens everywhere
(after! smartparens
  (remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)

  (smartparens-global-mode -1))
(use-package! envrc)
(after! envrc
  (envrc-global-mode))
(after! exec-path-from-shell
  (when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))




(load! "config-common-lisp.el")
(load! "config-magit.el")

(use-package! redshank)
(use-package! slime)


(after! redshank
  (require 'redshank))
(defun +extract-to-common-lisp-function (name)
  "Extract the current region into a new Common Lisp function with NAME."
  (interactive "sEnter the name of the new function: ")
  (let ((start (region-beginning))
        (end (region-end))
        (defun-name (read-from-string (concat name "()"))))
    (if (use-region-p)
        (progn
          ;; Replace the region with a function call
          (kill-region start end)
          (insert (format "%s" defun-name))

          ;; Go to the beginning of the current defun and insert the new function
          (save-excursion

            (beginning-of-defun)
            (insert "(defun ")
            (insert defun-name)
            (insert "()")


            (yank)
            (insert ")")
            )
          (message "No region selected.")))))
