(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)
(straight-use-package 'helm-lsp)
(straight-use-package 'company-lsp)

(require 'lsp-mode)
(require 'company-lsp)

(push 'company-lsp company-backends)

;; (add-hook 'lua-mode-hook #'lsp)
;; (add-hook 'go-mode-hook #'lsp)
;; (add-hook 'csharp-mode-hook #'lsp)

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
