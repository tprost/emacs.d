;; (require-package 'scss-mode)

;; (require 'scss-mode)

;; ;; (autoload 'scss-mode "scss-mode")

;; (add-to-list 'auto-mode-alist '("\\.css\\'" . scss-mode))
;; (add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; ;; (set-face-attribute 'scss-variable nil :foreground "orange")

(setq scss-compile-at-save nil)

(provide 'init-scss-mode)
