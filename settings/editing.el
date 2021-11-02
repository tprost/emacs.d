(defun my-scroll-8-lines-down ()
  (interactive)
  (scroll-down-line 8))

(defun my-scroll-8-lines-up ()
  (interactive)
  (scroll-up-line 8))

(defun my-mark-current-line ()
  "Select the current line and move the cursor by ARG lines IF
no region is selected.

If a region is already selected when calling this command, only move
the cursor by ARG lines."
  (interactive)
  (my-mark-current-line-and-forward-line 0)
  (end-of-line))


(defun my-mark-current-line-and-forward-line (arg)
  "Select the current line and move the cursor by ARG lines IF
no region is selected.

If a region is already selected when calling this command, only move
the cursor by ARG lines."
  (interactive "p")
  (when (not (use-region-p))
    (forward-line 0)
    (set-mark-command nil))
  (forward-line arg))

(defun my-skip-to-next-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-forward " >")
    (unless (search-forward-regexp "^\\s *$" nil t)
      (goto-char (point-max)))))

(defun my-skip-to-previous-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-backward " >")
    (unless (search-backward-regexp "^\\s *$" nil t)
      (goto-char (point-min)))))

(defun my-set-frame-size-to-80-36 ()
  (interactive)
  (when window-system (set-frame-size (selected-frame) 80 36)))

(defun my-open-line-below-and-move ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun my-open-line-below ()
  (interactive)
  (save-excursion    
    (end-of-line)    
    (newline)
    (indent-for-tab-command)))

(defun my-open-line-above-and-move ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(defun my-open-line-above ()
  (interactive)
  (save-excursion
    (beginning-of-line)
    (newline)
    (forward-line -1)
    (indent-for-tab-command)))

(defun my-tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

(defun my-untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun my-indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun my-cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (if indent-tabs-mode (tabify-buffer) (untabify-buffer))
  (delete-trailing-whitespace)
  (indent-buffer))


;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun my-rename-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))

(defun my-electric-brace (arg)
  "Automatically add a closing '}' for every '{' inserted."
  (interactive "*P")
  (let ((count (prefix-numeric-value arg)))
    (self-insert-command count)
    (save-excursion
      (insert-char ?} count))))


(defun my-toggle-kbd-macro-recording-on ()
  "One-key keyboard macros: turn recording on."
  (interactive)
  (define-key global-map (this-command-keys)
    'toggle-kbd-macro-recording-off)
  (start-kbd-macro nil))

(defun my-toggle-kbd-macro-recording-off ()
  "One-key keyboard macros: turn recording off."
  (interactive)
  (define-key global-map (this-command-keys)
    'toggle-kbd-macro-recording-on)
  (end-kbd-macro))

(defun my-xah-open-in-external-app ()
  "Open the current file or dired marked files in external app.
The app is chosen from your OS's preference.

URL `http://ergoemacs.org/emacs/emacs_dired_open_file_in_ext_apps.html'
Version 2015-01-26"
  (interactive)
  (let* (
         (ξfile-list
          (if (string-equal major-mode "dired-mode")
              (dired-get-marked-files)
            (list (buffer-file-name))))
         (ξdo-it-p (if (<= (length ξfile-list) 5)
                       t
                     (y-or-n-p "Open more than 5 files? "))))

    (when ξdo-it-p
      (cond
       ((string-equal system-type "windows-nt")
        (mapc
         (lambda (fPath)
           (w32-shell-execute "open" (replace-regexp-in-string "/" "\\" fPath t t))) ξfile-list))
       ((string-equal system-type "darwin")
        (mapc
         (lambda (fPath) (shell-command (format "open \"%s\"" fPath)))  ξfile-list))
       ((string-equal system-type "gnu/linux")
        (mapc
         (lambda (fPath) (let ((process-connection-type nil)) (start-process "" nil "xdg-open" fPath))) ξfile-list))))))

(defun my-spinal-case-region (begin end)
  "Convert region to spinal case."
  (interactive "r")
  (save-restriction
    (narrow-to-region begin end)
    (downcase-region (point-min) (point-max))
    (goto-char (point-min))
    (while (search-forward-regexp
            " " (point-max) t)
      (replace-match "-"))
    (goto-char (point-min))
    (while (search-forward-regexp
            "_" (point-max) t)
      (replace-match "-"))))

(defun my-replace-last-sexp ()
    (interactive)
    (let ((value (eval (preceding-sexp))))
      (kill-sexp -1)
      (insert (format "%S" value))))

(defun my-find-my-lost-buffer (buffer-name-string list-of-buffers)
  "Recursive hunt for buffer in list of buffers."
  (if (null list-of-buffers)
      'nil
    (if (string-match buffer-name-string (buffer-name
                                          (car list-of-buffers)))
        (car list-of-buffers)
      (find-my-lost-buffer buffer-name-string
                           (cdr list-of-buffers)))))

(defun my-ask-how (prompt how)
  "Get from minibuffer how exact command string the user would like to run."
  (let ((answer (read-from-minibuffer (concat "Run " prompt " like : ") (concat how " "))))
    (if (null answer)
        how
      answer)))

(defun my-copy-buffer-file-name-with-path ()
  "Copy the full path of the current buffer."
  (interactive)
  (kill-new
   (buffer-file-name
    (window-buffer (minibuffer-selected-window)))))

(defun my-copy-buffer-file-name-without-path ()
  "Copy the full path of the current buffer."
  (interactive)
  (kill-new
   (file-name-nondirecotry
    (buffer-file-name
     (window-buffer (minibuffer-selected-window))))))

;; TODO hotkey for dired mode in Downloads folder
(defun my-dired-in-downloads-directory ()
  (interactive)
  (dired "~/Downloads"))

(defun my-eval-dwim (beginning end)
  (interactive "r")    
  (if (use-region-p)
      (eval-region beginning end)
      (eval-defun nil)))

(defalias 'my-indent-dwim 'indent-for-tab-command)

(defun my-major-kill-dwim (beginning end)
  (interactive "r")
  (if (use-region-p)
      (kill-region beginning end)
      (crux-kill-whole-line)))

(defun my-new-vterm ()
  (interactive)
  (vterm t))

(defun my-new-vterm ()
  (interactive)
  (vterm t))

(defun my-org-sort-and-organize-todo-file ()
  (interactive)
  (mark-whole-buffer)
  (org-sort-entries nil ?o))

(provide 'editing)
