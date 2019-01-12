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

(require 'init-org)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; my own shit
(require 'init-utils)

;; bindings
(require 'init-reset-bindings)
(require 'init-bindings)

;; basic config
(require 'init-appearance)
(require 'init-backups)
(require 'init-dired)
(require 'init-input)
(require 'init-shell)
(require 'init-variables)
(require 'init-osx)

;; packages
(require 'init-ace-jump-mode)
(require 'init-company-mode)
(require 'init-exec-path-from-shell)
(require 'init-helm)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)
(require 'init-markdown-mode)
(require 'init-miscellaneous)
(require 'init-projectile)
(require 'init-typescript-mode)
(require 'init-yaml-mode)

;; (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;; (add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
;; (put 'upcase-region 'disabled nil)

;; (require 'init-bongo)
;; (require 'init-chinese-conv)
;; (require 'init-cider)
;; (require 'init-clojure-mode)
;; (require 'init-cmake-mode)
;; (require 'init-csharp-mode)
;; (require 'init-css-mode)
;; (require 'init-emmet-mode)
;; (require 'init-flycheck)
;; (require 'init-god-mode)
;; (require 'init-goldendict)
;; (require 'init-haxe-mode)
;; (require 'init-hz2py)
;; (require 'init-jade-mode)
;; (require 'init-omnisharp)
;; (require 'init-org)
;; (require 'init-org)
;; (require 'init-org-drill)
;; (require 'init-paredit)
;; (require 'init-pinyin-convert)
;; (require 'init-powerline)
;; (require 'init-python-mode)
;; (require 'init-rvm)
;; (require 'init-scss-mode)
;; (require 'init-string-inflection)
;; (require 'init-web-mode)
;; (require 'init-windows)
;; (require 'init-zop-to-char)

;; ;; TODO
;; ;; org 8.2.10 + org-drill 2.4.1 seems to be stable
;; ;; super (alt) + f is format document


;; ;; TODO a way to quickly mark a for loop
;; ;; that's better than just expand region
;; ;; or C-M-h
;; (global-set-key (kbd "C-@") 'er/expand-region)

;; ;; TODO hotkey for creating a feature branch off of develop based on JIRA tag and name
;; ;; TODO include csv-mode

;; ;; easier hotkeys for switch to wdired mode and out

;; ;; TODO make shell use up arrow key for previous command
;; ;; TODO find and remember command to start an additional shell
;; ;; TODO tab in shell mode should autocomplete

;; ;; TODO find and remember commands to resize frame

;; (defun shell-with-name (name)
;;   "Start a shell with a name that we get from the user."
;;   (interactive "sEnter the name of the shell you want: ")
;;   (shell name))

;; (global-set-key (kbd "C-x M") 'shell-with-name)

;; (put 'downcase-region 'disabled nil)

;; (global-set-key (kbd "C-x f") 'fill-region)

;; (require 'init-yasnippet)

;; ;; TODO write an smart import function
