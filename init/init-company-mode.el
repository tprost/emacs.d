(straight-use-package 'company)

(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "TAB") 'company-complete)
(global-company-mode)
(add-to-list 'company-backends 'company-yasnippet t)

(provide 'init-company-mode)
