;; pixel pixel pixel pixel
(setq mac-allow-anti-aliasing nil)


;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

;; ;; set default font in initial window and for any new window
;; (cond
;;  ((string-equal system-type "windows-nt") ; Microsoft Windows
;;   (when (member "Courier" (font-family-list))
;;     (add-to-list 'initial-frame-alist '(font . "Courier-18")))
;;   (when (member "Monaco" (font-family-list))
;;     (add-to-list 'initial-frame-alist '(font . "Monaco-14:antialias=none"))
;;     (add-to-list 'default-frame-alist '(font . "Monaco-14:antialias=none"))))
;;  ((string-equal system-type "darwin") ; Mac OS X
;;   (when (member "Monaco" (font-family-list))
;;     (add-to-list 'initial-frame-alist '(font . "Monaco-18"))
;;     (add-to-list 'default-frame-alist '(font . "Monaco-18"))))
;;  ((string-equal system-type "gnu/linux") ; linux
;;     (when (member "Monaco" (font-family-list))
;;     (add-to-list 'initial-frame-alist '(font . "Monaco-14"))
;;     (add-to-list 'default-frame-alist '(font . "Monaco-14")))))

(set-frame-font "Monaco-14" nil)

;; ;; Set decent default fonts for Japanese and Chinese,
;; ;; but *only* if in a graphical context.
;; ;; Set Japanese second so that Japanese glyphs override Chinese
;; ;; when both charsets cover the same codepoints.
(when (fboundp #'set-fontset-font)
  (set-fontset-font t 'chinese-gbk
                    ;; Noto Sans CJK: https://www.google.com/get/noto/help/cjk/
                    (font-spec :family "Noto Sans"))
  (set-fontset-font t 'japanese-jisx0213.2004-1
                    ;; Source Han Code JP: https://github.com/adobe-fonts/source-han-code-jp
                    (font-spec :family "Noto Sans-14")))
(dolist (item '(("Source Han Code JP:antialias=none:hinting=none" . 1)
                ("Noto Sans:antialias=none" . 1)))
  
  (add-to-list 'face-font-rescale-alist item))

;; (set-frame-font "Terminus-14" nil)
 
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
