(straight-use-package
 '(styleguide :type git :host github :repo "google/styleguide" :branch "gh-pages"))

(require 'cl)

;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)
(defun my-cpp-mode-hook ()

  ;; (c-set-style "my-style")        ; use my-style defined above
  ;; (auto-fill-mode)         
  ;; (c-toggle-auto-hungry-state 1)
  
  (local-set-key (kbd "C-c C-j") 'lsp-find-definition)
  (local-set-key (kbd "C-c C-x") 'lsp-restart-workspace)
  (local-set-key (kbd "C-c C-n") 'lsp-format-buffer)
  (local-set-key (kbd "C-c C-o") 'lsp-organize-imports)
  (local-set-key (kbd "C-c C-r") 'lsp-rename)
  ;; (local-set-key (kbd "M-*") 'pop-tag-mark)
  )
(add-hook 'c++-mode-hook 'my-cpp-mode-hook)

(add-hook 'c-mode-common-hook 'google-set-c-style)

(provide 'init-cpp-mode)

