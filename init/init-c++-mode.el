(straight-use-package
 '(styleguide :type git :host github :repo "google/styleguide" :branch "gh-pages"))

(require 'cl)

;; (setq gofmt-command "goimports")
;; (add-hook 'before-save-hook 'gofmt-before-save)
(defun my-c++-mode-hook ()

  ;; (c-set-style "my-style")        ; use my-style defined above
  ;; (auto-fill-mode)         
  ;; (c-toggle-auto-hungry-state 1)
  
  (local-set-key (kbd "C-x o") 'cpp-auto-include)
  
  ;; (local-set-key (kbd "M-*") 'pop-tag-mark)
  )

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(add-hook 'c-mode-common-hook 'google-set-c-style)

(provide 'init-c++-mode)

