(defun skip-to-next-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-forward " >")
    (unless (search-forward-regexp "^\\s *$" nil t)
      (goto-char (point-max)))))

(defun skip-to-previous-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-backward " >")
    (unless (search-backward-regexp "^\\s *$" nil t)
      (goto-char (point-min)))))

(defun set-frame-size-to-80-36 ()
  (interactive)
  (when window-system (set-frame-size (selected-frame) 80 36)))

(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(defun open-my-emacs-file ()
  (interactive)
  ;;; Place your code below this line, but inside the bracket.
  (find-file "~/.emacs.d/init.el")
  )

(defun open-my-japanese-file ()
  (interactive)
  (find-file "~/org/drill/japanese.org"))

(defun tabify-buffer ()
  (interactive)
  (tabify (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (if indent-tabs-mode (tabify-buffer) (untabify-buffer))
  (delete-trailing-whitespace)
  (indent-buffer))


;; source: http://steve.yegge.googlepages.com/my-dot-emacs-file
(defun rename-file-and-buffer (new-name)
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


(defun toggle-kbd-macro-recording-on ()
  "One-key keyboard macros: turn recording on."
  (interactive)
  (define-key global-map (this-command-keys)
    'toggle-kbd-macro-recording-off)
  (start-kbd-macro nil))

(defun toggle-kbd-macro-recording-off ()
  "One-key keyboard macros: turn recording off."
  (interactive)
  (define-key global-map (this-command-keys)
    'toggle-kbd-macro-recording-on)
  (end-kbd-macro))

(defun xah-open-in-external-app ()
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

(defun spinal-case-region (begin end)
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

(defun replace-last-sexp ()
    (interactive)
    (let ((value (eval (preceding-sexp))))
      (kill-sexp -1)
      (insert (format "%S" value))))

(defun tprost-open-snippets-dwim ()
    "Go to whatever snippets directory is most likely to be the one I want."
    (interactive)
    (let ((major-mode-snippet-directory (concat (file-name-directory "~/.emacs.d/snippets/") (symbol-name major-mode))))
      (if (file-directory-p major-mode-snippet-directory)
          (dired major-mode-snippet-directory)
        (dired (file-name-directory "~/.emacs.d/snippets/")))))

(defun tprost-open-init-file ()
    "Go straight to my init file."
    (interactive)
    (crux-find-user-init-file))

(defun tprost-open-init-file-for-major-mode ()
    "Go to init file for current major mode."
    (interactive)
    (let ((major-mode-init-file (concat (file-name-directory "~/.emacs.d/init/") "init-" (symbol-name major-mode) ".el")))
  (find-file major-mode-init-file)))
    

(defun helm-for-dir (project-dir)
  (let ((default-directory project-dir))
    (helm-projectile-find-file)
    ))

(defun tprost-find-emacsd-file ()
    "Go to my .emacs.d and run helm-projectile-find-file."
    (interactive)
    (helm-for-dir "~/.emacs.d"))

(defun tprost-open-init-directory ()
    "Go to my ~/.emacs.d/init."
    (interactive)
    (dired (file-name-directory "~/.emacs.d/init/")))
    )
    


    
    

(provide 'init-utils)
