(define-key csharp-mode-map (kbd "H-r") 'lsp-rename)
(define-key csharp-mode-map (kbd "H-r") 'lsp-rename)
(define-key csharp-mode-map (kbd "H-j") 'lsp-find-definition)

(define-key csharp-mode-map (kbd "H-a") 'c-beginning-of-defun)
(define-key csharp-mode-map (kbd "H-e") 'c-end-of-defun)
(define-key csharp-mode-map (kbd "H-p") 'c-beginning-of-defun)
(define-key csharp-mode-map (kbd "H-n") 'c-end-of-defun)

(define-key csharp-mode-map (kbd "C-M-a") 'beginning-of-buffer)
(define-key csharp-mode-map (kbd "C-M-e") 'end-of-buffer)

(provide 'bindings-csharp-mode)
