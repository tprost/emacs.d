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
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'setup-appearance)


(require 'setup-defaults)
(require 'setup-tab-bar-mode)
(require 'setup-text-mode)
(require 'setup-emacs-lisp-mode)
(require 'setup-helm)
(require 'setup-projectile)
(require 'projectile-buffer-registers)
(require 'setup-company-mode)
(require 'setup-magit)
(require 'setup-dired)
(require 'setup-csv-mode)
;; (require 'setup-term-mode)
;; (require 'setup-defaults)
;; (require 'setup-exec-path-from-shell)

;; languages
(require 'setup-go-mode)
;; (require 'setup-lua-mode)
;; (require 'setup-js2-mode)
(require 'setup-python-mode)
;; (require 'setup-typescript-mode)
;; (require 'setup-c++-mode)

;; file types
;; (require 'setup-dockerfile-mode)
;; (require 'setup-feature-mode)
;; (require 'setup-json-mode)
;; (require 'setup-makefile)
;; (require 'setup-markdown-mode)
;; (require 'setup-yaml-mode)
(require 'setup-flycheck)
(require 'setup-yasnippet)
(require 'setup-ligature)
;; (straight-use-package 'multiple-cursors)
;; (require 'multiple-cursors)
;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; (straight-use-package 'expand-region)
;; (require 'expand-region)

;; (straight-use-package 'which-key)
;; (require 'which-key)
;; (which-key-mode)
;; (require 'setup-avy)
;; (require 'setup-my-global-macros)

;; (load-file (expand-file-name "tprost.el" user-emacs-directory))
;; (load-file (expand-file-name "editing.el" user-emacs-directory))1

(require 'setup-org)
(require 'setup-haskell-mode)
(require 'setup-structured-haskell-mode) ;; package cl is deprecated oh no

(require 'setup-haxe-mode)

(require 'setup-yasnippet)
(require 'setup-lsp-mode)
(require 'setup-markdown-mode)
(require 'setup-haskell-mode)
(require 'setup-restclient)

(require 'setup-miscellaneous)
(require 'stack)
(require 'bindings)

(require 'my-dictionary-functions)
(require 'my-editing)
(require 'my-functions)
(require 'my-projectile)
(require 'my-python-functions)

(require 'haskell-stack-mode)

(load-file (expand-file-name "custom.el" user-emacs-directory))

(setq frame-resize-pixelwise t)

(hydra-startup/body)

;; (global-set-key (kbd "M-`") 'other-window)




(defun afs/org-replace-all-links-by-description (&optional start end)
  "Find all org links and replace by their descriptions."
  (interactive
   (if (use-region-p) (list (region-beginning) (region-end))
     (list (point-min) (point-max))))
  (save-excursion
    (save-restriction
      (narrow-to-region start end)
      (goto-char (point-min))
      (while (re-search-forward org-link-bracket-re nil t)
        (replace-match (match-string-no-properties 
                        (if (match-end 2) 2 1)))))))

(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-default nil)
(put 'downcase-region 'disabled nil)
(straight-use-package 'csound-mode)
