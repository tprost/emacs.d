;; pixel pixel pixel pixel
(setq mac-allow-anti-aliasing nil)


;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

(set-frame-font "Monaco:size=18:antialias=false")
(custom-set-faces
 '(fixed-pitch ((t (:family "Monaco")))))
(setq default-frame-alist nil)

;; (add-to-list 'default-frame-alist
;;                        '(font . "Droid Sans:antialias=false"))
;; ;; (add-to-list 'default-frame-alist
;; ;;                        '(font . "Source Han Code JP:antialias=false"))
;; (add-to-list 'default-frame-alist
;;                        '(font . "Monaco-14:antialias=false"))

(defvar japanese-font (font-spec :family "Source Han Code JP" :antialias nil :weight 'medium))

;; Set decent default fonts for Japanese and Chinese,
;; but *only* if in a graphical context.
;; Set Japanese second so that Japanese glyphs override Chinese
;; when both charsets cover the same codepoints.
(when (fboundp #'set-fontset-font)
  (set-fontset-font t 'chinese-gbk
                    ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                    japanese-font)
  (set-fontset-font t 'japanese-jisx0213.2004-1                    
                    japanese-font))


;; other things
(blink-cursor-mode t)
(global-hl-line-mode 0)

;; (member "Ttyp0" (font-family-list))

;; take that menubars
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)

(straight-use-package 'atom-one-dark-theme)
(load-theme 'atom-one-dark t)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(add-to-list 'default-frame-alist '(internal-border-width . 0))



;; wombat theme
;; (load-theme 'wombat t)

(setq blink-cursor-blinks -1)

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(provide 'init-appearance)
