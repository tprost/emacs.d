(straight-use-package 'projectile)

;; (add-to-list 'load-path "~/.emacs.d/site-lisp/projectile")

(require 'projectile)
(straight-use-package 'helm-projectile)
(require 'helm-projectile)
;; (require-package 'projectile)
;;

;; change the prefix for projectile commands

(projectile-mode +1)
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

(projectile-register-project-type 'common-lisp '(".common-lisp")
																	:test "run-tests.sh"
																	:src-dir "src"
																	:test-dir "test"
																	:test-suffix "-test")
																	
																	

;; so that I can have multiple projects in a single repo
;; if I want
(setq projectile-project-root-functions  '(projectile-root-local
    projectile-root-top-down
    projectile-root-bottom-up    
    projectile-root-top-down-recurring))

;; (projectile-run-test)
;; (global-set-key (kbd "C-c p t") 'projectile-test-project)

;; run a particular test
;; run namespace tests
;; run all loaded tests
;; run tests after load-file

;; watch tests

(straight-use-package 'term-projectile)
(provide 'setup-projectile)
