(defun setup-clojure-ts-mode-bindings ()
	(evil-define-key 'normal 'clojure-ts-mode (kbd "<RET>") 'target)
	(evil-define-key 'normal 'elisp-mode (kbd "<RET>") 'target)

	(evil-define-key 'normal clojure-ts-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "M-<return>") 'eval-defun)
	;; (evil-define-key 'normal clojure-ts-mode-map (kbd "H-<RET>") 'eval-last-sexp)

	(evil-define-key 'normal clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>f") 'eval-defun)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>il") 'eval-sexp-fu-eval-sexp-inner-list)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>is") 'eval-sexp-fu-eval-sexp-inner-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>e") 'eval-last-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>b") 'eval-buffer)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>:") 'eval-expression)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET><RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)

	(evil-define-key 'visual clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)

	(evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader>") 'hydra-lisp/body)

	)



(evil-define-key 'normal clojure-ts-mode-map

  (kbd "<localleader>j")
  'cider-jack-in-clj)
;; (evil-define-key 'normal clojure-ts-mode-map (kbd "") 'clojure-forward-logical-sexp)
(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader>j") 'cider-jack-in-clj)

(add-hook 'clojure-ts-mode-hook 'evilisp-mode)


(provide 'bindings-clojure-ts-mode)
