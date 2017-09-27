(require-package 'projectile)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/projectile")

(setq projectile-keymap-prefix (kbd "C-x p"))

(require 'projectile)
(require-package 'helm-projectile)
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

;; (projectile-run-test)

;; run a particular test
;; run namespace tests
;; run all loaded tests
;; run tests after load-file

;; watch tests



(provide 'init-projectile)
