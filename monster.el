(defvar monster-mode-map (make-sparse-keymap)
  "The keymap for monster-mode.")

(define-minor-mode monster-mode
  "Toggle Monster mode"
  :init-value nil
  :lighter " Monster"
  :keymap monster-mode-map
  (progn
    (message "asdasdasda")
    (if monster-mode
      (set-cursor-color "green")
      (set-cursor-color "white"))
    (if monster-mode
      (message "monster-mode activated")
      (message "monster-mode deactivated"))))
