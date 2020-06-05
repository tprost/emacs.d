(straight-use-package 'window-purpose)



(purpose-mode)

(define-key purpose-mode-map (kbd "C-x C-f") nil)
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

;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)
;; (defun tprost-purpose-mode-hook ()

;; (define-key purpose-mode-map (kbd "C-x C-f") nil)  
;;   (local-unset-key (kbd "C-x C-f")))

;; (add-hook 'purpose-mode-hook 'tprost-purpose-mode-hook)



(provide 'init-purpose)
