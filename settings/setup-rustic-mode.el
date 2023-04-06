(straight-use-package 'rustic)

(setq rustic-analyzer-command '("rust-analyzer"))
(setq lsp-rust-analyzer-server-command '("rust-analyzer"))
(setq rustic-lsp-server 'rust-analyzer)

(provide 'setup-rustic-mode)
