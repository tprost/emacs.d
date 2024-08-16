(setq default-frame-alist
      (append (list
							 '(min-height . 1)
               '(height     . 45)
							 '(min-width  . 0)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 12)
               '(left-fringe    . 0)
               '(right-fringe   . 0)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))


(setq-default fill-column 80)

(setq-default display-fill-column-indicator-character ?⬝)

(set-face-attribute 'default nil :font "PragmataPro Mono Liga 12")
;; (if (string= (system-name) "zeus")
;;     (set-face-attribute 'default nil :font "PragmataPro Mono Liga 12"))
;; (if (string= (system-name) "nixos")
;;     (set-face-attribute 'default nil :font "PragmataPro Mono Liga 12"))

(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(setq window-header-line-height 40)
(setq window-divider-default-places 'right-only)

;; (setq scroll-margin 6)
;; ;; (setq x-underline-at-descent-line t)

;; (setq window-divider-default-right-width 24)
;; ;; (face-attribute 'default :background)

;; (window-divider-mode 1)

;; (add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

;; (menu-bar-mode -1)
;; (tool-bar-mode 0)
;; (tooltip-mode 0)
;; (menu-bar-mode 0)
;; (scroll-bar-mode -1)
;; (defun what-face (pos)
;;   (interactive "d")
;;   (let ((face (or (get-char-property (point) 'read-face-name)
;;                   (get-char-property (point) 'face))))
;;     (if face (message "Face: %s" face) (message "No face at %d" pos))))

;; (setq-default header-line-format mode-line-format)
;; (setq-default mode-line-format nil)

;; (setq rm-blacklist
;;       (format "^ \\(%s\\)$"
;;               (mapconcat #'identity
;;                          '("Fly.*" "Projectile.*" "PgLn" "WLR" "WK" "Helm"
;; 													 "Fill"	"ARev" "company"	"yas" "ElDoc"	"=>" "hs"
;; 													 "envrc.*" "\\(\\*\\)"					 )
;;                          "\\|")))





(provide 'setup-appearance)
