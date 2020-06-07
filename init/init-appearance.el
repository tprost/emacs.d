;; pixel pixel pixel pixel
(setq mac-allow-anti-aliasing nil)


;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)
(add-to-list 'default-frame-alist
                       '(font . "Droid Sans:antialias=false"))
(add-to-list 'default-frame-alist
                       '(font . "Source Han Code JP:antialias=false"))
(add-to-list 'default-frame-alist
                       '(font . "Monaco-14:antialias=false"))


(defvar japanese-font (font-spec :family "Source Han Code JP" :antialias nil))

;; Set decent default fonts for Japanese and Chinese,
;; but *only* if in a graphical context.
;; Set Japanese second so that Japanese glyphs override Chinese
;; when both charsets cover the same codepoints.
(when (fboundp #'set-fontset-font)
  (set-fontset-font t 'chinese-gbk
                    ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                    japanese-font)
  (print "yay")
  (set-fontset-font t 'japanese-jisx0213.2004-1                    
                    japanese-font))

;; (dolist (item '(("Source Han Code JP:antialias=false:hinting=false" . 1)
;;                 ("Noto Sans:antialias=false" . 1)))
;;   (add-to-list 'face-font-rescale-alist item))


;; (defun update-current-frame-fontset-mac ()
;;   "Update current frame fontset with Japanese font setting (macOS)"
;;   (let* (;; Ascii font name (pick from (font-family-list))
;;          (my-ascii-font "Menlo")
;;          ;; Japanese font name (pick from (font-family-list))
;;          (my-jp-font    "Droid Sans:antialias=false")
;;          ;; Create :family-only font specifications (use later)
;;          ;; #<font-spec nil nil Menlo nil nil nil nil nil nil nil nil nil nil>
;;          (my-ascii-fontspec (font-spec :family my-ascii-font))
;;          ;; #<font-spec nil nil Hiragino\ Maru\ Gothic\ ProN nil nil nil nil nil nil nil nil nil nil>
;;          (my-jp-fontspec    (font-spec :family my-jp-font)))
;;     ;;
;;     ;; Return the value of FACE’s ATTRIBUTE on (current) FRAME.
;;     ;; (face-attribute 'default :fontset) returns the current frame's fontset,
;;     ;; which can be updated for some letters via set-fontset-font

;;     ;; For these Japanese character sets, use my-jp-fontspec
;;     (set-fontset-font (face-attribute 'default :fontset)
;;                       'japanese-jisx0213.2004-1 my-jp-fontspec    nil 'append)
;;     (set-fontset-font (face-attribute 'default :fontset)
;;                       'japanese-jisx0213-2      my-jp-fontspec    nil 'append)
;;     ;; For Half-sized katakana characters, use my-jp-fontspec
;;     (set-fontset-font (face-attribute 'default :fontset)
;;                       'katakana-jisx0201        my-jp-fontspec    nil 'append)
;;     ;;
;;     ;; For the characters in the range #x0080 - #x024F, use my-ascii-fontspec
;;     ;; Latin with pronounciation annotations
;;     (set-fontset-font (face-attribute 'default :fontset)
;;                       '(#x0080 . #x024F)        my-ascii-fontspec nil 'append)
;;     ;; For the characters in the range #x0370 - #x03FF, use my-ascii-fontspec
;;     ;; Greek characters
;;     (set-fontset-font (face-attribute 'default :fontset)
;;                       '(#x0370 . #x03FF)        my-ascii-fontspec nil 'append)))

;; (update-current-frame-fontset-mac)

;; (set-frame-font "Monaco" nil)
;; (set-frame-font "Source Han Code JP:antialias=false")
 
;;	(when (member "Ttyp0" (font-family-list))
;;		(add-to-list 'initial-frame-alist '(font . "Ttyp0-14:antialias=none"))
;;		(add-to-list 'default-frame-alist '(font . "Ttyp0-14:antialias=none")))))

;; other things
(blink-cursor-mode t)
(global-hl-line-mode 0)

(member "Ttyp0" (font-family-list))

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
