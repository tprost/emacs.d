(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)
(straight-use-package 'helm-lsp)

(require 'lsp-mode)

(advice-add 'lsp :before #'direnv-update-environment)

;; (add-hook 'lua-mode-hook #'lsp)
;; (add-hook 'go-mode-hook #'lsp)
;; (add-hook 'csharp-mode-hook #'lsp)

(global-unset-key (kbd "C-x l"))
(setq lsp-keymap-prefix "C-x l")

;; (local-set-key (kbd "C-c C-j") 'lsp-find-definition)
;;   (local-set-key (kbd "C-c C-x") 'lsp-restart-workspace)
;;   (local-set-key (kbd "C-c C-n") 'lsp-format-buffer)
;;   (local-set-key (kbd "C-c C-o") 'lsp-organize-imports)

(provide 'setup-lsp-mode)
