(require-package 'js2-mode)

(setq js2-basic-offset 2)
(setq js2-bounce-indent-p nil)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; (require 'js2-refactor)
;; (add-hook 'js2-mode-hook #'js2-refactor-mode)
;; (add-hook 'js2-mode-hook 'jasminejs-mode)

;; (js2r-add-keybindings-with-prefix "C-c C-r")

;; (add-to-list 'load-path "~/.emacs.d/jasminejs-mode")

;; (require 'jasminejs-mode)
;; (setq jasminejs-snippet-path "~/.emacs.d/snippets/jasminejs-mode")
;; (add-hook 'jasminejs-mode-hook (lambda () (yas-activate-extra-mode 'jasminejs-mode)))

(provide 'init-js2-mode)
