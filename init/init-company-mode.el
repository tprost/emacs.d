(straight-use-package 'company)

(setq company-dabbrev-downcase nil)
(add-hook 'after-init-hook 'global-company-mode)
(global-set-key (kbd "TAB") 'company-complete)
(global-company-mode)
(add-to-list 'company-backends 'company-yasnippet t)

;; ;; (require 'company-lsp)
;; (require 'company-yasnippet)

;; (setq special-display-buffer-names
;;       `(("*compilation*" . ((name . "*compilation*")
;;                             ,@default-frame-alist
;;                             (left . (- 1))
;;                             (top . 0)))))

;; (setq company-idle-delay 0)
;; (setq company-minimum-prefix-length 1)

(provide 'init-company-mode)
