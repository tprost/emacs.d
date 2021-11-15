(straight-use-package 'haskell-mode)
(straight-use-package 'lsp-haskell)
(straight-use-package 'haskell-snippets)

(require 'lsp-haskell)

;; Hooks so haskell and literate haskell major modes trigger LSP setup
(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(defun my-haskell-mode-hook ()
  (evil-local-mode))

(add-hook 'haskell-mode-hook #'my-haskell-mode-hook)

          

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

(defun my-haskell-hs-hide-all ()
  (interactive)
  (my-haskell-hs-open-all)
  (haskell-hide-toggle-all))

(defun my-haskell-hs-show-all ()
  (interactive)
  (hs-minor-mode -1)
  (hs-minor-mode 1))

(provide 'setup-haskell-mode)
