

;; change the prefix for projectile commands
(setq projectile-keymap-prefix (kbd "C-x p"))

(require 'helm-projectile)

(projectile-global-mode)



(helm-projectile-on)

(provide 'init-projectile)
