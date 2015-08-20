(defun my-python-send-statement ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (call-interactively 'python-shell-send-region))

(defun my-python-mode-hook ()
  (local-set-key (kbd "C-x C-e") 'my-python-send-statement)
)

(add-hook 'python-mode-hook
          'my-python-mode-hook)

(provide 'init-python-mode)
