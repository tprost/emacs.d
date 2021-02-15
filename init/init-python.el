(straight-use-package 'pyvenv)
(straight-use-package 'lsp-jedi)

(require 'python)
(require 'lsp-jedi)
;; (straight-use-package

;; (straight-use-package
;;  '(py-autoflake :host github :repo "humitos/py-autoflake.el"
;;             :branch "master"))
;; (straight-use-package 'pyimport)
;; (straight-use-package 'py-isort)

;; (defun tprost-python-mode-add-import (import)
;;   "Add python import to beginning of file."
;;   (interactive "sEnter your import statement: ")
;;   (save-excursion
;;     (beginning-of-buffer)
;;     (insert import)
;;     (electric-newline-and-maybe-indent)
;;     (py-isort-buffer)))

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
