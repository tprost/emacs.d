;; change the prefix for projectile commands
(setq projectile-keymap-prefix (kbd "C-x p"))

(projectile-global-mode)


(require 'helm-projectile)
(helm-projectile-on)

(provide 'init-projectile)
