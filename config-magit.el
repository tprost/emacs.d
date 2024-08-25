;;; config-magit.el -*- lexical-binding: t; -*-

(after! magit
  (set-popup-rule! "^magit"
    :size 0.25                 ;; Makes the Magit status window take up half the frame height
    :side 'bottom             ;; Opens the window at the bottom
    :select t                 ;; Automatically focus the Magit window
    ))
