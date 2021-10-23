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
