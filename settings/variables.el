


;; okay okay auto-save and backups
(setq auto-save-default t)
(setq make-backup-files t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; 
(setq electric-indent-mode nil)

;; because other people hate spaces I guess
(setq-default indent-tabs-mode t)
(setq-default tab-width 2)
(setq css-indent-offset 2)

;;    (defvaralias 'c-basic-offset 'tab-width)
;;    (defvaralias 'cperl-indent-level 'tab-width)

;; Enable transient mark mode
(transient-mark-mode 1)
