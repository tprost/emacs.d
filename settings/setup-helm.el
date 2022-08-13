(straight-use-package 'helm)
(straight-use-package 'helm-ag)

;; helm everywhere please
(helm-mode 1)

;; customize header face
;; (set-face-attribute 'helm-source-header nil
;; 										:background "midnight blue"
;; 										:foreground "white"
;; 										:font 'unspecified
;; 										:family 'unspecified
;; 										:height 'unspecified
;; 										:weight 'unspecified)

;; tab for completion in find file
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)

(setq helm-split-window-inside-p t)

(add-to-list 'same-window-buffer-names "*Compilation*")
(add-to-list 'same-window-buffer-names "*ansi-term*")

(set-face-attribute 'helm-selection nil :background "#3e2e6e")

;; (setq helm-display-header-line nil)

;; (defun helm-toggle-source-header-line ()
;;   (if (= (length (ignore-errors (with-helm-buffer helm-sources))) 1)
;;       (set-face-attribute 'helm-source-header nil :height 0.1)
;;     (set-face-attribute 'helm-source-header nil :height 1.0)))

;; (add-hook 'helm-after-initialize-hook 'helm-toggle-source-header-line)
;; (add-hook 'helm-major-mode-hook 'my-hide-mode-line-please)
;; (setq helm-display-header-line nil)

;; (defun my-hide-mode-line-please ()
;; 	(setq-default mode-line-format nil))

;; ;; (setq-local 'mode-line nil)
;; (setq-default mode-line-format "asdas")

;; (setq helm-autoresize-max-height 30)
;; (setq helm-autoresize-min-height 30)

;; (defun helm/turn-off-header-line ()
;;   (interactive)
;;   (setq helm-echo-input-in-header-line nil)
;;   ;;(helm-autoresize-mode 1)
;;   (setq helm-split-window-in-side-p nil)
;;   (remove-hook 'helm-minibuffer-set-up-hook 'helm-hide-minibuffer-maybe)
;;   )

;; (helm/turn-off-header-line)

(provide 'setup-helm)
