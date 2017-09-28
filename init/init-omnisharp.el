(require-package 'omnisharp)

(require 'omnisharp)

(setq omnisharp-server-executable-path "~/Downloads/omnisharp-osx/run")

(require-package 'csharp-mode)

(defun my-omnisharp-mode-hook ()
  (local-unset-key (kbd "C-x o"))
  (local-set-key (kbd "C-x o r") 'omnisharp-run-code-action-refactoring)
    (local-set-key (kbd "C-x o g") 'omnisharp-go-to-definition)
  (flycheck-mode))

(add-hook 'omnisharp-mode-hook 'my-omnisharp-mode-hook)


(setq omnisharp-debug 't)

(provide 'init-omnisharp)
