;;; config-rice.el -*- lexical-binding: t; -*-

;; theme
(setq doom-theme 'doom-vibrant)

;; splash screen
(defun my-dweebery-is-always-greater ()
  (let* ((banner '(
                   "                    Music can change the world.                  "
                   " _______________________________________________________________ "
                   "|| | | ||| | ||| | | ||| | ||| | | ||| | ||| | | ||| | ||| | | ||"
                   "||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_|||_|_|||_|_|_||"
                   "| | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |"
                   "|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|_|"))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat line (make-string (max 0 (- longest-line (length line))) 32)))
               "\n"))
     'face 'doom-dashboard-banner)))
(setq +doom-dashboard-ascii-banner-fn #'my-dweebery-is-always-greater)
(setq default-frame-alist '((left . 0) (width . 141) (fullscreen . fullheight)))
