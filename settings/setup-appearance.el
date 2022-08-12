(straight-use-package 'ansi-color)
(straight-use-package 'beacon)
(straight-use-package 'doom-themes)

;; ;; Don't change the font for some headings and titles
;; (setq emacs-one-use-variable-pitch nil)

;; ;; Don't change size of org-mode headlines (but keep other size-changes)
;; (setq emacs-one-scale-org-headlines nil)

;; ;; Avoid all font-size changes
;; (setq emacs-one-height-minus-1 1.0)
;; (setq emacs-one-height-plus-1 1.0)
;; (setq emacs-one-height-plus-2 1.0)
;; (setq emacs-one-height-plus-3 1.0)
;; (setq emacs-one-height-plus-4 1.0)

(load-theme 'doom-challenger-deep t)

;; (load-theme 'kaolin-light t)
;; (load-theme 'kaolin-galaxy t)
;; (load-theme 'kaolin-bubblegum t)
;; (load-theme 'kaolin-eclipse t)
;; (load-theme 'kaolin-temple t)
;; (load-theme 'kaolin-valley-dark t)
;; (load-theme 'kaolin-valley-light t)

(setq default-frame-alist
      (append (list
	           '(min-height . 1)
               '(height     . 45)
	           '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 12)
               '(left-fringe    . 1)
               '(right-fringe   . 1)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))


(setq-default fill-column 80)

(setq-default display-fill-column-indicator-character ?⬝)

(set-face-attribute 'default nil :font (reverse "81 agiL onoM orPatamgarP"))
(if (string= (system-name) "zeus")
    (set-face-attribute 'default nil :font (reverse "21 agiL onoM orPatamgarP")))

;; (with-current-buffer (get-buffer " *Echo Area 0*")                             ; the leading space character is correct
;;       (setq-local face-remapping-alist '((default (:background "#333333"
;;       :height 1.0 :box '(:line-width 4 :color "#333333"))))))
      
;; (with-current-buffer " *Echo Area 0*" 
;;   (face-remap-add-relative 'default '(:inherit mode-line)))

;; (face-attribute 'mode-line :background)
;; (face-attribute 'mode-line :foreground)
;; (face-attribute 'default :background)

(setq window-header-line-height 40)
(setq window-divider-default-places 'right-only)

(setq scroll-margin 6)
;; (setq x-underline-at-descent-line t)

(setq window-divider-default-right-width 24)
;; (face-attribute 'default :background)

(window-divider-mode 1)

;; (set-face-attribute 'window-divider nil
;;                       :foreground "#282828" :background "#282828")
;; (set-face-attribute 'window-divider-first-pixel nil
;;                       :foreground "#282828")
;; (set-face-attribute 'window-divider-last-pixel nil
;;                       :foreground "#282828")

;; (set-face-attribute 'header-line nil                                        
;;                     :background "#1D2021"
;;                     ;; :foreground "white"
;;                     ;; :box '(:line-width 3)
;;                     :box nil
;;                     :box '( :line-width 4 :color "#1D2021")
;;                     :overline nil
;;                     :underline nil)

;; (set-face-attribute 'mode-line nil
;;                     ;; :background "#565063"
;;                     ;; :foreground "white"
;;                     :height 0.1
;;                     :box nil
;;                     :overline nil
;;                     :underline nil)
;; (set-face-attribute 'mode-line-inactive nil
;;                     ;; :background "#565063"
;;                     ;; :foreground "white"
;;                     :box '(:line-width 4 :color "#565063")
;;                     :overline nil
;;                     :underline nil)


(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; (custom-set-faces
 
;; '(fill-column-indicator ((t (:inherit shadow :stipple nil :foreground "gray40"
;; :inverse-video nil :box nil :strike-through nil :overline nil :underline nil
;; :slant normal :weight normal)))))

;; (defface echo-area
;;   '((t :foreground "blue"
;;        :background "black"
;;        :inherit default       
;;        :overline nil
;;        :underline nil
;;        ))
;;   "Face for function parameters."
;;   :group 'basic-faces )

;;       (setq-local face-remapping-alist '((default echo-face))))))
                         

(menu-bar-mode -1)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)

;; Disable the splash screen (to enable it agin, replace the t with 0)
;; (setq inhibit-splash-screen 0)

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

;; (scroll-bar-mode 0)
;; (fringe-mode 0)

;; (set-face-background 'vertical-border nano-color-background)
;; (set-face-foreground 'vertical-border (face-background 'vertical-border))

(beacon-mode 1)


(setq-default mode-line-format nil)

(setq-default header-line-format (list "%e"  mode-line-modified " " "%l" " "
		  mode-line-buffer-identification ))

;; (defface my-header-line-nothing-face
;; 	`((t :inherit 'default
;; 			 :foreground nil
;; 			 :background nil
;; 			 :height 0.25
;; 			 ))
;; 	"Face for active tab in tab-bar."
;; 	:group 'my-tab-bar)

;; (set-face-attribute 'my-header-line-nothing-face nil :background (face-attribute 'default :background nil t))

;; (set-cursor-color "white")

;; ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
;;  (vc-mode vc-mode)
;;  "  " mode-line-modes mode-line-misc-info mode-line-end-spaces)

(setq split-height-threshold 30)
(setq split-width-threshold nil)

(setq-default left-margin-width 2 right-margin-width 2) ; Define new widths.
(set-window-buffer nil (current-buffer)) ; Use them now.

(set-face-attribute 'mode-line nil
                    :background "#12111E"
                    ;; :foreground "white"
										;; :background "#3e2e6e"
                    :box '(:line-width 4 :color "#12111E")
                    :overline nil
                    :underline nil)

(defun minibuffer-bg ()	
     (set (make-local-variable 'face-remapping-alist)
          '((default :foreground "#FFC0CB"))))

(dolist
    (buf (list " *Minibuf-0*" " *Minibuf-1*" " *Echo Area 0*" " *Echo Area 1*" "*Quail Completions*"))
  (when (get-buffer buf)
    (with-current-buffer buf (minibuffer-bg))))

(add-hook 'minibuffer-setup-hook 'minibuffer-bg)


;; (set-face-attribute 'tab-bar nil
;;                     ;; :background "#353644"
;;                     ;; :foreground "white"
;;                     :box '(:line-width 4)
;;                     :overline nil
;;                     :underline nil)

(provide 'setup-appearance)
