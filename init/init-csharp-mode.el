(straight-use-package 'csharp-mode)
(straight-use-package 'omnisharp)

(setq omnisharp-server-executable-path "/usr/local/bin/omnisharp/run")


(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))
(add-hook 'csharp-mode-hook #'company-mode)
(add-hook 'csharp-mode-hook #'flycheck-mode)

(defun my-csharp-mode-setup ()
  (omnisharp-mode)
  (company-mode)
  (flycheck-mode)

  ;; (setq indent-tabs-mode nil)
  ;; (setq c-syntactic-indentation t)
  ;; (c-set-style "ellemtel")
  ;; (setq c-basic-offset 4)
  ;; (setq truncate-lines t)
  ;; (setq tab-width 4)
  ;; (setq evil-shift-width 4)

  ;csharp-mode README.md recommends this too
  ;(electric-pair-mode 1)       ;; Emacs 24
  ;(electric-pair-local-mode 1) ;; Emacs 25
  (setq indent-tabs-mode nil)
  (local-set-key (kbd "<tab>") 'omnisharp-auto-complete)
  (local-set-key (kbd "C-x o r") 'omnisharp-run-code-action-refactoring)

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c r s") 'omnisharp-rename)
  (local-set-key (kbd "C-c j d") 'omnisharp-go-to-definition)
    (local-set-key (kbd "C-c C-j") 'omnisharp-go-to-definition)
  (local-set-key (kbd "C-c C-c") 'recompile))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

(provide 'init-csharp-mode)
