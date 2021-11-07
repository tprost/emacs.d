(straight-use-package 'evil)

(setq evil-default-state 'monster)
(setq evil-move-beyond-eol t)

(require 'evil-repeat)
(require 'evil-core)

(evil-mode 1)

(provide 'setup-evil)
