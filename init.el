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
(require 'init-emms)

(require 'init-hz2py)
(require 'init-chinese-conv)
(require 'init-pinyin-convert)

(require 'init-cmake-mode)
;; (require 'init-goldendict)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; TODO
;; super (alt) + f is format document
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

 (defun transpose-windows ()
   "Transpose two windows.  If more or less than two windows are visible, error."
   (interactive)
   (unless (= 2 (count-windows))
     (error "There are not 2 windows."))
   (let* ((windows (window-list))
          (w1 (car windows))
          (w2 (nth 1 windows))
          (w1b (window-buffer w1))
          (w2b (window-buffer w2)))
     (set-window-buffer w1 w2b)
     (set-window-buffer w2 w1b)))


;; TODO
;; make a "copy current buffer name to clipboard"

;; TODO
;; yasnippet for a c sharp function
;; yasnippet for a c sharp for each

;; TODO
;; flycheck should refresh when I switch back to a buffer

;; TODO
;; a way to quickly mark a for loop


;; (require 'org-player) 


;; TODO make csproj open in xml mode

;; TODO hotkey for dired mode in Downloads folder


