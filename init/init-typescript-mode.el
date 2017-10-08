(defun my-typescript-mode-hook ()
  ;; enable the stuff you want for C# here
  (auto-complete-mode)
  )

(add-hook 'typescript-mode-hook 'my-typescript-mode-hook)
