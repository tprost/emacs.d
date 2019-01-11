(add-to-list 'load-path (expand-file-name "site-lisp/god-mode" user-emacs-directory))

(require 'god-mode)

(global-set-key (kbd "<escape>") 'god-local-mode)
(global-set-key (kbd "C-i") 'god-local-mode)

(add-to-list 'god-mod-alist '("h" . "s-"))

(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(provide 'init-god-mode)
