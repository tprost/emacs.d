;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)

;; set default font in initial window and for any new window
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (when (member "Courier" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Courier-14"))
    (add-to-list 'default-frame-alist '(font . "Courier-14"))))
 ((string-equal system-type "darwin") ; Mac OS X
  (when (member "Monaco" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Monaco-18"))
    (add-to-list 'default-frame-alist '(font . "Monaco-18"))))
 ((string-equal system-type "gnu/linux") ; linux
  (when (member "DejaVu Sans Mono" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "DejaVu Sans Mono-10"))
    (add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-10")))))

;; other things
(blink-cursor-mode t)
(global-hl-line-mode 0)
