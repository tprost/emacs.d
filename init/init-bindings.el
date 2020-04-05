(require 'init-reset-bindings)

(defun global-unset-all-super-key ()
  "Will unset any single key in global keymap that has the super
modifier."
  (let ((km (current-global-map)))
    (while km
      (let ((maybe-event (and (listp (car km))
                              (caar km))))
        (if (and (eventp maybe-event) ; Also filters out maybe-event
                                      ; when nil because (car km) was not a list.
                 (memq 'super (event-modifiers maybe-event)))
            (global-unset-key (vector maybe-event))))
      (setq km (cdr km)))))

(global-unset-all-super-key)

;; (global-unset-key (kbd "ESC"))
;; (global-set-key (kbd "ESC") 'keyboard-quit)

(global-set-key (kbd "C-m") 'set-mark-command)
(global-set-key (kbd "C-.") 'kmacro-end-or-call-macro)
(global-set-key (kbd "C-_") 'keyboard-quit)

(global-set-key (kbd "C-M-;") 'comment-dwim)
(global-set-key (kbd "C-k") 'crux-smart-kill-line)
;; (global-set-key (kbd "M-k") 'crux-smart-kill-line)
(global-set-key (kbd "C-c k") 'crux-kill-whole-line)
(global-set-key (kbd "M-k") 'crux-kill-whole-line)
(global-set-key (kbd "C-S-k") 'crux-kill-line-backwards)
(global-set-key (kbd "C-o") 'crux-smart-open-line)
(global-set-key (kbd "C-S-o") 'crux-smart-open-line-above)

(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)

(global-unset-key (kbd "C-c n"))
(global-set-key (kbd "C-c n") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "C-c f") 'crux-recentf-find-file)
(global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)
(global-set-key (kbd "C-c M-d") 'crux-duplicate-and-comment-current-line-or-region)
(global-set-key (kbd "C-c e") 'crux-eval-and-replace)

(global-set-key (kbd "C-c e") 'crux-eval-and-replace)
(global-set-key (kbd "C-x K") 'crux-delete-file-and-buffer)
(global-set-key (kbd "C-c r") 'crux-rename-file-and-buffer)
(global-set-key (kbd "C-x t") 'crux-visit-term-buffer)
(global-set-key (kbd "C-x c") 'crux-create-scratch-buffer)
(global-set-key (kbd "C-x !") 'crux-sudo-edit)

(global-set-key (kbd "C-c TAB") 'crux-indent-rigidly-and-copy-to-clipboard)

;; (global-set-key (kbd "C-M z") 'crux-indent-defun)

;; (global-set-key (kbd "C-c i") 'crux-find-user-init-file)

(global-set-key (kbd "C-^") 'crux-top-join-line)
(global-set-key (kbd "C-c u") 'crux-upcase-region)
(global-set-key (kbd "C-c l") 'crux-downcase-region)
(global-set-key (kbd "C-c c") 'crux-capitalize-region)
(global-set-key (kbd "C-c i") 'crux-ispell-word-then-abbrev)



(global-unset-key (kbd "C-M-;"))

(global-set-key (kbd "C-M-; ;") 'comment-dwim)
(global-set-key (kbd "C-M-; C-M-;") 'comment-dwim)

(global-set-key (kbd "C-M-; l") 'comment-line)
(global-set-key (kbd "C-M-; C-M-l") 'comment-line)

(global-set-key (kbd "C-M-; k") 'comment-kill)
(global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; C-+             text-scale-increase
;; C-,             toggle-kbd-macro-recording-on
;; C--             text-scale-decrease



;; ESC <C-backspace>               backward-kill-sexp
;; ESC <C-delete>                  backward-kill-sexp
;; ESC <C-down>                    down-list
;; ESC <C-end>                     end-of-defun
;; ESC <C-home>                    beginning-of-defun
;; ESC <C-left>                    backward-sexp
;; ESC <C-right>                   forward-sexp
;; ESC <C-up>      backward-up-list
;; ESC <begin>     beginning-of-buffer-other-window
;; ESC <end>       end-of-buffer-other-window
;; ESC <f10>       toggle-frame-maximized
;; ESC <home>      beginning-of-buffer-other-window
;; ESC <left>      backward-word
;; ESC <next>      scroll-other-window
;; ESC <prior>     scroll-other-window-down
;; ESC <right>     forward-word


;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

(global-unset-key (kbd "<f1>"))
(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<f5>"))

(global-set-key (kbd "<f4> e") 'crux-find-user-init-file)
(global-set-key (kbd "<f4> s") 'crux-find-shell-init-file)
(global-set-key (kbd "<f12> e") 'crux-find-user-init-file)
(global-set-key (kbd "<f12> s") 'crux-find-shell-init-file)

(global-set-key (kbd "<f5>") 'cleanup-buffer)

;; (global-set-key (kbd "<f1> c") 'calendar)
;; (global-set-key (kbd "<f1> g") 'magit-status)
;; (global-set-key (kbd "<f1> o c") 'org-capture)
;; (global-set-key (kbd "<f1> v") 'visual-line-mode)
;; (global-set-key (kbd "<f1> w") 'whitespace-mode)
;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

(global-set-key (kbd "<f12> w") 'whitespace-mode)

(global-set-key (kbd "C-x w") 'whitespace-mode)

;; (global-set-key (kbd "M-/") 'hippie-expand)
;; (global-set-key (kbd "TAB") 'smart-tab)
(global-set-key (kbd "M-i") 'back-to-indentation)
(global-set-key (kbd "C-M-m") 'iy-go-to-char)

(global-set-key (kbd "C-m") 'set-mark-command)
(global-set-key (kbd "C-=") 'set-mark-command)

;; (global-set-key (kbd "C-z") 'er/expand-region)
;; (global-set-key (kbd "<C-return>") 'open-line-below)
;; (global-set-key (kbd "<C-S-return>") 'open-line-above)
(global-set-key (kbd "M-`") 'other-frame)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; (global-set-key (kbd "C-o") 'prelude-smart-open-line-above)
;; (global-set-key (kbd "M-o") 'prelude-smart-open-line)

(global-set-key (kbd "C-x C-r") 'rename-buffer)

(global-set-key (kbd "C-,") 'toggle-kbd-macro-recording-on)
(global-set-key (kbd "C-.") 'kmacro-end-and-call-macro)

(global-set-key (kbd "M-j")
                (lambda ()
                  (interactive)
                  (join-line -1)))

(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)

;; (global-set-key (kbd "M-n") 'move-text-down)
;; (global-set-key (kbd "M-p") 'move-text-up)

(global-unset-key (kbd "M-i"))

(global-set-key (kbd "M-i c") (lambda () (interactive) (set-input-method "chinese-py")))
(global-set-key (kbd "M-i e") (lambda () (interactive) (set-input-method "ucs")))

(global-set-key (kbd "s-`") 'other-frame)

(global-set-key (kbd "C-x f") 'helm-find-files)

(provide 'init-bindings)
