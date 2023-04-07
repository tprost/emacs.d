;; projectile
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "C-f") 'projectile-find-file)
(define-key projectile-command-map (kbd "C-t") 'projectile-test-project)
(define-key projectile-command-map (kbd "C-b")
	'helm-projectile-switch-to-buffer)
(define-key projectile-command-map (kbd "C-p") 'helm-projectile-switch-project)


(define-key projectile-command-map (kbd "x") 'projectile-test-project)
(define-key projectile-command-map (kbd "b")
	'projectile-switch-to-buffer)
(define-key projectile-command-map (kbd "r") nil)
(define-key projectile-command-map (kbd "r r")
	'switch-to-buffer-in-projectile-register)
(define-key projectile-command-map (kbd "r s") 'buffer-to-projectile-register)


(define-key projectile-command-map (kbd "1") 'projectile-find-test-file)
(define-key projectile-command-map (kbd "1") 'projectile-toggle-between-implementation-and-test)

(define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "V") 'projectile-run-vterm-dwim)
(define-key projectile-command-map (kbd "t") 'my-jump-to-project-todo-file)
;; (define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "g") 'projectile-grep)

;; (define-key projectile-mode-map (kbd "C-x C-p x") 'projectile-test-project)
;; (define-key projectile-mode-map (kbd "C-x C-p t") 'projectile-run-term)
;; (define-key projectile-mode-map (kbd "C-x C-p t n") 'term-projectile-create-new)
;; (define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
;; (define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
;; (define-key projectile-mode-map (kbd "C-x p t s")
;; 'term-projectile-switch-to)

(provide 'bindings-projectile-mode)
