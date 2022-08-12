

(setq edebug-inhibit-emacs-lisp-mode-bindings t)

(add-hook 'emacs-lisp-mode-hook (lambda () (hs-minor-mode 1)))

(provide 'setup-emacs-lisp-mode)
