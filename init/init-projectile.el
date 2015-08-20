(add-to-list 'load-path "~/.emacs.d/site-lisp/projectile")

(setq projectile-keymap-prefix (kbd "C-x p"))

(require 'projectile)
(require 'helm-projectile)
;; (require-package 'projectile)
;; (require-package 'helm-projectile)

;; change the prefix for projectile commands

(projectile-global-mode)
(helm-projectile-on)

(provide 'init-projectile)
