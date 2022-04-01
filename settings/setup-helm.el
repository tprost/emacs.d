(straight-use-package 'helm)
(straight-use-package 'helm-ag)

;; helm everywhere please
(helm-mode 1)

;; customize header face
(set-face-attribute 'helm-source-header nil
										:background "midnight blue"
										:foreground "white"
										:font 'unspecified
										:family 'unspecified
										:height 'unspecified
										:weight 'unspecified)

;; tab for completion in find file
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(setq helm-split-window-inside-p t)

(add-to-list 'same-window-buffer-names "*Compilation*")
(add-to-list 'same-window-buffer-names "*ansi-term*")

(provide 'setup-helm)
