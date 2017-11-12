;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

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

;; package stuff
(require 'init-elpa)

;; all the melpa-stable things
(require 'init-ace-jump-mode)
(require 'init-auto-complete)
(require 'init-bongo)
(require 'init-clojure-mode)
(require 'init-cider)
(require 'init-css-mode)
(require 'init-emmet-mode)
(require 'init-exec-path-from-shell)
(require 'init-helm)
(require 'init-jade-mode)
(require 'init-js2-mode)
(require 'init-json-mode)
(require 'init-magit)


(require 'init-osx)
(require 'init-paredit)
(require 'init-projectile)
(require 'init-python-mode)
(require 'init-rvm)
(require 'init-scss-mode)
(require 'init-smart-mode-line)
(require 'init-web-mode)
(require 'init-csharp-mode)
(require 'init-omnisharp)

(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))

(require 'init-markdown-mode)

;; (require 'init-yasnippet)
;; (require 'init-god-mode)
;; (require 'init-org)
;; (require 'init-zop-to-char)

;; org 8.2.10 + org-drill 2.4.1 seems to be stable
(require 'init-org-drill)
(require 'init-org)

(require 'init-hz2py)
(require 'init-chinese-conv)
(require 'init-pinyin-convert)

(require 'init-cmake-mode)
;; (require 'init-goldendict)
(put 'upcase-region 'disabled nil)

;; TODO
;; super (alt) + f is format document
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'init-windows)
(require 'init-miscellaneous)

(require 'init-flycheck)

(require 'init-string-inflection)


;; TODO a way to quickly mark a for loop
;; that's better than just expand region
;; or C-M-h
(global-set-key (kbd "C-@") 'er/expand-region)

;; TODO hotkey for creating a feature branch off of develop based on JIRA tag and name

;; TODO include yaml mode
;; TODO include csv-mode

;; easier hotkeys for switch to wdired mode and out

;; TODO make shell use up arrow key for previous command
;; TODO find and remember command to start an additional shell
;; TODO tab in shell mode should autocomplete

;; TODO find and remember commands to resize frame

;; require `ag`
;; TODO I don't want to have to constantly be running `cleanup-buffer`


(defun shell-with-name (name)
  "Start a shell with a name that we get from the user."
  (interactive "sEnter the name of the shell you want: ")
  (shell name))

(global-set-key (kbd "C-x M") 'shell-with-name)

(put 'downcase-region 'disabled nil)

(global-set-key (kbd "C-x f") 'fill-region)

