(straight-use-package 'projectile)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/projectile")

(setq projectile-keymap-prefix (kbd "C-x p"))

(require 'projectile)
(straight-use-package 'helm-projectile)
(require 'helm-projectile)
;; (require-package 'projectile)
;;

;; change the prefix for projectile commands

(projectile-global-mode)
(helm-projectile-on)

(projectile-register-project-type 'dotnet '("NuGet.config")
                                  :compile "dotnet build"
                                  :test "dotnet test"
                                  :run "dotnet run"
                                  :test-suffix "Tests")

(projectile-register-project-type 'npm '("package.json")
                                  :compile "npm install"
                                  :test "npm test"
                                  :run "npm start"
                                  :test-suffix ".spec")

;; (projectile-run-test)
;; (global-set-key (kbd "C-c p t") 'projectile-test-project)

;; run a particular test
;; run namespace tests
;; run all loaded tests
;; run tests after load-file

;; watch tests

(straight-use-package 'term-projectile)

(define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)

(define-key projectile-mode-map (kbd "C-x p t") nil)
(define-key projectile-mode-map (kbd "C-x p t n") 'term-projectile-create-new)
(define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
(define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
(define-key projectile-mode-map (kbd "C-x p t s") 'term-projectile-switch-to)

(provide 'init-projectile)
