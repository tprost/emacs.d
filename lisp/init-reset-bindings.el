(setq key-translation-map nil)

;; (setq keys-to-reset
;; 			'(
;; 				"<S-dead-acute>"
;; 				"<S-dead-asciicircum"
;; 				"<S-dead-asciitilde"
;; 				"<S-dead-circum"
;; 				"<S-dead-circumflex"
;; 				"<S-dead-diaeresis"
;; 				"<S-dead-grave>"
;; 				"<S-dead-tilde>"
;; 				"<dead-acute>"
;; 				"<dead-asciicircum"
;; 				"<dead-asciitilde"
;; 				"<dead-circum>"
;; 				"<dead-circumflex"
;; 				"<dead-diaeresis"
;; 				"<dead-grave>"
;; 				"<dead-tilde>"
;; 				"<mute-acute>"
;; 				"<mute-asciicircum"
;; 				"<mute-asciitilde"
;; 				"<mute-diaeresis"
;; 				"<mute-grave>"
;; 				"<S-dead-tilde>"
;; 				"<S-dead-asciitilde>"
;; 				"<dead-tilde>"
;; 				"<dead-asciitilde>"
;; 				"<mute-asciitilde>"
;; 				"A"
;; 				"<S-dead-grave>"
;; 				"<dead-grave>"
;; 				"<mute-grave>"
;; 				"<S-dead-circumflex>"
;; 				"<S-dead-circum>"
;; 				"<S-dead-asciicircum>"
;; 				"<dead-circumflex>"
;; 				"<dead-circum>"
;; 				"<dead-asciicircum>"
;; 				"<mute-asciicircum>"
;; 				))

;; (dolist (k keys-to-reset)
;; 	(global-unset-key (kbd k)))

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
