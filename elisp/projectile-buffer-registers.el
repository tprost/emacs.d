;;; projectile-buffer-registers.el --- Registers that store buffers per project.

;;; Commentary:

;; Store buffers in registers that are unique based on the project you are in.

(straight-use-package 'projectile-variable)

(require 'projectile nil t)
(require 'projectile-variable)

(defun set-projectile-register (register value)
  "Set contents of projectile level register named REGISTER to VALUE. Return
VALUE."
	
	(unless (projectile-variable-get 'registers)
		      (projectile-variable-put 'registers (make-hash-table)))
	(puthash register value (projectile-variable-get 'registers)))	

(defun buffer-to-projectile-register (register)
	"Store current buffer in project level register REGISTER."
	(interactive (list (register-read-with-preview 
                       "Buffer to project level register: " )
                     ))
	(set-projectile-register register (current-buffer)))

(defun buffer-to-projectile-register-noninteractive (register buffer)
	"Store BUFFER in project level register REGISTER."	
	(set-projectile-register register buffer))	
	
(defun switch-to-buffer-in-projectile-register (register)
  (interactive (list (register-read-with-preview
											"Switch to buffer in projectile register: ")))
	(switch-to-buffer (gethash register (projectile-variable-get 'registers))))

(provide 'projectile-buffer-registers)
