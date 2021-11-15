(straight-use-package 'evil)

(setq evil-default-state 'emacs)
(setq evil-move-beyond-eol t)

(require 'evil-repeat)
(require 'evil-core)

(evil-mode 1)

(provide 'setup-evil)
