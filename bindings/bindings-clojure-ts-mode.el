(defun setup-clojure-ts-mode-bindings ()
	(evil-define-key 'normal 'clojure-ts-mode (kbd "<RET>") 'target)

	(evil-define-key 'normal clojure-ts-mode-map (kbd "C-<return>") 'eval-sexp-fu-cider-eval-sexp-inner-list)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "M-<return>") 'cider-eval-defun)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "H-<return>") 'cider-test-run-test)
	;; (evil-define-key 'normal clojure-ts-mode-map (kbd "h-<ret>") 'eval-last-sexp)

	(evil-define-key 'normal clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>f") 'cider-eval-defun-at-point)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>il") 'eval-sexp-fu-cider-eval-sexp-inner-list)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>is") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>e") 'cider-eval-last-sexp)
	(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader><RET>b") 'cider-eval-buffer)
	(evil-define-key 'normal clojure-ts-mode-map
    (kbd "<localleader><RET><RET>")
    'eval-sexp-fu-cider-eval-sexp-inner-sexp)

	(evil-define-key 'visual clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)

	(evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state))




(evil-define-key 'normal clojure-ts-mode-map

  (kbd "<localleader>j")
  'cider-jack-in-clj)
;; (evil-define-key 'normal clojure-ts-mode-map (kbd "") 'clojure-forward-logical-sexp)
(evil-define-key 'normal clojure-ts-mode-map (kbd "<localleader>j") 'cider-jack-in-clj)

(add-hook 'clojure-ts-mode-hook 'evilisp-mode)


(provide 'bindings-clojure-ts-mode)
