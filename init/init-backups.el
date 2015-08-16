;; aggh backups
(setq auto-save-default t)
(setq make-backup-files t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; disable auto-save and auto-backup
(setq auto-save-default nil)

;; because apparently setting auto-save-default just isn't enough
(setq auto-save-interval 0)

(setq make-backup-files nil)
                                        ;disable backup
(setq backup-inhibited t)
                                        ;disable auto save

(setq auto-save-default nil)

(provide 'init-backups)
