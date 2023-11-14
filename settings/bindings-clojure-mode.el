
(straight-use-package 'clojure-mode)



(define-key cider-mode-map (kbd "H-<return>") 'cider-eval-last-sexp)
(define-key cider-mode-map (kbd "C-<return>") 'cider-eval-last-sexp)

(define-key cider-mode-map (kbd "M-<return>") 'cider-eval-buffer)


(provide 'bindings-clojure-mode)
