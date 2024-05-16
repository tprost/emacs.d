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
(straight-pull-package "melpa")

(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/elisp")


(require 'setup-org-mode)

(require 'setup-appearance)


(require 'setup-defaults)
(require 'setup-tab-bar-mode)
(require 'setup-text-mode)
(require 'setup-emacs-lisp-mode)
(require 'setup-helm)
(require 'setup-projectile)
(require 'projectile-buffer-registers)

(require 'setup-lsp-mode)
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


(require 'setup-yasnippet)
(require 'setup-markdown-mode)
(require 'setup-restclient)

(require 'setup-haskell-mode)
(require 'setup-clojure-mode)
;; (require 'setup-structured-haskell-mode) ;; package cl is deprecated oh no
(require 'setup-rustic-mode)
(require 'setup-haxe-mode)


(require 'setup-miscellaneous)
(require 'stack)

(require 'my-dictionary-functions)
(require 'my-editing)
(require 'my-functions)
(require 'my-projectile)
(require 'my-python-functions)

;; (require 'haskell-stack-mode)

(load-file (expand-file-name "custom.el" user-emacs-directory))

(setq frame-resize-pixelwise t)



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
(straight-use-package 'rust-mode)
(straight-use-package 'helm-make)

(push '("\\*compilation\\*" . (nil (reusable-frames . t))) display-buffer-alist)

(straight-use-package 'aggressive-indent)

(straight-use-package 'helm-swoop)


(setq lsp-enable-automatic-install nil)

(setq display-buffer-alist
      '(("\\*compilation\\*"
         (display-buffer-use-some-frame)
         (inhibit-same-window . t))
				("\\*vterm*"
         (display-buffer-use-some-frame)
         (inhibit-same-window . t))


				
				
				))

(straight-use-package 'csharp-mode)
(straight-use-package 'bazel)

(add-to-list 'auto-mode-alist '("/Tiltfile\\(?:\\..*\\)?\\'" . bazel-starlark-mode))


(straight-use-package 'typescript-mode)

;; ANSI colors for compilation buffers
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region compilation-filter-start (point))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

(straight-use-package 'vue-mode)

(require 'bindings)
(hydra-startup/body)

(straight-use-package 'web-mode)
(straight-use-package 'slime)
(straight-use-package 'sly)

(require 'slime)

(setq inferior-lisp-program "sbcl")
(setq slime-contribs '(slime-fancy quicklisp-systems))
(slime-setup '(slime-fancy slime-quicklisp slime-asdf))

;; (define-key slime-mode-map (kbd "C-<return>") 'slime-eval-defun)

(straight-use-package
 '(slite :host github :repo "tdrhq/slite"))

(require 'slite)
(require 'sly)

(defun slite-run-at-point (&optional raw-prefix-arg)
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

(defun slite-run-at-point-dwim (&optional raw-prefix-arg)
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


(define-key sly-mode-map (kbd "C-<return>") 'sly-eval-defun)
(define-key sly-mode-map (kbd "M-<return>") 'sly-eval-buffer)
(define-key sly-mode-map (kbd "H-<return>") 'slite-run-at-point-dwim)

(define-key slime-mode-map (kbd "C-<return>") 'slime-eval-defun)
(define-key slime-mode-map (kbd "M-<return>") 'slime-eval-buffer)
(define-key slime-mode-map (kbd "H-<return>") 'slite-run-at-point-dwim)

(straight-use-package 'iy-go-to-char)
(straight-use-package 'god-mode)

(require 'god-mode)


