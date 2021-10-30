(defvar monster-mode-map (make-sparse-keymap)
  "The keymap for monster-mode.")

(setq local-monster-mode-map (make-sparse-keymap))
(make-variable-buffer-local 'local-monster-mode-map)

(defun monster-mode-hook ()
  (use-local-map 'local-monster-mode-map))

(define-minor-mode monster-mode
  "Toggle Monster mode"
  :init-value nil
  :lighter " Monster"
  :keymap monster-mode-map
  :after-hook 'monster-mode-hook
  (progn
    (message "asdasdasda")
    (if monster-mode
      (set-cursor-color "green")
      (set-cursor-color "white"))
    (if monster-mode
      (message "monster-mode activated")
      (message "monster-mode deactivated"))))

;; (defmacro evil-define-key (state keymap key def &rest bindings)
;;   "Create a STATE binding from KEY to DEF for KEYMAP.
;; STATE is one of `normal', `insert', `visual', `replace',
;; `operator', `motion', `emacs', or a list of one or more of
;; these. Omitting a state by using `nil' corresponds to a standard
;; Emacs binding using `define-key'. The remaining arguments are
;; like those of `define-key'. For example:
;;     (evil-define-key 'normal foo-map \"a\" 'bar)
;; This creates a binding from `a' to `bar' in normal state, which
;; is active whenever `foo-map' is active. Using nil for the state,
;; the following lead to identical bindings:
;;     (evil-define-key nil foo-map \"a\" 'bar)
;;     (define-key foo-map \"a\" 'bar)
;; It is possible to specify multiple states and/or bindings at
;; once:
;;     (evil-define-key '(normal visual) foo-map
;;       \"a\" 'bar
;;       \"b\" 'foo)
;; If `foo-map' has not been initialized yet, this macro adds an
;; entry to `after-load-functions', delaying execution as necessary.
;; KEYMAP may also be a quoted symbol. If the symbol is `global', the
;; global evil keymap corresponding to the state(s) is used, meaning
;; the following lead to identical bindings:
;;     (evil-define-key 'normal 'global \"a\" 'bar)
;;     (evil-global-set-key 'normal \"a\" 'bar)
;; The symbol `local' may also be used, which corresponds to using
;; `evil-local-set-key'. If a quoted symbol is used that is not
;; `global' or `local', it is assumed to be the name of a minor
;; mode, in which case `evil-define-minor-mode-key' is used."
;;   (declare (indent defun))
;;   (cond ((member keymap '('global 'local))
;;          `(evil-define-key* ,state ,keymap ,key ,def ,@bindings))
;;         ((and (consp keymap) (eq (car keymap) 'quote))
;;          `(evil-define-minor-mode-key ,state ,keymap ,key ,def ,@bindings))
;;         (t
;;          `(evil-delay ',(if (symbolp keymap)
;;                             `(and (boundp ',keymap) (keymapp ,keymap))
;;                           `(keymapp ,keymap))
;;               '(condition-case-unless-debug err
;;                    (evil-define-key* ,state ,keymap ,key ,def ,@bindings)
;;                  (error
;;                   (message "error in evil-define-key: %s"
;;                            (error-message-string err))))
;;             'after-load-functions t nil
;;             (format "evil-define-key-in-%s"
;;                     ',(if (symbolp keymap) keymap 'keymap))))))
;; (defalias 'evil-declare-key 'evil-define-key)
