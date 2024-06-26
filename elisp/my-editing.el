(defun my-kill-line-or-region ()
  "Kill to the end of the line if no region is active, but kill the region if it is active."
  (interactive)
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (kill-line)))

(defun my-beginning-of-buffer-text ()
  "Move the cursor to the beginning of the first non-whitespace text in the buffer."
  (interactive)
  (goto-char (point-min))
	(re-search-forward "[^[:space:]\n]" nil t)
  (beginning-of-line))

(defun my-backward-3-chars ()
  "Move the cursor backward 3 characters."
  (interactive)
  (backward-char 3))

(defun my-backward-3-words ()
  "Move the cursor backward 3 words."
  (interactive)
  (backward-word 3))

(defun my-backward-3-paragraphs ()
  "Move the cursor backward 3 paragraphs."
  (interactive)
  (backward-paragraph 3))

(defun my-end-of-line-text ()
  "Move the cursor to the end of the current line of text, skipping over any trailing whitespace."
  (interactive)
  (end-of-line)
  (skip-chars-backward "[:space:]"))

(defun my-end-of-buffer-text ()
  "Move the cursor to the end of the last line of text in the buffer."
  (interactive)
  (goto-char (point-max))
  (re-search-backward "\\S-" nil t)
  (end-of-line))

(defun my-replace-in-buffer (beg end)
  "Replace all occurrences of a search string in the current buffer with a replace string based on the current region, with prompting."
  (interactive "r")
  (let ((search (buffer-substring-no-properties beg end))
        (replace (read-from-minibuffer "Replace string: ")))
    (query-replace search replace)))


(defun my-replace-in-buffer-no-fear (beg end)
  "Replace all occurrences of a search string in the current buffer with a replace string based on the current region."
  (interactive "r")
  (let ((search (buffer-substring-no-properties beg end))
        (replace (read-from-minibuffer "Replace string: ")))
    (save-excursion
      (goto-char (point-min))
      (while (search-forward search nil t)
        (replace-match replace nil t)))))

(defun my-backward-to-whitespace ()
  "Move the cursor backwards to the next whitespace character on the line."
  (interactive)
  (forward-whitespace -1))

(defun my-backward-to-before-whitespace ()
  "Move the cursor backwards to the first whitespace character on the line
after the first non-whitespace character."
  (interactive)
	(forward-whitespace -1)
	(forward-whitespace 1))

(defun my-kill-to-beginning-of-line ()
  "Kill all text from the cursor position to the beginning of the line."
  (interactive)
  (kill-region (point) (line-beginning-position)))

(defun my-forward-3-chars ()
  "Move the cursor forward 3 characters."
  (interactive)
  (forward-char 3))

(defun my-forward-3-words ()
  "Move the cursor forward 3 words."
  (interactive)
  (forward-word 3))

(defun my-forward-3-paragraphs ()
  "Move the cursor forward 3 paragraphs."
  (interactive)
  (forward-paragraph 3))

(defun my-avy-goto-line-text ()
  "Run `avy-goto-line' and then move the cursor to the beginning of the first non-whitespace text on the line."
  (interactive)
  (avy-goto-line)
  (beginning-of-line-text))

(defun my-avy-goto-end-of-line-text ()
  "Run `avy-goto-line' and then move the cursor to end of the non-whitespace chars on the line."
  (interactive)
  (avy-goto-line)
  (my-end-of-line-text))

