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


(defun my-projectile-run-new-vterm ()
	(interactive)
	(projectile-run-vterm t))

(straight-use-package 'yaml-mode)
(straight-use-package 'yaml)
(require 'yaml-mode)
(require 'yaml)

(defun my-projectile-run-vterm-with (name command register)
	(let* ((buffer-name (concat "*vterm " (projectile-project-name) "* " name)))
		(unless (buffer-live-p (get-buffer buffer-name))
			(let* ((new-vterm-buffer (vterm buffer-name)))
				(vterm-insert command)
				(vterm-send-return)
				(when register (buffer-to-projectile-register register))))))

(defun my--create-vterm-buffer-from-terminal-object (terminal)
	"Make vterm buffer from parsed terminal obj from YAML."
	(message (gethash 'register terminal))
	(my-projectile-run-vterm-with (gethash 'name terminal "untitled")
																(gethash 'command terminal "ls")
																(string-to-char (gethash 'register terminal))))

(defun my-create-vterm-buffers-from-terminals-file ()
	"Parse the .terminals.yaml file in the project root and create vterm buffers."
	(interactive)
	(let* ((terminals-file (concat (projectile-project-root) "terminals.yaml"))
				 (terminals (if (file-exists-p terminals-file)
												(with-temp-buffer
													(insert-file-contents terminals-file)
													(yaml-parse-string (buffer-substring-no-properties
																							(point-min) (point-max)))) '())))

		(mapcar 'my--create-vterm-buffer-from-terminal-object terminals)))




;; (add-hook 'projectile-mode-hook 'my-projectile-ide-hook)
(add-hook 'projectile-after-switch-project-hook
					'my-create-vterm-buffers-from-terminals-file)



;; (lambda ()
;;   (when (and projectile-mode
;;              (not noninteractive)
;;              (not (eq (aref (buffer-name) 0) ?\s))
;;              (projectile-project-p)
;;              (eq (projectile-project-type) 'my-project-type))
;;     (my-function))))

(provide 'my-projectile)
