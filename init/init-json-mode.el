;; (require-package 'json-mode)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/json-mode.el")

(load-file "~/.emacs.d/site-lisp/json-mode.el")

(require 'json-mode)

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))

(provide 'init-json-mode)
