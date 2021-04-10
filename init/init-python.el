(straight-use-package 'pyvenv)
;; (straight-use-package 'lsp-jedi)
(straight-use-package 'pyimport)
(straight-use-package 'py-isort)
(straight-use-package 'lsp-python-ms)

(require 'python)
;; (require 'lsp-jedi)


;; (straight-use-package

;; (straight-use-package
;;  '(py-autoflake :host github :repo "humitos/py-autoflake.el"
;;             :branch "master"))


(defun my-python-mode-add-import (import)
  "Add python import to beginning of file."
  (interactive "sEnter your import statement: ")
  (save-excursion
    (beginning-of-buffer)
    (insert import)
    (electric-newline-and-maybe-indent)))

(require 'lsp-python-ms)
(setq lsp-python-ms-auto-install-server t)
(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

 (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-enabled-clients 'jedi)

(defun my-python-send-statement ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (call-interactively 'python-shell-send-region))

(defun my-python-mode-hook ()
  ;; (pyvenv-activate ".")
  ;; (setq lsp-python-ms-extra-paths '((projectile--directory-p)))
  ;; (message (lsp-workspace-root))
  ;; (lsp)
  )

(defun my-python-organize-imports ()
  (interactive)
  (pyimport-remove-unused)
  
  ;; (pyimport-insert-missing)
  (py-isort-buffer)
  (whitespace-cleanup))

(add-hook 'python-mode-hook 'my-python-mode-hook)

(setq lsp-pyls-rename-backend "jedi")

(provide 'init-python)
