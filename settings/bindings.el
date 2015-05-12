
(global-set-key (kbd "C-@") 'er/expand-region)

(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)
(defun open-emacs-file ()
  (interactive)
  ;;; Place your code below this line, but inside the bracket.
  (find-file "~/.emacs.d/init.el")
  )

(global-set-key (kbd "<f12>") 'open-emacs-file)
(global-set-key (kbd "<f11>") 'shell)

(global-set-key (kbd "C-0") 'hippie-expand)
