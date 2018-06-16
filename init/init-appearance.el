;; pixel pixel pixel pixel
(setq mac-allow-anti-aliasing nil)


;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

;; set default font in initial window and for any new window
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
	(when (member "Courier" (font-family-list))
		(add-to-list 'initial-frame-alist '(font . "Courier-18")))
	(when (member "Monaco" (font-family-list))
		(add-to-list 'initial-frame-alist '(font . "Monaco-14:antialias=none"))
		(add-to-list 'default-frame-alist '(font . "Monaco-14:antialias=none"))))
 ((string-equal system-type "darwin") ; Mac OS X
	(when (member "Monaco" (font-family-list))
		(add-to-list 'initial-frame-alist '(font . "Monaco-18"))
		(add-to-list 'default-frame-alist '(font . "Monaco-18"))))
 ((string-equal system-type "gnu/linux") ; linux
	(when (member "Inconsolata" (font-family-list))
		(add-to-list 'initial-frame-alist '(font . "Inconsolata-18:antialias=none"))
		(add-to-list 'default-frame-alist '(font . "Inconsolata-18:antialias=none")))))
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

;; wombat theme
(load-theme 'wombat t)

(setq blink-cursor-blinks -1)

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(set-face-attribute 'default nil :height 160)

(provide 'init-appearance)

