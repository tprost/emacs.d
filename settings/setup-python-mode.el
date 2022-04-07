(straight-use-package 'pyvenv)
;; (straight-use-package 'lsp-jedi)
(straight-use-package 'pyimport)
(straight-use-package 'py-isort)
(straight-use-package 'lsp-python-ms)

(require 'python)
;; (require 'lsp-jedi)


;; (straight-use-package

;; (straight-use-package
;;  '(py-autoflake :host github :repo "humitos/py-autoflake.el"
;;             :branch "master"))


(defun my-python-mode-add-import (import)
  "Add python import to beginning of file."
  (interactive "sEnter your import statement: ")
  (save-excursion
    (beginning-of-buffer)
    (insert import)
    (electric-newline-and-maybe-indent)))

(require 'lsp-python-ms)

;; TODO
(setq lsp-python-ms-auto-install-server nil)

(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred

 (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-disabled-clients 'pyls)
;; (add-to-list 'lsp-enabled-clients 'jedi)

(defun my-python-send-statement ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position))
  (call-interactively 'python-shell-send-region))

(defun my-python-mode-hook ()
  ;; (pyvenv-activate ".")
  ;; (setq lsp-python-ms-extra-paths '((projectile--directory-p)))
  ;; (message (lsp-workspace-root))
  ;; (lsp)
  )

(defun my-python-organize-imports ()
  (interactive)
  (pyimport-remove-unused)
  
  ;; (pyimport-insert-missing)
  (py-isort-buffer)
  (whitespace-cleanup))

(add-hook 'python-mode-hook 'my-python-mode-hook)

(setq lsp-pyls-rename-backend "jedi")

;; (straight-use-package 'virtualenv)ost
;; (straight-use-package 'auto-virtualenv)

;; (defun projectile-pyenv-mode-set ()
;;   "Set pyenv version matching project name."
;;   (let ((project (projectile-project-name)))
;;     (if (member project (pyenv-mode-versions))
;;         (pyenv-mode-set project)
;;       (pyenv-mode-unset))))

;; (add-hook 'projectile-after-switch-project-hook 'projectile-pyenv-mode-set)

;; (require 'auto-virtualenv)
;; (add-hook 'python-mode-hook 'auto-virtualenv-set-virtualenv)

;; (straight-use-package 'virtualenvwrapper)
;; (require 'virtualenvwrapper)
;; (venv-initialize-interactive-shells) ;; if you want interactive shell support
;; (venv-initialize-eshell) ;; if you want eshell support
;; note that setting `venv-location` is not necessary if you
;; use the default location (`~/.virtualenvs`), or if the
;; the environment variable `WORKON_HOME` points to the right place
;; (setq venv-location "/path/to/your/virtualenvs/")

;; (setq venv-dirlookup-names '(".venv" "pyenv" ".virtual"))

 ;; (defun pyvenv-autoload ()
 ;;    (require 'projectile)
 ;;    (let* ((pdir (projectile-project-root)) (pfile (concat pdir ".venv")))
 ;;      (if (file-exists-p pfile)
 ;;          (pyvenv-workon (with-temp-buffer
 ;;                           (insert-file-contents pfile)
 ;;                           (nth 0 (split-string (buffer-string))))))))
 ;;  (add-hook 'python-mode-hook 'pyvenv-autoload)

;; (straight-use-package 'vterm)

(defun my-fire-up-django-project ()
  "Set up terminals with appropriate commands for a Django project."
  (interactive)  
  (projectile-run-vterm-dwim "docker-compose up")
  (projectile-run-vterm-dwim
   '("source .venv/bin/activate" "python manage.py runserver") "runserver"))

(provide 'setup-python-mode)
