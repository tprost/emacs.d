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

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-helm)
(require 'init-projectile)
(require 'init-appearance)
(require 'init-company-mode)

(require 'init-lsp-mode)

(require 'init-python)

;; (straight-use-package 'ansi-color)
;; (straight-use-package 'beacon)
;; (straight-use-package 'crux)
;; (straight-use-package 'editorconfig)
;; (straight-use-package 'jinja2-mode)
;; (straight-use-package 'make-mode)

;; ;; (straight-use-package 'plantuml-mode)
;; ;; (straight-use-package 'prodigy)
;; (straight-use-package 'restclient)
;; ;; (straight-use-package 'telephone-line)
;; (straight-use-package 'which-key)

;; (require 'which-key)
;; (which-key-mode)



;; (require 'init-org)

;; my own shit
;; (require 'init-utils)

;; basic config
;; (require 'init-appearance)
;; (require 'init-backups)
;; (require 'init-dired)
;; (require 'init-input)
;; (require 'init-shell)
;; (require 'init-variables)
;; (require 'init-osx)

;; packages
;; (require 'init-avy)
;; (require 'init-csharp-mode)
;; (require 'init-dockerfile-mode)
;; (require 'init-exec-path-from-shell)
;; (require 'init-feature-mode)
;; (require 'init-go-mode)
;; (require 'init-haxe-mode)

;; (require 'init-js2-mode)
;; (require 'init-json-mode)
;; (require 'init-magit)
;; (require 'init-markdown-mode)
;; (require 'init-miscellaneous)
;; (require 'init-purpose)
;; (require 'init-term-mode)
;; (require 'init-typescript-mode)
;; (require 'init-yaml-mode)
;; (require 'init-yasnippet)

;; (telephone-line-mode 1)
;; (beacon-mode 1)

;; (setq custom-file "~/.emacs.d/custom.el")
;; (load custom-file 'noerror)

;; (require 'init-lua-mode)

;; (put 'upcase-region 'disabled nil)

;; ;; (require 'company-lsp)
;; (require 'company-yasnippet)

;; (setq special-display-buffer-names
;;       `(("*compilation*" . ((name . "*compilation*")
;;                             ,@default-frame-alist
;;                             (left . (- 1))
;;                             (top . 0)))))

;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 1)

;; (straight-use-package 'direnv)
;; (require 'direnv)

;; (straight-use-package 'multiple-cursors)
;; (require 'multiple-cursors)

;; (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; (straight-use-package 'expand-region)
;; (require 'expand-region)




;; (straight-use-package 'gitlab-ci-mode)

;; (direnv-mode)

;; (require 'init-makefile)
;; (require 'init-c++-mode)

;; ;; (require 'ccls)
;; (put 'downcase-region 'disabled nil)

;; (straight-use-package 'xah-lookup)

;; (require 'xah-lookup)

;; (defun tprost-lookup-japanese-wiktionary (&optional @word)
;;   "Lookup definition of current word or text selection in URL `https://ja.wiktionary.org/'
;; Version 2017-02-09"
;;   (interactive)
;;   (xah-lookup-word-on-internet
;;    @word
;;    (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-url )
;;    (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function )))

;; (put 'tprost-lookup-japanese-wiktionary 'xah-lookup-url "https://ja.wiktionary.org/wiki/word02051")
;; (put 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function xah-lookup-browser-function)

;; (defun tprost-parse-japanese-wiktionary (&optional @word)
;;   "Hit https://ja.wiktionary.org and parse the contents"
  
;; (with-current-buffer (url-retrieve-synchronously "https://ja.wiktionary.org/wiki/test")
;;   (prog1
;;       (buffer-string)
;;     (kill-buffer))))


;; (require 'init-org-drill)

;; (load "~/.emacs.d/tprost.el")
;; (load "~/.emacs.d/dictionary-api.el")
;; ;; GNU Emac


;; (setq lsp-clients-lua-language-server-bin "~/.emacs.d/.cache/lsp/lua-language-server/bin/MacOS/lua-language-server")

;; (straight-use-package 'jinja2-mode)

;; (require 'jinja2-mode)

;; (straight-use-package 'direnv)
;; (require 'direnv)


;; (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

;; ;; (add-hook 'python-mode-hook 'tprost-python-mode-hook)

;; (setq projectile-project-root-functions  '(projectile-root-local
;;     projectile-root-top-down
;;     projectile-root-bottom-up    
;;     projectile-root-top-down-recurring))

;; (straight-use-package
;;  '(yasnippet-snippets :host github :repo "tprost/yasnippet-snippets"
;;             :branch "main"))

;; (straight-use-package
;;  '(py-autoflake :host github :repo "humitos/py-autoflake.el"
;;             :branch "master"))
;; (straight-use-package 'pyimport)
;; (straight-use-package 'py-isort)


;; (defun tprost-python-mode-add-import (import)
;;   "Add python import to beginning of file."
;;   (interactive "sEnter your import statement: ")
;;   (save-excursion
;;     (beginning-of-buffer)
;;     (insert import)
;;     (electric-newline-and-maybe-indent)
;;     (py-isort-buffer)))

;; ;; (require 'yasnippet-snippets)

;; (require 'python)

;; (elpy-enable)

;; (lsp-define-stdio-client lsp-python "python"
;;                            #'projectile-project-root
(require 'init-reset-bindings)
(load "~/.emacs.d/bindings.el")
(require 'init-bindings)

;;                            '("pyls"))
 


