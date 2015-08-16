(require-package 'projectile)
(require-package 'helm-projectile)

;; change the prefix for projectile commands
(setq projectile-keymap-prefix (kbd "C-x p"))

(projectile-global-mode)
;; (helm-projectile-on)

(provide 'init-projectile)
