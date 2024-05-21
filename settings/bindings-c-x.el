
(global-set-key (kbd "C-x") nil)

(global-set-key (kbd "C-x C-a") 'make-frame)
(global-set-key (kbd "C-x a") 'make-frame)

(global-set-key (kbd "C-x C-b") 'helm-buffer-list)
(global-set-key (kbd "C-x b") 'helm-buffer-list)

(global-set-key (kbd "C-x C-s") 'save-buffer)
(global-set-key (kbd "C-x s") 'save-buffer)

(defun set-multiple-key-bindings (key-command-pairs)
  "Set multiple key bindings.
KEY-COMMAND-PAIRS should be a list of cons cells where the car is the key binding and the cdr is the command."
  (dolist (pair key-command-pairs)
    (global-set-key (kbd (car pair)) (cdr pair))))

(set-multiple-key-bindings
 '(("C-x C-a" . make-frame)  
   ("C-x C-b" . helm-buffers-list)
	 ("C-x C-d" . my-dired-dwim)	 
	 ("C-x C-f" . helm-find-files)
	 ("C-x C-c C-f C-p" . find-file-at-point)
	 ("C-x C-g" . magit)
	 ("C-x C-h" . help)	 
   ("C-x C-s" . save-buffer)
	 ("C-x C-w" . hydra-window-management/body)))

(provide 'bindings-c-x)

