(straight-use-package 'vterm)

(require 'vterm)

(define-key vterm-mode-map (kbd "<f1>") nil)
(define-key vterm-mode-map (kbd "<f2>") nil)
(define-key vterm-mode-map (kbd "<f3>") nil)

(define-key vterm-mode-map (kbd "C-m") 'vterm-send-return)
(define-key vterm-mode-map (kbd "<C-m>") 'vterm-send-return)

(define-key vterm-mode-map (kbd "M-k") 'kill-current-buffer)
(define-key vterm-mode-map (kbd "M-b") 'helm-buffer-list)

(provide 'bindings-vterm)
