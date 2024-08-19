
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


(defhydra paredit ()

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

	(evil-define-key 'normal emacs-lisp-mode-map (kbd "<RET>")      'eval-sexp-fu-eval-sexp-inner-sexp)
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
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "H-f") 'paredit-backward-up)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "H-s") 'paredit-forward-up)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "H-r") 'paredit-backward)
	(evil-define-key 'normal emacs-lisp-mode-map (kbd "H-t") 'paredit-forward)

	)
(provide 'bindings-emacs-lisp-mode)

