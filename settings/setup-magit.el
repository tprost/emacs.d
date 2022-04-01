(straight-use-package 'magit)

(require 'magit)

(add-hook 'git-commit-mode-hook 'evil-insert-state)

(provide 'setup-magit)
