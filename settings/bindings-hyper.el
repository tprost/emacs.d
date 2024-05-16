
(global-set-key (kbd "H-c") 'helm-lsp-code-actions)
(global-set-key (kbd "H-f") 'forward-sexp)
(global-set-key (kbd "H-j") 'helm-semantic-or-imenu)
(global-set-key (kbd "H-l") 'lsp-lens-mode)
(global-set-key (kbd "H-t") 'projectile-toggle-between-implementation-and-test)
(global-set-key (kbd "H-x") 'helm-M-x)
(global-set-key (kbd "H-b") 'helm-projectile-switch-to-buffer)
(global-set-key (kbd "H->") 'projectile-next-project-buffer)
(global-set-key (kbd "H-<") 'projectile-previous-project-buffer)

(global-set-key (kbd "H-<return>") 'my-eval-dwim)
(global-set-key (kbd "H-<tab>") 'yas-expand)

(global-set-key (kbd "H-!") 'projectile-test-project)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-M-$") 'my-projectile-run-new-vterm)
(global-set-key (kbd "H-@") 'projectile-compile-project)

(provide 'bindings-hyper)
