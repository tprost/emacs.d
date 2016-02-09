;; (add-to-list 'load-path "~/.emacs.d/site-lisp/css-mode")

;; (require 'css-mode)
(setq css-indent-offset 2)

(defun tp-css-mode-hook ()
  (setq indent-tabs-mode t))

(add-hook 'css-mode-hook 'tp-css-mode-hook)

(provide 'init-css-mode)
