(straight-use-package 'go-mode)
(straight-use-package 'go-rename)
(straight-use-package 'godoctor)
(straight-use-package 'company-go)

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key "C-c C-a" 'go-import-add)
                          (local-set-key "C-c C-i" 'go-goto-imports)
                          ;; (local-set-key "C-c C-i" 'go-remove-unused-imports) use goimports or organize-imports
                          
                          
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(provide 'init-go-mode)
