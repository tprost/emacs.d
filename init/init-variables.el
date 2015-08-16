(setq electric-indent-mode nil)

;; because other people hate spaces I guess
(setq-default indent-tabs-mode t)
(setq-default tab-width 2)
(setq css-indent-offset 2)

;;    (defvaralias 'c-basic-offset 'tab-width)
;;    (defvaralias 'cperl-indent-level 'tab-width)

;; Enable transient mark mode
(transient-mark-mode 1)

(provide 'init-variables)
