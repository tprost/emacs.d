(setq key-translation-map nil)

(setq keys-to-reset '("<C-M-down>"
										 "<C-M-drag-n-drop>"
										 "<C-M-end>"
										 "<C-M-home>"
										 "<C-M-left>"
										 "<C-M-right>"
										 "<C-M-up>"
										 "<C-S-backspace>"
										 "<C-backspace>"
										 "<C-delete>"
										 "<C-down>"
										 "<C-down-mouse-1>"
										 "<C-down-mouse-2>"
										 "<C-drag-n-drop>"
										 "<C-end>"
										 "<C-home>"
										 "<C-insert>"
										 "<C-insertchar>"
										 "<C-left>"
										 "<C-next>"
										 "<C-prior>"
										 "<C-right>"
										 "<C-up>"
										 "<C-wheel-down>"
										 "<C-wheel-up>"
										 "<M-begin>"
										 "<M-down-mouse-1>"
										 "<M-drag-mouse-1>"
										 "<M-drag-n-drop>"
										 "<M-end>"
										 "<M-f10>"
										 "<M-home>"
										 "<M-left>"
										 "<M-mouse-1>"
										 "<M-mouse-2>"
										 "<M-mouse-3>"
										 "<M-next>"
										 "<M-prior>"
										 "<M-right>"
										 "<S-delete>"
										 "<S-insert>"
										 "<S-insertchar>"
										 "<S-mouse-1>"
										 "<S-mouse-3>"
										 "<S-wheel-down>"
										 "<S-wheel-up>"
										 "<XF86Back>"
										 "<XF86Forward>"
										 "<again>"
										 "<begin>"
										 "<bottom-divider>"
										 "<compose-last-chars>"
										 "<delete-frame>"
										 "<deletechar>"
										 "<deleteline>"
										 "<double-mouse-1>"
										 "<down>"
										 "<down-mouse-1>"
										 "<drag-mouse-1>"
										 "<drag-n-drop>"
										 "<end>"
										 "<execute>"
										 "<f2>"
										 "<f3>"
										 "<f4>"
										 "<f5>"
										 "<f6>"
										 "<find>"
										 "<header-line>"
										 "<help>"
										 "<home>"
										 "<iconify-frame>"
										 "<insert>"
										 "<insertchar>"
										 "<insertline>"
										 "<kp-end>"
										 "<kp-home>"
										 "<kp-next>"
										 "<kp-prior>"
										 "<left>"
										 "<make-frame-visible>"
										 "<menu>"
										 "<mode-line>"
										 "<mouse-1>"
										 "<mouse-2>"
										 "<mouse-3>"
										 "<mouse-movement>"
										 "<next>"
										 "<ns-change-font>"
										 "<ns-new-frame>"
										 "<ns-open-file>"
										 "<ns-open-file-line>"
										 "<ns-open-temp-file>"
										 "<ns-power-off>"
										 "<ns-show-prefs>"
										 "<ns-spi-service-call>"
										 "<ns-toggle-toolbar>"
										 "<open>"
										 "<prior>"
										 "<redo>"
										 "<remap>"
										 "<right>"
										 "<right-divider>"
										 "<s-kp-bar>"
										 "<s-left>"
										 "<s-right>"
										 "<select-window>"
										 "<switch-frame>"
										 "<triple-mouse-1>"
										 "<undo>"
										 "<up>"
										 "<vertical-line>"
										 "<vertical-scroll-bar>"
										 "<wheel-down>"
										 "<wheel-up>"))


(dolist (k keys-to-reset)
	(global-unset-key (kbd k)))

;; (global-unset-key (kbd "<S-dead-asciitilde> "))

;; (global-unset-key (kbd "<f2>"))




