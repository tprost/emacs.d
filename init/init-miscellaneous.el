(defun copy-buffer-file-name-with-path ()
  "Copy the full path of the current buffer."
  (interactive)
  (kill-new
   (buffer-file-name
    (window-buffer (minibuffer-selected-window)))))

(defun copy-buffer-file-name-without-path ()
  "Copy the full path of the current buffer."
  (interactive)
  (kill-new
   (file-name-nondirecotry
    (buffer-file-name
     (window-buffer (minibuffer-selected-window))))))

(global-set-key (kbd "C-x M-w b b") 'copy-buffer-file-name-with-path)
(global-set-key (kbd "C-x M-w b w") 'copy-buffer-file-name-without-path)

;; TODO hotkey for dired mode in Downloads folder
(defun dired-in-downloads-directory ()
  (interactive)
  (dired "~/Downloads"))

(global-set-key (kbd "C-x D") 'dired-in-downloads-directory)

(provide 'init-miscellaneous)
