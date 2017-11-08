(require-package 'tide)

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(defun my-typescript-mode-hook ()
  ;; enable the stuff you want for C# here
  (auto-complete-mode)
  (setq typescript-indent-level 2)
   (setq tab-width 2))

(add-hook 'typescript-mode-hook 'my-typescript-mode-hook)
(add-hook 'typescript-mode-hook 'setup-tide-mode)
