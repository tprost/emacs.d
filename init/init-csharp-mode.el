(require-package 'csharp-mode)

(defun my-csharp-mode-hook ()
  ;; enable the stuff you want for C# here
  (omnisharp-mode)
  (local-set-key (kbd "<tab>") 'omnisharp-auto-complete)

  )

(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
