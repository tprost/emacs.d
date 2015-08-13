(ac-config-default)
(global-auto-complete-mode t)

(define-key ac-mode-map (kbd "<tab>") 'auto-complete)
;; (global-set-key (kbd "<tab>") 'smart-tab)
;; (add-to-list 'ac-modes 'org-mode)

(provide 'init-auto-complete)
