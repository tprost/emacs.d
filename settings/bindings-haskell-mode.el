(define-key haskell-mode-map (kbd "<f5>") 'my-projectile-run-stack-testing-vterm)
(define-key haskell-mode-map (kbd "H-o") 'my-haskell-organize-imports)
(define-key haskell-mode-map (kbd "H-r") 'my-haskell-rename)
(define-key haskell-mode-map (kbd "H-C-r") 'my-haskell-retrie)
(define-key haskell-mode-map (kbd "H-RET") 'my-haskell-send-region)

(define-key haskell-mode-map (kbd "H-.") 'haskell-hide-toggle)
(define-key haskell-mode-map (kbd "H-j") 'lsp-find-definition)
(define-key haskell-mode-map (kbd "H-m H-f")
	'my-haskell-mark-function-definition)



;; (define-key haskell-mode-map (kbd "H-") 'my-haskell-hs-hide-all)
;; (define-key haskell-mode-map (kbd "H-") 'my-haskell-hs-show-all)

;; (evil-define-key nil haskell-mode-map (kbd "C-c r") 'projectile-replace)
;; (evil-define-key nil haskell-mode-map (kbd "C-c i") 'haskell-interactive-switch)

;; (evil-define-key nil haskell-mode-map (kbd "C-c ,") 'haskell-mode-format-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-,") nil)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, n") 'haskell-navigate-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, s") 'haskell-sort-imports)
;; (evil-define-key nil haskell-mode-map (kbd "C-c C-, a") 'haskell-align-imports)

;; (evil-define-key 'emacs haskell-mode-map (kbd "o") 'haskell-hide-toggle)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-o") 'haskell-hide-toggle)
;; (evil-define-key 'emacs haskell-mode-map (kbd "M-o") 'haskell-hide-toggle)
;; TODO maybe this should be a prefix map for consistency?
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o") nil)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o o") 'haskell-hide-toggle-all)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o s") 'my-haskell-hs-show-all)
;; (evil-define-key 'emacs haskell-mode-map (kbd "C-M-o h") 'my-haskell-hs-hide-all)

;; haskell lookup hoogle?


;; haskell-navigate-imports

;; haskell-process-load-file
;; haskell-process-reload

;; (evil-define-key nil haskell-mode-map (kbd "C-c R") 'projectile-replace)

;; (evil-define-key 'emacs 'haskell-mode (kbd "D") 'helm-M-x)


;; 
;; `interactive-haskell-mode' Minor Mode Bindings Starting With C-c:
;; key             binding
;; ---             -------

;; C-c C-b         haskell-interactive-switch
;; C-c C-c         haskell-process-cabal-build
;; C-c TAB         haskell-process-do-info
;; C-c C-k         haskell-interactive-mode-clear
;; C-c C-l         haskell-process-load-file
;; C-c C-r         haskell-process-reload
;; C-c C-t         haskell-process-do-type
;; C-c C-v         haskell-cabal-visit-file
;; C-c C-x         haskell-process-cabal
;; C-c C-z         haskell-interactive-switch

;; 
;; Major Mode Bindings Starting With C-c:
;; key             binding
;; ---             -------

;; C-c C-s         haskell-mode-toggle-scc-at-point
;; C-c C-,         haskell-mode-format-imports

(provide 'bindings-haskell-mode)
