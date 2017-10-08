(defun transpose-windows ()
  "Transpose two windows.  If more or less than two windows are visible, error."
  (interactive)
  (unless (= 2 (count-windows))
    (error "There are not 2 windows."))
  (let* ((windows (window-list))
         (w1 (car windows))
         (w2 (nth 1 windows))
         (w1b (window-buffer w1))
         (w2b (window-buffer w2)))
    (set-window-buffer w1 w2b)
    (set-window-buffer w2 w1b)))

(global-set-key (kbd "C-x w s r") 'split-window-right)
(global-set-key (kbd "C-x w s l") 'split-window-left)
(global-set-key (kbd "C-x w s b") 'split-window-below)
(global-set-key (kbd "C-x w s a") 'split-window-below)
(global-set-key (kbd "C-x w b") 'switch-to-buffer-other-window)
(global-set-key (kbd "C-x w o") 'other-window)
(global-set-key (kbd "C-x w d") 'dired-other-window)
(global-set-key (kbd "C-x w 0") 'delete-window)
(global-set-key (kbd "C-x w 1") 'delete-other-windows)
(global-set-key (kbd "C-x w t") 'transpose-windows)

(global-set-key (kbd "s-`") 'other-window)


(provide 'init-windows)
