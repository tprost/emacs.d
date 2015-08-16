(require-package 'css-mode)

(defun my-css-mode-hook ()
     (local-set-key (kbd "{") 'my-electric-brace))

(add-hook 'css-mode-hook 'my-css-mode-hook)

(provide 'init-css-mode)
