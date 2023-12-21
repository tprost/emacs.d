
(straight-use-package 'clojure-mode)



(define-key cider-mode-map (kbd "H-<return>") 'cider-test-run-test)
(define-key cider-mode-map (kbd "C-<return>") 'cider-eval-last-sexp)

(define-key cider-mode-map (kbd "M-<return>") 'cider-eval-buffer)
(define-key cider-mode-map (kbd "C-x C-e") 'nil)


(provide 'bindings-clojure-mode)
