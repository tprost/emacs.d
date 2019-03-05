(straight-use-package 'haxe-mode)

(require 'haxe-mode)

(defun set-up-haxe-mode ()
  (interactive)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (local-set-key (kbd "TAB") 'company-complete)
  (company-mode +1))

(add-hook 'haxe-mode-hook 'set-up-haxe-mode)

(add-to-list 'auto-mode-alist '("\\.hx\\'" . haxe-mode))

(provide 'init-haxe-mode)

