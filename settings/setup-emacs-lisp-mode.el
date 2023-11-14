(straight-use-package 'paredit)

(setq edebug-inhibit-emacs-lisp-mode-bindings t)

(defun my-emacs-lisp-mode-hook ()
  (enable-paredit-mode)
  (hs-minor-mode 1))

(add-hook 'emacs-lisp-mode-hook 'my-emacs-lisp-mode-hook)

(provide 'setup-emacs-lisp-mode)
