;; (setq lsp-keymap-prefix (kbd "<f17>")) ;; l need to set this before lsp is
;; loaded


(require 'lsp-mode)

;; Add buffer local Flycheck checkers after LSP for different major modes.
(defvar-local my-flycheck-local-cache nil)
(defun my-flycheck-local-checker-get (fn checker property)
  ;; Only check the buffer local cache for the LSP checker, otherwise we get
  ;; infinite loops.
  (if (eq checker 'lsp)
      (or (alist-get property my-flycheck-local-cache)
          (funcall fn checker property))
    (funcall fn checker property)))
(advice-add 'flycheck-checker-get
            :around 'my-flycheck-local-checker-get)
(add-hook 'lsp-managed-mode-hook
          (lambda ()
            (when (derived-mode-p 'haskell-mode)
              (setq my-flycheck-local-cache '((next-checkers . (haskell-stack-ghc)))))))
(add-hook 'lsp-managed-mode-hook
          (lambda ()
            (when (derived-mode-p 'sh-mode)
              (setq my-flycheck-local-cache '((next-checkers . (sh-shellcheck)))))))
(add-hook 'lsp-managed-mode-hook
          (lambda ()
            (when (derived-mode-p 'tex-mode)
              (setq my-flycheck-local-cache '((next-checkers . (tex-chktex)))))))

(setq lsp-headerline-breadcrumb-enable nil)



;; (add-hook 'lua-mode-hook #'lsp)
;; (add-hook 'go-mode-hook #'lsp)
;; (add-hook 'csharp-mode-hook #'lsp)

;; (global-unset-key (kbd "C-x l"))
;; (setq lsp-keymap-prefix "C-x l")

;; (local-set-key (kbd "C-c C-j") 'lsp-find-definition)
;;   (local-set-key (kbd "C-c C-x") 'lsp-restart-workspace)
;;   (local-set-key (kbd "C-c C-n") 'lsp-format-buffer)
;;   (local-set-key (kbd "C-c C-o") 'lsp-organize-imports)

(provide 'setup-lsp-mode)
