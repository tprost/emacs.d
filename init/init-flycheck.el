(defun flycheck-all-buffers-in-project ()
  "Run flycheck on every buffer that has flycheck-mode enabled."
  (interactive)
  (save-current-buffer
    (dolist (buffer (projectile-project-buffers))
      (set-buffer buffer)
      (if (bound-and-true-p flycheck-mode)
          (flycheck-buffer)))))

(add-hook 'after-save-hook 'flycheck-all-buffers-in-project)

(provide 'init-flycheck)
