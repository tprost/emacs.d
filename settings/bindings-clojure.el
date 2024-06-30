
(straight-use-package 'clojure-mode)



(define-key cider-mode-map (kbd "H-<return>") 'cider-test-run-test)
(define-key cider-mode-map (kbd "C-<return>") 'cider-eval-last-sexp)
(define-key cider-mode-map (kbd "M-<return>") 'cider-eval-buffer)


(define-key cider-mode-map (kbd "C-H-e") 'cider-eval-last-sexp)
(define-key cider-mode-map (kbd "C-H-c C-H-e C-H-%")
	'cider-eval-last-sexp-and-replace)
(define-key cider-mode-map (kbd "C-H-c C-H-e C-H-r")
	'cider-eval-last-sexp-to-repl)
(define-key cider-mode-map (kbd "C-H-c C-H-e C-H-b")
	'cider-eval-buffer)
(define-key cider-mode-map (kbd "C-H-c C-H-e C-H-c")
	'cider-eval-last-sexp-in-context)

(define-key cider-mode-map (kbd "C-H-t") 'cider-test-run-test)
(define-key cider-mode-map (kbd "C-H-T") 'cider-test-run-ns-tests)



(define-key cider-mode-map (kbd "C-H-x") 'cider-eval-last-sexp)
(define-key cider-mode-map (kbd "C-H-x") 'cider-eval-last-sexp)
(define-key cider-mode-map (kbd "C-H-c C-H-x C-H-%")
	'cider-eval-last-sexp-and-replace)
(define-key cider-mode-map (kbd "C-H-c C-H-x C-H-t")
	'cider-eval-last-sexp-and-replace)


(define-key cider-mode-map (kbd "C-x C-e") 'nil)

(define-key cider-mode-map (kbd "C-H-j") 'cider-find-var)



(define-key cider-mode-map (kbd "H->") 'cider-jack-in)
(define-key cider-mode-map (kbd "H-<") 'cider-quit)

(define-key cider-mode-map (kbd "H-c H-> H-q") 'cider-quit)
(define-key cider-mode-map (kbd "H-c H-> H-r") 'cider-restart)

(define-key clojure-mode-map (kbd "H->") 'cider-jack-in)



(provide 'bindings-clojure)
