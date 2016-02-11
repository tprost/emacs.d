;; (add-to-list 'load-path "~/.emacs.d/site-lisp/css-mode")

(require 'css-mode)
(setq css-indent-offset 2)

(defun my-css-mode-hook ()
  (setq tab-width 2)
  (setq indent-tabs-mode nil))

(add-hook 'css-mode-hook 'my-css-mode-hook)

(provide 'init-css-mode)
