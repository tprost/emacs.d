
(defun my-projectile-run-vterm-dwim (commands &optional name)
 "Create project level vterm and run given command. If buffer with name
  that matches command already, switch to existing buffer."
  (interactive "sCommand: ")
  (let* ((project (projectile-acquire-root))
         (buffer-name (projectile-generate-process-name (or name commands) nil)))
    (unless (buffer-live-p (get-buffer buffer-name))
      (unless (require 'vterm nil 'noerror)
        (error "Package 'vterm' is not available"))
      (projectile-with-default-dir project
        (vterm buffer-name)
        (cond ((stringp commands)
               (vterm-send-string commands)
               (vterm-send-return))         
              ((listp commands)
               (dolist (command commands v)
                 (vterm-send-string command)
                 (vterm-send-return))))))                 
    (switch-to-buffer buffer-name)))

(defun my--is-project-django ()
	(eq (projectile-project-type) 'python-pip))

(defun my-projectile-after-switch-project-hook ()	
	(when (my--is-project-django) (my-setup-django-project))
	(message (symbol-name (projectile-project-type))))

;; (add-hook 'projectile-mode-hook 'my-projectile-ide-hook)
(add-hook 'projectile-after-switch-project-hook 'my-projectile-after-switch-project-hook)

          ;; (lambda ()
          ;;   (when (and projectile-mode
          ;;              (not noninteractive)
          ;;              (not (eq (aref (buffer-name) 0) ?\s))
          ;;              (projectile-project-p)
          ;;              (eq (projectile-project-type) 'my-project-type))
          ;;     (my-function))))

(provide 'my-projectile)
