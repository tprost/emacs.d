
(global-set-key (kbd "M-b") 'helm-buffers-list)
(global-set-key (kbd "M-y") 'yasnippet)
(global-set-key (kbd "M-f") 'other-frame)
(global-set-key (kbd "M-d") 'my-dired-dwim)
(global-set-key (kbd "M-v") 'my-dired-dwim)


(global-set-key (kbd "M-h") 'help)
(global-set-key (kbd "M-i") 'indent-for-tab-command)
;; (global-set-key (kbd "M-. M-n") 'next-buffer)
;; (global-set-key (kbd "M-. M-p") 'previous-buffer)
;; (global-set-key (kbd "M-. M-k") 'kill-this-buffer)
(global-set-key (kbd "M-.") 'helm-buffers-list)
(global-set-key (kbd "H-.") 'helm-projectile-switch-to-buffer) 

;; (global-set-key (kbd "M-.") 'next-buffer)
;; (global-set-key (kbd "M-.") 'point-to-register)
(global-set-key (kbd "M-k") nil)
(global-set-key (kbd "M-,") 'helm-find-files)

(global-set-key (kbd "M->") 'next-buffer)
(global-set-key (kbd "M-<") 'previous-buffer)
(global-set-key (kbd "M->") 'projectile-next-project-buffer)
(global-set-key (kbd "M-<") 'projectile-previous-project-buffer)

(global-set-key (kbd "M-,") 'helm-projectile-find-file)
(global-set-key (kbd "M-/") 'my-dired-dwim)
(global-set-key (kbd "M-?") 'my-dired-dwim)

(global-set-key (kbd "M-'") 'delete-other-windows)
(global-set-key (kbd "M-\"") 'other-window)

(global-set-key (kbd "M-`") 'other-frame)
(global-set-key (kbd "M-`") 'other-frame-backward)
(global-set-key (kbd "M-`") 'hydra-frame-management/body)

;; minor/major mode conveniences
(global-set-key (kbd "C-!") 'flycheck-next-error)
(global-set-key (kbd "H-!") 'projectile-test-project)

(global-set-key (kbd "C-$") 'run-shell-command)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-M-$") 'my-projectile-run-new-vterm)

(global-set-key (kbd "M-@") 'compilation-next-error)
(global-set-key (kbd "M-@") 'my-find-compilation-buffer)
(global-set-key (kbd "H-@") 'projectile-compile-project)


;; (global-set-key (kbd "H-%") 'lsp-rename)

(global-set-key (kbd "C-^") 'hs-toggle-hiding)

(global-set-key (kbd "C-&") 'yas/expand)
(global-set-key (kbd "C-%") 'query-replace) ;; isearch-mode
(global-set-key (kbd "C-M-%") 'query-replace-regexp) ;; isearch-mode

(global-set-key (kbd "C-*") 'todo)

(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)




;; (global-set-key (kbd "C-S-'") 'delete-window)
(global-set-key (kbd "M-\"") 'split-window-vertically)
(global-set-key (kbd "M-_") 'whitespace-mode)
;; (define-key 'my-register-map (kbd "C-w") 'window-configuration-to-register)

(global-set-key (kbd "M-~") 'my-emacs-projectile-find-file)
(global-set-key (kbd "M-~") 'my-emacs-bindings-file)

;; (global-set-key (kbd "C-=") 'other-frame)

;; (global-set-key (kbd "H-=") 'helm-make-projectile)

(global-set-key (kbd "M-{") 'previous-buffer)
(global-set-key (kbd "M-}") 'next-buffer)
;; (global-set-key (kbd "C-[") 'previous-buffer)
;; (global-set-key (kbd "C-]") 'next-buffer)

;; |
(global-set-key (kbd "M-|") 'aggressive-indent-mode)

(global-set-key (kbd "M-SPC") 'set-mark-command)

(global-set-key (kbd "M-<tab>") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "M-S-<tab>") 'buffer-to-projectile-register)

(global-set-key (kbd "M-x") 'helm-M-x)

(provide 'bindings-meta)
