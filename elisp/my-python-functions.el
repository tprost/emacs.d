(defun my-python-send-statement ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (call-interactively 'python-shell-send-region))

(defun my-python-organize-imports ()
  (interactive)
  (pyimport-remove-unused)
  
  ;; (pyimport-insert-missing)
  (py-isort-buffer)
  (whitespace-cleanup))

(define-minor-mode my-django-project-mode
  nil
  ;; :lighter " Django Project"
  :keymap (let ((map (make-sparse-keymap)))
	    (define-key map (kbd "d") 'my-project-docker-compose)
	    (define-key map (kbd "r") 'my-project-django-runserver)	    
	    map)
  ;; :after-hook (my-django-project-setup)
   )

(defun my-project-docker-compose ()
	(interactive)
	(my-projectile-run-vterm-dwim "docker-compose up" "docker"))

(defun my-project-django-runserver ()
	(interactive)
	(my-projectile-run-vterm-dwim
   '("source .venv/bin/activate" "python manage.py runserver") "runserver"))

(defun my-django-project-init-functions ()
  (interactive)
	(message "in django project mode")
	(setq blah "blargh"))
  ;; (nyan-mode 1)
  ;; (setq mode-line-format nil)
  ;; (function-2))

(defun my-django-project-setup ()
  "Set up terminals with appropriate commands for a Django project."
  (interactive)
	(message "setting up Django project layout")
	(my-project-layout)
	(message "setting up Django project")
  (my-project-docker-compose)
	(local-set-key (kbd "C-!") my-django-project-mode-map)	
  (my-project-django-runserver))

(defun my-python-mode-add-import (import)
  "Add python import to beginning of file."
  (interactive "sEnter your import statement: ")
  (save-excursion
    (beginning-of-buffer)
    (insert import)
    (electric-newline-and-maybe-indent)))

(provide 'my-python-functions)
