;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; web-beautify
;; (require 'web-beautify)
;; (eval-after-load 'js2-mode
;;   '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
;; (eval-after-load 'js-mode
;;   '(define-key js-mode-map (kbd "C-c b") 'web-beautify-js))

(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)

(js2r-add-keybindings-with-prefix "C-c C-r")

(add-to-list 'load-path "~/.emacs.d/jasminejs-mode")

(require 'jasminejs-mode)
(setq jasminejs-snippet-path "~/.emacs.d/snippets/jasminejs-mode")
(add-hook 'jasminejs-mode-hook (lambda () (yas-activate-extra-mode 'jasminejs-mode)))
