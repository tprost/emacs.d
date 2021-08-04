(straight-use-package 'go-mode)

;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)
(defun my-go-mode-hook ()
  (lsp)
  ; Call Gofmt before saving                                                    
  (add-hook 'before-save-hook 'gofmt-before-save)
  ; Godef jump key binding                                                      
  (local-set-key (kbd "C-c C-j") 'lsp-find-definition)
  (local-set-key (kbd "C-M-j") 'lsp-find-definition)
  (local-set-key (kbd "C-c C-x") 'lsp-restart-workspace)
  (local-set-key (kbd "C-c C-n") 'lsp-format-buffer)
  (local-set-key (kbd "C-c C-o") 'lsp-organize-imports)
  (local-set-key (kbd "C-c C-r") 'lsp-rename)
  ;; (local-set-key (kbd "M-*") 'pop-tag-mark)
  )
(add-hook 'go-mode-hook 'my-go-mode-hook)



(provide 'init-go)

