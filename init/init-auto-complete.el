(require-package 'auto-complete)

(ac-config-default)
(global-auto-complete-mode t)

(define-key ac-mode-map (kbd "<tab>") 'auto-complete)
(global-set-key (kbd "<tab>") 'ac-expand)
;; (add-to-list 'ac-modes 'org-mode)

(provide 'init-auto-complete)
