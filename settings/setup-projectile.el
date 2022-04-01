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


(defun my-projectile-run-vterm-dwim (commands &optional name)
 "Create project level vterm and run given command. If buffer with name
  that matches command already, switch to existing buffer."
  (interactive "sCommand: ")
  (let* ((project (projectile-acquire-root))
         (buffer-name (projectile-generate-process-name (or name commands) nil)))
    (unless (buffer-live-p (get-buffer buffer-name))
      (unless (require 'vterm nil 'noerror)
        (error "Package 'vterm' is not available"))
      (projectile-with-default-dir project
        (vterm buffer-name)
        (cond ((stringp commands)
               (vterm-send-string commands)
               (vterm-send-return))         
              ((listp commands)
               (dolist (command commands v)
                 (vterm-send-string command)
                 (vterm-send-return))))))                 
    (switch-to-buffer buffer-name)))

(straight-use-package 'term-projectile)
(provide 'setup-projectile)