(defun my-delete-3-chars ()
  "Delete the 3 characters to the right of the cursor."
  (interactive)
  (delete-char 3))

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
      (my-find-my-lost-buffer buffer-name-string
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

(defun my-delete-word ()
  "Delete the word forward from the current cursor position without saving it to the kill ring."
  (interactive)
  (let ((beg (point))
        (end (progn (forward-word) (point))))
    (delete-region beg end)))

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

(defun my-jump-to-project-todo-file ()
  (interactive)
  (find-file (concat (projectile-project-root) "todo.org")))

(defun my-emacs-todo-file ()
  (interactive)
  (find-file "~/.emacs.d/todo.org"))

(defun my-emacs-init-file ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

(defun my-emacs-bindings-file ()
  (interactive)
  (find-file "~/.emacs.d/settings/bindings.el"))

(defun my-emacs-projectile-find-file ()
  (interactive)
  (projectile-find-file-in-directory "~/.emacs.d"))

(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
    (backward-char 1)
    (if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (cond
   ((minibufferp)
    (minibuffer-complete))
   (t
    (indent-for-tab-command)
    (if (or (not yas/minor-mode)
        (null (do-yas-expand)))
    (if (check-expansion)
        (progn
          (company-manual-begin)
          (if (null company-candidates)
          (progn
            (company-abort)
            (indent-for-tab-command)))))))))

(defun tab-complete-or-next-field ()
  (interactive)
  (if (or (not yas/minor-mode)
      (null (do-yas-expand)))
      (if company-candidates
      (company-complete-selection)
    (if (check-expansion)
      (progn
        (company-manual-begin)
        (if (null company-candidates)
        (progn
          (company-abort)
          (yas-next-field))))
      (yas-next-field)))))

(defun expand-snippet-or-complete-selection ()
  (interactive)
  (if (or (not yas/minor-mode)
      (null (do-yas-expand))
      (company-abort))
      (company-complete-selection)))

(defun abort-company-or-yas ()
  (interactive)
  (if (null company-candidates)
      (yas-abort-snippet)
    (company-abort)))

(defun my-join-line-above ()
	(interactive)
	(join-line))

(defun my-join-line-below ()
	(interactive)
	(setq current-prefix-arg '(1))
	(call-interactively 'join-line))

(defun my-isearch-forward-from-beginning-of-buffer ()
	(interactive)
	(beginning-of-buffer)
	(isearch-forward))

(defun my-isearch-backward-from-end-of-buffer ()
	(interactive)
	(end-of-buffer)
	(isearch-backward))

(defun my-close-line-below ()
  "Remove the line below the current line without changing the cursor position."
  (interactive)
  (let ((line (line-number-at-pos)))
    (save-excursion
      (forward-line)
      (delete-region (point-at-bol) (point)))
    (goto-char (point-min))
    (forward-line (1- line))))

(defun my-close-line-above ()
  "Remove the line above the current line without changing the cursor position."
  (interactive)
  (let ((line (line-number-at-pos)))
    (save-excursion
      (forward-line -1)
      (delete-region (point-at-bol) (point)))
    (goto-char (point-min))
    (forward-line (1- line))))

(defun my-indent-rigidly-1 ()
	"Indent the current line or region rigidly to the right by 2 tabs/spaces."
	(interactive)
	(if (use-region-p)
		(progn
		  (indent-rigidly (region-beginning) (region-end) 1)
			(setq deactivate-mark nil))
    (indent-rigidly (line-beginning-position) (line-end-position) 1)))

(defun my-indent-rigidly-2 ()
	"Indent the current line or region rigidly to the right by 2 tabs/spaces."
	(interactive)
	(if (use-region-p)
		(progn
		  (indent-rigidly (region-beginning) (region-end) 2)
			(setq deactivate-mark nil))
    (indent-rigidly (line-beginning-position) (line-end-position) 2)))

(defun my-unindent-rigidly-1 ()
	"Indent the current line or region rigidly to the right by 2 tabs/spaces."
	(interactive)
	(if (use-region-p)
		(progn
		  (indent-rigidly (region-beginning) (region-end) -1)
			(setq deactivate-mark nil))
    (indent-rigidly (line-beginning-position) (line-end-position) -1)))

(defun my-unindent-rigidly-2 ()
	"Indent the current line or region rigidly to the right by 2 tabs/spaces."
	(interactive)
	(if (use-region-p)
		(progn
			(indent-rigidly (region-beginning) (region-end) -2)
			(setq deactivate-mark nil))
		(indent-rigidly (line-beginning-position) (line-end-position) -2)))

;; (defun my-lsp-lens-toggle ()
;; 	"If LSP lenses are visible, turn them off. If LSP lenses are not visible,
;; 	turn them on."
;; 	(interactive)
	

(defun my-delete-current-line ()
  "Delete (not kill) the current line."
  (interactive)
  (save-excursion
    (delete-region
     (progn (forward-visible-line 0) (point))
     (progn (forward-visible-line 1) (point)))))

(defun my-backward-delete-word ()
  "Delete the previous word without saving it to the kill ring."
  (interactive)
  (let ((start (point)))
    (backward-word)
    (delete-region (point) start)))

(provide 'my-editing)
