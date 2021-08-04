(straight-use-package 'ansi-color)
(straight-use-package 'beacon)

(straight-use-package 'darktooth-theme)

(setq default-frame-alist
      (append (list
	           '(min-height . 1)
               '(height     . 45)
	           '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 1)
               '(right-fringe   . 1)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))


(setq-default fill-column 80)

(setq-default display-fill-column-indicator-character ?⬝)

(set-face-attribute 'default nil :font (reverse "61 agiL onoM orPatamgarP"))
(require 'darktooth-theme)

(load-theme 'darktooth t)


(face-attribute 'mode-line :background)
(face-attribute 'mode-line :foreground)
(face-attribute 'default :background)

(setq header-line-format mode-line-format)
(setq-default header-line-format mode-line-format)
(setq-default mode-line-format nil)

(setq window-header-line-height 40)
(setq window-divider-default-places 'right-only)

(setq scroll-margin 6)
;; (setq x-underline-at-descent-line t)

(setq window-divider-default-right-width 24)
(face-attribute 'default :background)

(window-divider-mode 1)

(set-face-attribute 'window-divider nil
                      :foreground "#282828" :background "#282828")
(set-face-attribute 'window-divider-first-pixel nil
                      :foreground "#282828")
(set-face-attribute 'window-divider-last-pixel nil
                      :foreground "#282828")

(set-face-attribute 'magit-header-line nil
                    :overline nil
                    :underline nil
                      :foreground "black" :background "dark orange"
                      :box nil
                      :box '( :line-width 4 :color "dark orange")
                      )

(set-face-attribute 'header-line nil                    
                    :height 160
                    ;; :foreground "white"
                    ;; :box '(:line-width 3)
                    :box nil
                    :box '( :line-width 4 :color "#1D2021")
                    :overline nil
                    :underline nil)

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

(custom-set-faces
 
'(fill-column-indicator ((t (:inherit shadow :stipple nil :foreground "gray40"
:inverse-video nil :box nil :strike-through nil :overline nil :underline nil
:slant normal :weight normal)))))

(defface echo-area
  '((t :foreground "white"
       :background "black"
       :inherit default       
       :overline nil
                    :underline nil
       ))
  "Face for function parameters."
  :group 'basic-faces )

;; (dolist
;;     (buf (list " *Minibuf-0*" " *Minibuf-1*" " *Echo Area 0*" " *Echo Area 1*" "*Quail Completions*"))
;;   (when (get-buffer buf)
;;     (with-current-buffer buf
      
;;       (setq-local face-remapping-alist '((default default))))))
                         

(menu-bar-mode -1)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)

(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
               (36 . ".\\(?:>\\)")
               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
               ;; (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
               ;; (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
               (48 . ".\\(?:x[a-zA-Z]\\)")
               (58 . ".\\(?:::\\|[:=]\\)")
               (59 . ".\\(?:;;\\|;\\)")
               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
               (91 . ".\\(?:]\\)")
               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
               (94 . ".\\(?:=\\)")
               (119 . ".\\(?:ww\\)")
               (123 . ".\\(?:-\\)")
               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
               )
             ))
  (dolist (char-regexp alist)
    (set-char-table-range composition-function-table (car char-regexp)
                          `([,(cdr char-regexp) 0 font-shape-gstring]))))

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

(provide 'init-appearance)
