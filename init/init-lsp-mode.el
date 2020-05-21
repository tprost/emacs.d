(straight-use-package 'lsp-mode)

(global-unset-key (kbd "C-x l"))
(setq lsp-keymap-prefix "C-x l")

(define-key lsp-command-map (kbd "r") 'lsp-rename)
(define-key lsp-command-map (kbd "o") 'lsp-organize-imports)

;; (local-set-key (kbd "C-c C-j") 'lsp-find-definition)
;;   (local-set-key (kbd "C-c C-x") 'lsp-restart-workspace)
;;   (local-set-key (kbd "C-c C-n") 'lsp-format-buffer)
;;   (local-set-key (kbd "C-c C-o") 'lsp-organize-imports)

(require 'lsp-mode)

(provide 'init-lsp-mode)
