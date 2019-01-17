(straight-use-package 'go-mode)
(straight-use-package 'company-go)

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))

(provide 'init-go-mode)
