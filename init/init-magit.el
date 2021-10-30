(straight-use-package 'magit)

(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

git-commit-major-mode

(add-hook 'git-commit-mode-hook 'evil-insert-state)

(provide 'init-magit)
