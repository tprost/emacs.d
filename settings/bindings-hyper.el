
(global-set-key (kbd "H-a") 'helm-lsp-code-actions)
(global-set-key (kbd "H-b") 'helm-projectile-switch-to-buffer)

;; c for cycle, as in, dev cycle
(global-set-key (kbd "H-c") nil)
(global-set-key (kbd "H-c H-t H-t") 'projectile-toggle-between-implementation-and-test)

(global-set-key (kbd "H-f") 'projectile-find-file)
(global-set-key (kbd "H-j") 'helm-semantic-or-imenu)
(global-set-key (kbd "H-l") 'lsp)
(global-set-key (kbd "H-r") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "H-v") 'projectile-run-vterm)
(global-set-key (kbd "H-x") nil)
(global-set-key (kbd "H-x e") 'hydra-emacs/body)

(global-set-key (kbd "H->") 'projectile-next-project-buffer)
(global-set-key (kbd "H-<") 'projectile-previous-project-buffer)

(global-set-key (kbd "H-<return>") 'my-eval-dwim)
(global-set-key (kbd "H-<tab>") 'yas-expand)

(global-set-key (kbd "H-t") 'projectile-test-project)
(global-set-key (kbd "H-t") 'my-test-project)
(global-set-key (kbd "H-$") 'projectile-run-vterm)


(global-set-key (kbd "H-S-v") 'my-projectile-run-new-vterm)




(global-set-key (kbd "H-@") 'projectile-compile-project)

(provide 'bindings-hyper)
