(straight-use-package 'typescript-mode)
(straight-use-package 'tide)

(defun set-up-typescript-mode ()
  (interactive)
  (tide-setup)
  ;; (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1)
  (setq typescript-indent-level 2)
  (setq js-indent-level 2)
  (setq tab-width 2)
  (local-set-key (kbd "C-c r f") 'tide-refactor)
  (local-set-key (kbd "C-c f") 'tide-fix)
  (local-set-key (kbd "C-c r s") 'tide-rename-symbol)
  (local-set-key (kbd "C-c C-j") 'tide-jump-to-definition)
  (local-set-key (kbd "C-c j d") 'tide-jump-to-definition)
  (local-set-key (kbd "C-c j i") 'tide-jump-to-implementation)
  (local-set-key (kbd "C-c n r") 'tide-find-next-reference))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
;; (add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook 'set-up-typescript-mode)

(provide 'init-typescript-mode)
