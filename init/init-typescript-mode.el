(defun my-typescript-mode-hook ()
  ;; enable the stuff you want for C# here
  (auto-complete-mode)
  (setq typescript-indent-level 2)
   (setq tab-width 2)
  )

(add-hook 'typescript-mode-hook 'my-typescript-mode-hook)
