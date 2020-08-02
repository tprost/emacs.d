(defun tprost-kill-to-end-of-buffer ()
  "Kill to end of buffer."
(interactive)
(set-mark (point))
(end-of-buffer)
(kill-region (region-beginning) (region-end)))

(defun tprost-kill-to-beginning-of-buffer ()
  "Kill to beginning of buffer."
(interactive)
(set-mark (point))
(beginning-of-buffer)
(kill-region (region-beginning) (region-end)))
