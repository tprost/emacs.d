;; hack to make straight.el load newest org-mode
(require 'subr-x)
(straight-use-package 'git)

(require 'init-org-drill)

(defun org-git-version ()
  "The Git version of org-mode.
Inserted by installing org-mode or when a release is made."
  (require 'git)
  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (git-run "describe"
              "--match=release\*"
              "--abbrev=6"
              "HEAD"))))

(defun org-release ()
  "The release version of org-mode.
Inserted by installing org-mode or when a release is made."
  (require 'git)
  (let ((git-repo (expand-file-name
                   "straight/repos/org/" user-emacs-directory)))
    (string-trim
     (string-remove-prefix
      "release_"
      (git-run "describe"
               "--match=release\*"
               "--abbrev=0"
               "HEAD")))))

(provide 'org-version)

(straight-use-package 'org-plus-contrib)

;; customizations

(setq my-org-todo-files (file-expand-wildcards "~/org/*/*todo.org"))
(setq my-personal-development-todo-files (file-expand-wildcards "~/dev/personal/*/*todo.org"))
(setq my-work-development-todo-files (file-expand-wildcards "~/dev/work/*/*todo.org"))
(setq my-emacs-todo-files (file-expand-wildcards "~/.emacs.d/*todo.org"))
(setq my-playbook-todo-files (file-expand-wildcards "~/.playbook/*todo.org"))
(setq my-dotfiles-todo-files (file-expand-wildcards "~/.dotfiles/*todo.org"))

(setq org-agenda-files (append my-org-todo-files
                               my-personal-development-todo-files
                               my-work-development-todo-files
                               my-emacs-todo-files
                               my-dotfiles-todo-files
                               my-playbook-todo-files))



(setq org-agenda-span (quote fortnight))
(setq org-use-extra-keys t)
(setq org-tags-column 0)

;; when you open an org file make it start with everything expanded
(setq org-startup-folded 'all)

(defun tp-outline-forward-up ()
  "Move cursor to next heading that is the same level as the current parent."
  (interactive)
  (outline-up-heading 1)
  (org-forward-heading-same-level 1))

(defun tp-tag-as-drill ()
  "Add `drill` tag to current org entry. "
  (interactive)
  (org-set-tags-to (cons "drill" (org-get-tags)))
  )

(setq org-cycle-emulate-tab nil)


(if (file-readable-p "~/org/capture-templates.el")
    (load-file "~/org/capture-templates.el"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("e" "Emacs Todo" entry (file "~/.emacs.d/todo.org")
         "* TODO %?")
        ("l" "Journal" entry (file+datetree "~/taylor/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("j" "Japanese" entry (file "~/taylor/drill/japanese/drill.org")
         (file "~/.emacs.d/drill/japanese.org"))))

;; (straight-use-package 'org-drill)

;; (straight-use-package
;;  '(org-drill :type git :host github :repo "hakanserce/org-drill"))

;; (require 'org-drill)

;; (setq org-drill-spaced-repetition-algorithm 'sm2)
;; (setq org-drill-add-random-noise-to-intervals-p t)

(provide 'setup-org)