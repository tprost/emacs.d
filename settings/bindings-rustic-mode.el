

(define-key rustic-mode-map (kbd "H-r") 'lsp-rename)
(define-key rustic-mode-map (kbd "H-j") 'lsp-find-definition)
(define-key rustic-mode-map (kbd "H-i") 'rustic-format-dwim)

(provide 'bindings-rustic-mode)
