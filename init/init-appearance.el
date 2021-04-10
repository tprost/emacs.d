(straight-use-package 'ansi-color)
(straight-use-package 'beacon)
(straight-use-package '(nano-emacs :type git :host github :repo "rougier/nano-emacs"))

(load "~/.emacs.d/straight/repos/nano-emacs/nano-faces.el")
(load "~/.emacs.d/straight/repos/nano-emacs/nano-theme.el")
(load "~/.emacs.d/straight/repos/nano-emacs/nano-theme-dark.el")
(load "~/.emacs.d/straight/repos/nano-emacs/nano-layout.el")
(load "~/.emacs.d/straight/repos/nano-emacs/nano-modeline.el")
(load "~/.emacs.d/straight/repos/nano-emacs/nano-colors.el")

;; (require 'nano-faces)
;; (require 'nano-theme)
;; (require 'nano-theme-dark)
;; (require 'nano-layout)

;; (menu-bar-mode -1)
;; (tool-bar-mode 0)
;; (tooltip-mode 0)
;; (menu-bar-mode 0)

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen 0)


(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

(nano-faces)
(nano-theme)




;; (scroll-bar-mode 0)
;; (fringe-mode 0)
(window-divider-mode -1)

(set-face-background 'vertical-border nano-color-background)
(set-face-foreground 'vertical-border (face-background 'vertical-border))

(beacon-mode 1)

(provide 'init-appearance)
