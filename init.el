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

(straight-use-package 'ansi-color)
(straight-use-package 'beacon)
(straight-use-package 'crux)
(straight-use-package 'editorconfig)
(straight-use-package 'jinja2-mode)
(straight-use-package 'make-mode)

;; (straight-use-package 'plantuml-mode)
;; (straight-use-package 'prodigy)
(straight-use-package 'restclient)
;; (straight-use-package 'telephone-line)
(straight-use-package 'which-key)

(require 'which-key)
(which-key-mode)



(require 'init-org)

;; my own shit
(require 'init-utils)

;; bindings
(require 'init-reset-bindings)
(require 'init-bindings)

;; basic config
;; (require 'init-appearance)
(require 'init-backups)
(require 'init-dired)
(require 'init-input)
(require 'init-shell)
(require 'init-variables)
(require 'init-osx)

;; packages
(require 'init-avy)
(require 'init-csharp-mode)
(require 'init-dockerfile-mode)
(require 'init-exec-path-from-shell)
(require 'init-feature-mode)
(require 'init-go-mode)
(require 'init-haxe-mode)

(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-markdown-mode)
(require 'init-miscellaneous)
(require 'init-purpose)
(require 'init-term-mode)
(require 'init-typescript-mode)
(require 'init-yaml-mode)
(require 'init-yasnippet)

;; (telephone-line-mode 1)
(beacon-mode 1)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(require 'init-lua-mode)

(put 'upcase-region 'disabled nil)

(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x l"))
(setq lsp-keymap-prefix "C-x l")

(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)
(require 'lsp-mode)
(add-hook 'lua-mode-hook #'lsp)
(add-hook 'go-mode-hook #'lsp)
(add-hook 'csharp-mode-hook #'lsp)

;; (require 'company-lsp)
(require 'company-yasnippet)

(global-set-key (kbd "C-<tab>") 'company-yasnippet)

(setq special-display-buffer-names
      `(("*compilation*" . ((name . "*compilation*")
                            ,@default-frame-alist
                            (left . (- 1))
                            (top . 0)))))

(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

(straight-use-package 'direnv)
(require 'direnv)

(straight-use-package 'multiple-cursors)
(require 'multiple-cursors)

(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(straight-use-package 'expand-region)
(require 'expand-region)




(straight-use-package 'gitlab-ci-mode)

(direnv-mode)

(require 'init-makefile)
(require 'init-c++-mode)

;; (require 'ccls)
(put 'downcase-region 'disabled nil)

(straight-use-package 'xah-lookup)

(require 'xah-lookup)

(defun tprost-lookup-japanese-wiktionary (&optional @word)
  "Lookup definition of current word or text selection in URL `https://ja.wiktionary.org/'
Version 2017-02-09"
  (interactive)
  (xah-lookup-word-on-internet
   @word
   (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-url )
   (get 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function )))

(put 'tprost-lookup-japanese-wiktionary 'xah-lookup-url "https://ja.wiktionary.org/wiki/word02051")
(put 'tprost-lookup-japanese-wiktionary 'xah-lookup-browser-function xah-lookup-browser-function)

(defun tprost-parse-japanese-wiktionary (&optional @word)
  "Hit https://ja.wiktionary.org and parse the contents"
  
(with-current-buffer (url-retrieve-synchronously "https://ja.wiktionary.org/wiki/test")
  (prog1
      (buffer-string)
    (kill-buffer))))


(require 'init-org-drill)

(defun global-unset-all-super-key ()
  "Will unset any single key in global keymap that has the super
modifier."
  (let ((km (current-global-map)))
    (while km
      (let ((maybe-event (and (listp (car km))
                              (caar km))))
        (if (and (eventp maybe-event) ; Also filters out maybe-event
                                      ; when nil because (car km) was not a list.
                 (memq 'super (event-modifiers maybe-event)))
            (global-unset-key (vector maybe-event))))
      (setq km (cdr km)))))

 ;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
    (defun unfill-paragraph (&optional region)
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive (progn (barf-if-buffer-read-only) '(t)))
      (let ((fill-column (point-max))
            ;; This would override `fill-column' if it's an integer.
            (emacs-lisp-docstring-fill-column t))
        (fill-paragraph nil region)))

(load "~/.emacs.d/tprost.el")
(load "~/.emacs.d/global-bindings.el")
(load "~/.emacs.d/dictionary-api.el")

;; GNU Emacs

(eval-after-load "term"
  '(progn
     (define-key term-raw-map (kbd "C-x") '(lookup-key global-map (kbd "C-x")))))


(setq lsp-clients-lua-language-server-bin "~/.emacs.d/.cache/lsp/lua-language-server/bin/MacOS/lua-language-server")

(straight-use-package 'jinja2-mode)

(require 'jinja2-mode)
