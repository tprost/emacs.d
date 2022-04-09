(straight-use-package 'pyvenv)
(straight-use-package 'pyimport)
(straight-use-package 'py-isort)
(straight-use-package 'lsp-python-ms)

(require 'python)

(require 'lsp-python-ms)

;; TODO
(setq lsp-python-ms-auto-install-server nil)

(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

 (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-enabled-clients 'jedi)

(defun my-python-mode-hook ()
  ;; (pyvenv-activate ".")
  ;; (setq lsp-python-ms-extra-paths '((projectile--directory-p)))
  ;; (message (lsp-workspace-root))
  ;; (lsp)
  )

(add-hook 'python-mode-hook 'my-python-mode-hook)



(setq lsp-pyls-rename-backend "jedi")

(provide 'setup-python-mode)
