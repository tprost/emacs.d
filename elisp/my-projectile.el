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

(defun my--projectile-vterm-name (key)
	(concat "*vterm " (projectile-project-name) "* " name))

(defun my--projectile-initialize-vterm (name)
	(let* ((buffer-name (my--projectile-vterm-name name))
				 (existing-buffer (get-buffer buffer-name)))
   	(if (buffer-live-p existing-buffer) existing-buffer (vterm buffer-name))))

(defun my-projectile-initialize-vterm-with (name command register path)
	(let* ((buffer-name (my--projectile-vterm-name name)))
   	(unless (buffer-live-p (get-buffer buffer-name))
			(let* ((new-vterm-buffer (vterm buffer-name)))
	   		(vterm-send-return)
	   		(vterm-insert (concat "cd " (projectile-project-root)))
    		(vterm-send-return)
				(when path (progn
										(vterm-insert (concat "cd " path))
										(vterm-send-return)))
     		(vterm-send-return)
   			(vterm-insert command)
				(vterm-send-return)
				(when register (buffer-to-projectile-register register))))))

(defun my--projectile-run-command-in-vterm (name command)
	(let* ((b (my--projectile-initialize-vterm name)))
		(with-current-buffer b  	 
		  (vterm-insert command)
  		(vterm-send-return))
		(display-buffer b)))




(defun my--create-vterm-buffer-from-terminal-object (terminal)
	"Make vterm buffer from parsed terminal obj from YAML."
	(message (gethash 'register terminal))
	(my-projectile-initialize-vterm-with (gethash 'name terminal "untitled")
																			 (gethash 'command terminal "ls")
																			 (string-to-char (gethash 'register
																																terminal))
																			 (gethash 'path terminal ".")))

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

(defun my--get-project-workflows ()
	(let* ((workflows-file (concat (projectile-project-root) "workflows.yaml"))
				 (workflows (if (file-exists-p workflows-file)
												(with-temp-buffer
													(insert-file-contents workflows-file)
													(yaml-parse-string (buffer-substring-no-properties
																							(point-min) (point-max)))) '())))
		workflows))
;; (my--get-project-workflows)

(defun my--get-project-workflow (workflow-name)
	(let* ((workflows (my--get-project-workflows)))
		(when workflows (gethash workflow-name workflows))))
;; (my--get-project-workflow 'test)

(defun my--get-project-workflow-command (workflow-name)
  (gethash 'command (my--get-project-workflow workflow-name)))
;; (my--get-project-workflow-command 'test)

(defun my--execute-project-workflow (workflow-name)
  "Look for a workflows.yaml file with a command named WORKFLOW-NAME and if it exists,
   run the command in the appropriate vterm buffer, or in a compilation
   buffer if none is specified."
  (let* ((workflow (my--get-project-workflow workflow-name)))
		(when workflow
			(let* ((command (gethash 'command workflow))
						 (terminal-name (gethash 'terminal workflow)))
				(if terminal-name
						(my--projectile-run-command-in-vterm terminal-name command)
					(let ((default-directory (projectile-project-root)))
						(compile command))))) workflow))

(defun my-test-project ()
	(interactive)
	(unless (my--execute-project-workflow 'test)
    (projectile-test-project t)))

;; (my--projectile-run-command-in-vterm "test" "arstarst")



(defun my-unit-test-project ()
	(interactive)
	(my--execute-project-workflow 'unit))

(defun my-compile-project ()
	(interactive)
	(unless (my--execute-project-workflow 'compile)
		(unless (my--execute-project-workflow 'build)
			(projectile-compile-project t))))

(defun my-run-project ()
	(interactive)
	(unless (my--execute-project-workflow 'run)
		(unless (my--execute-project-workflow 'execute)
			(projectile-run-project t))))



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
