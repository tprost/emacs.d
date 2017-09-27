(require-package 'csharp-mode)

(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (omnisharp-mode)
  (setq indent-tabs-mode nil)
  (local-set-key (kbd "<tab>") 'omnisharp-auto-complete)
  (local-set-key (kbd "C-x o r") 'omnisharp-run-code-action-refactoring)
  (flycheck-mode))

(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)

(provide 'init-csharp-mode)
