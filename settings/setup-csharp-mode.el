(straight-use-package 'csharp-mode)
(straight-use-package 'csproj-mode)
(straight-use-package 'dotnet)
(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)
(straight-use-package 'tree-sitter-indent)


;; (defun my-delete-indentation ()
;; 	(interactive)
;; 	(delete-indentation)
;; 	(indent-relative))


(defun my-csharp-mode-hook ()
	(setq csharp-indent-offset 4)
	
  ;; add custom settings here
	(aggressive-indent-mode))

(add-hook 'csharp-mode-hook #'lsp-deferred)

(add-hook 'csharp-mode-hook 'my-csharp-mode-hook)
;; (functionp 'module-load)

(provide 'setup-csharp-mode)
