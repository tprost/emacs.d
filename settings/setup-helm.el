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

(setq helm-display-header-line nil)

(defun helm-toggle-source-header-line ()
  (if (= (length (ignore-errors (with-helm-buffer helm-sources))) 1)
      (set-face-attribute 'helm-source-header nil :height 0.1)
    (set-face-attribute 'helm-source-header nil :height 1.0)))

(add-hook 'helm-after-initialize-hook 'helm-toggle-source-header-line)

(provide 'setup-helm)
