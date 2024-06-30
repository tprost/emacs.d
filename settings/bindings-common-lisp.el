

(define-key sly-mode-map (kbd "C-<return>") 'sly-eval-defun)
(define-key sly-mode-map (kbd "M-<return>") 'sly-eval-buffer)
(define-key sly-mode-map (kbd "H-<return>") 'slite-run-at-point-dwim)

(define-key lisp-mode-map (kbd "H->") 'sly)

(provide' bindings-common-lisp)
