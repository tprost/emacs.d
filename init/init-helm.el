(straight-use-package 'helm)
(straight-use-package 'helm-ag)

;; helm everywhere please
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-m") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

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

(provide 'init-helm)