;; (defconst ergoemacs-redundant-keys
;;   '( "C-/"
;;      "C-0"
;;      "C-1"
;;      "C-2"
;;      "C-3"
;;      "C-4"
;;      "C-5"
;;      "C-6"
;;      "C-7"
;;      "C-8"
;;      "C-9"
;;      "C-<next>"
;;      "C-<prior>"
;;      "C-@"
;;      "C-M-%"
;;      "C-_"
;;      "C-a"
;;      "C-b"
;;      "C-d"
;;      "C-e"
;;      "C-f"
;;      "C-j"
;;      "C-k"
;;      "C-l"
;;      "C-n"
;;      "C-o"
;;      "C-p"
;;      "C-r"
;;      "C-s"
;;      "C-t"
;;      "C-v"
;;      "C-w"
;;      "C-x 0"
;;      "C-x 1"
;;      "C-x 2"
;;      "C-x 3"
;;      "C-x 5 0"
;;      "C-x 5 2"
;;      "C-x C-d"
;;      "C-x C-f"
;;      "C-x C-s"
;;      "C-x C-w"
;;      "C-x h"
;;      "C-x o"
;;      "C-y"
;;      "C-z"
;;      "M--"
;;      "M-0"
;;      "M-1"
;;      "M-2"
;;      "M-3"
;;      "M-4"
;;      "M-5"
;;      "M-6"
;;      "M-7"
;;      "M-8"
;;      "M-9"
;;      "M-<"
;;      "M->"
;;      "M-@"
;;      "M-\\"
;;      "M-a"
;;      "M-b"
;;      "M-c"
;;      "M-d"
;;      "M-e"
;;      "M-f"
;;      "M-h"
;;      "M-i"
;;      "M-j"
;;      "M-k"
;;      "M-l"
;;      "M-m"
;;      "M-n"
;;      "M-o"
;;      "M-p"
;;      "M-q"
;;      "M-r"
;;      "M-s"
;;      "M-t"
;;      "M-u"
;;      "M-v"
;;      "M-w"
;;      "M-x"
;;      "M-y"
;;      "M-z"
;;      "M-{"
;;      "M-}"
;;      )
;;   )

;; ;; Some exceptions we don't want to unset.
;; ;; "C-g" 'keyboard-quit
;; ;; "C-i" 'indent-for-tab-command
;; ;; "C-m" 'newline-and-indent
;; ;; "C-q" 'quote-insert
;; ;; "C-u" 'universal-argument
;; ;; "C-h" ; (help-map)
;; ;; "C-x" ; (ctl-x-map)
;; ;; "C-c" ; (prefix)
;; ;; "M-g" ; (prefix)

;; (setq key-translation-map nil)

;; (defvar ergoemacs-overridden-global-keys '()
;;   "Alist to store overridden keyboard shortcuts in
;;   `current-global-map' and other maps. Each item looks like '(MAP KEY OLD-COMMAND).")

;; (defun ergoemacs-unset-global-key (map key-s)
;;   "Sets to nil the associated command for the specified key in specified map.
;; It is like:

;;   \(define-key map (kbd key-s) nil))

;; But it saves the old command associated with the
;; specified key, so we can restore it when ergoemacs minor mode is
;; disabled at `ergoemacs-restore-global-keys'."
;;   (let (key oldcmd)
;;     (setq key (edmacro-parse-keys key-s))
;;     ;; get the old command associated with this key
;;     (setq oldcmd (lookup-key map key))
;;     ;; save that shortcut in ergoemacs-overridden-global-keys
;;     (if oldcmd
;;         (add-to-list 'ergoemacs-overridden-global-keys (cons map (cons key-s (cons oldcmd nil)))))
;;     ;; redefine the key in the ergoemacs-keymap
;;     (define-key map key nil)
;;     )
;;   )

;; (defun ergoemacs-unset-redundant-global-keys ()
;;   "Unsets redundant keyboard shortcuts that should not be used in ErgoEmacs."
;;   (mapc (lambda (x)
;;           (ergoemacs-unset-global-key (current-global-map) x))
;;         ergoemacs-redundant-keys)
;;   )

(provide 'init-reset-bindings)
