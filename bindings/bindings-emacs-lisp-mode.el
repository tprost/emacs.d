
;; (defhydra hydra-lisp (:hint nil :color pink :pre (set-cursor-color "#9F2B68")
;;                     :post (progn
;;                             (set-cursor-color "#ffffff")
;;                             (message
;;                              "Thank you, come again."))
;; 										)
;;   ;; Navigate
;;   ("h" paredit-backward-up)
;;   ("l" paredit-forward-up)
;;   ("j" paredit-forward)
;;   ("k" paredit-backward)
;;   ;; Quit
;;   ("<f3>" nil "quit" :color blue)
;;   ("<escape>" nil "quit" :color blue)

;; 	)

(setq-default fill-column 120)
(defhydra paredit
  ()

	("H-f" paredit-backward-up)
	("H-s" paredit-forward-up)
	("H-r" paredit-backward)
	("H-t" paredit-forward)
	("h" paredit-backward)
	("l" paredit-forward)
	("j" paredit-backward-up)
	("k" paredit-forward-up))

(defun setup-emacs-lisp-mode-bindings ()
	(evil-define-key 'normal 'emacs-lisp-mode (kbd "<RET>") 'target)
	(evil-define-key 'normal 'elisp-mode (kbd "<RET>") 'target)

	(evil-define-key 'normal emacs-lisp-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "M-<return>") 'eval-defun)
	;; (evil-define-key 'normal emacs-lisp-mode-map (kbd "H-<RET>") 'eval-last-sexp)

	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>f") 'eval-defun)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>il") 'eval-sexp-fu-eval-sexp-inner-list)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>is") 'eval-sexp-fu-eval-sexp-inner-sexp)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>e") 'eval-last-sexp)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>b") 'eval-buffer)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET>:") 'eval-expression)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader><RET><RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)

	(evil-define-key 'visual emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)

	(evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<localleader>") 'hydra-lisp/body)

	)

(defvar evilisp-outer-text-objects-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map evil-outer-text-objects-map)
    map)
  "Keymap for evilisp mode's outer text objects.")

(defvar evilisp-inner-text-objects-map
  (let ((map (make-sparse-keymap)))
    (set-keymap-parent map evil-inner-text-objects-map)
    map)
  "Keymap for evilisp mode's outer text objects.")

(defun evilisp-cp--enable-text-objects ()
  "Enables text-objects defined in evil-cleverparens."
  (define-key evilisp-outer-text-objects-map "f" #'evil-cp-a-form)
  (define-key evilisp-inner-text-objects-map "f" #'evil-cp-inner-form)
  (define-key evilisp-outer-text-objects-map "c" #'evil-cp-a-comment)
  (define-key evilisp-inner-text-objects-map "c" #'evil-cp-inner-comment)
  (define-key evilisp-outer-text-objects-map "d" #'evil-cp-a-defun)
  (define-key evilisp-inner-text-objects-map "d" #'evil-cp-inner-defun)
  (define-key evilisp-outer-text-objects-map "W" #'evil-cp-a-WORD)
  (define-key evilisp-inner-text-objects-map "W" #'evil-cp-inner-WORD))
(evilisp-cp--enable-text-objects)
(defvar evilisp-mode-map (make-sparse-keymap))
(define-minor-mode evilisp-mode
  "A minor mode for custom Evil text objects specific to Lisp."
  :init-value nil
  :lighter " evilisp"
	:keymap evilisp-mode-map
	(when evilisp-mode (evil-normalize-keymaps)))  ; Ensure keymaps are updated when mode is enabled

(evil-define-key 'visual evilisp-mode-map (kbd "a") evilisp-outer-text-objects-map)
(evil-define-key nil evilisp-mode-map (kbd "H-w") 'paredit-backward-up)
(evil-define-key nil evilisp-mode-map (kbd "H-f") 'beginning-of-defun)
(evil-define-key nil evilisp-mode-map (kbd "H-s") 'end-of-defun)
(evil-define-key nil evilisp-mode-map (kbd "H-p") 'paredit-forward-up)
(evil-define-key nil evilisp-mode-map (kbd "H-r") 'paredit-backward)
(evil-define-key nil evilisp-mode-map (kbd "H-t") 'paredit-forward)
(evil-define-key nil evilisp-mode-map (kbd "H-v") 'paredit-forward-down)
(evil-define-key nil evilisp-mode-map (kbd "H-x") 'paredit-backward-down)

(add-hook 'emacs-lisp-mode-hook 'evilisp-mode)

(add-hook 'emacs-lisp-mode-hook (lambda () (add-hook 'after-save-hook 'elfmt)))

(provide 'bindings-emacs-lisp-mode)

