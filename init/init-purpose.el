(straight-use-package 'window-purpose)
(purpose-mode)

(setq purpose-user-mode-purposes '())
(add-to-list 'purpose-user-mode-purposes
             '(help-mode . testing))
(add-to-list 'purpose-user-mode-purposes
             '(compilation-mode . testing))
(add-to-list 'purpose-user-mode-purposes
             '(term-mode . testing))
(purpose-compile-user-configuration)

(setq purpose-special-action-sequences '())
(add-to-list 'purpose-special-action-sequences
             '(testing
               purpose-display-reuse-window-buffer
               purpose-display-reuse-window-purpose))

(provide 'init-purpose)
