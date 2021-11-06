(straight-use-package 'haskell-mode)
(straight-use-package 'lsp-haskell)
(straight-use-package 'haskell-snippets)

(require 'lsp-haskell)

;; Hooks so haskell and literate haskell major modes trigger LSP setup
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(add-hook 'haskell-mode-hook
          (lambda () (local-set-key (kbd "C-M-x") #'my-haskell-send-region)))

(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;; (add-to-list 'company-backends 'company-ghc)
          
(defun my-haskell-send-region (start end)
    "Send region to Haskell Interactive"
    (interactive "r")
    (if (use-region-p)        
          (let ((b (current-buffer))
                (regionp (buffer-substring start end)))                 
              (haskell-interactive-bring)
              (insert regionp)
              (haskell-interactive-mode-return)
              (pop-to-buffer b))
        (message "Region not active")))



(provide 'setup-haskell-mode)
