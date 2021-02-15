(straight-use-package 'pyvenv)
(straight-use-package 'lsp-jedi)

(require 'python)
(require 'lsp-jedi)
;; (straight-use-package

(add-hook 'python-mode-hook #'lsp)

(add-to-list 'lsp-disabled-clients 'pyls)
(add-to-list 'lsp-enabled-clients 'jedi)

(defun tprost-python-send-statement ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (call-interactively 'python-shell-send-region))

(defun tprost-python-mode-hook ()
  (pyvenv-activate ".")
  (lsp)
  )

(add-hook 'python-mode-hook 'tprost-python-mode-hook)

(provide 'init-python)
