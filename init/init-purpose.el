(straight-use-package 'window-purpose)
(purpose-mode)

(add-to-list 'purpose-user-mode-purposes
             '(help-mode . status))
(add-to-list 'purpose-user-mode-purposes
             '(compilation-mode . status))             
(purpose-compile-user-configuration)

(setq purpose-special-action-sequences '())
(add-to-list 'purpose-special-action-sequences
             '(status
               purpose-display-reuse-window-buffer
               purpose-display-reuse-window-purpose))

(provide 'init-purpose)
