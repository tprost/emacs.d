(straight-use-package 'js2-mode)

(setq js2-basic-offset 2)
(setq js2-bounce-indent-p nil)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(defun my-js2-mode-hook ()
(setq tab-width 2)
  (setq js2-basic-offset 2))

(add-hook 'js2-mode-hook 'my-js2-mode-hook)

;; (require 'js2-refactor)
;; (add-hook 'js2-mode-hook #'js2-refactor-mode)
;; (add-hook 'js2-mode-hook 'jasminejs-mode)

;; (js2r-add-keybindings-with-prefix "C-c C-r")

;; (add-to-list 'load-path "~/.emacs.d/jasminejs-mode")

;; (require 'jasminejs-mode)
;; (setq jasminejs-snippet-path "~/.emacs.d/snippets/jasminejs-mode")
;; (add-hook 'jasminejs-mode-hook (lambda () (yas-activate-extra-mode 'jasminejs-mode)))

;; (set-face-attribute 'column-marker-1 nil :background "#111111")

(setq js2-missing-semi-one-line-override t)
(setq js2-strict-missing-semi-warning nil)

(provide 'init-js2-mode)
