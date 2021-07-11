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
(setq my-emacs-todo-file "~/.emacs.d/*todo.org")

(setq org-agenda-files (append my-org-todo-files
                               my-personal-development-todo-files
                               my-work-development-todo-files (list my-emacs-todo-file)))



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

(defun tp-org-mode-hook ()
  (visual-line-mode)
  ;; moving forwards and backwards like paredit
  (local-set-key (kbd "C-M-f") 'org-forward-heading-same-level)
  (local-set-key (kbd "C-M-b") 'org-backward-heading-same-level)

  ;; descending forwards and ascending backwards
  (local-set-key (kbd "C-M-d") 'outline-next-visible-heading)
  (local-set-key (kbd "C-M-u") 'outline-up-heading)

  ;; descending backwards and ascending forwards
  (local-set-key (kbd "C-M-p") 'outline-previous-visible-heading)
  (local-set-key (kbd "C-M-n") 'tp-outline-forward-up)

  ;; structure editing
  (local-set-key (kbd "M-(") 'org-demote-subtree)
  (local-set-key (kbd "M-)") 'org-promote-subtree)

  ;; promote/demote heading                            M-LEFT/RIGHT
  ;; promote/demote current subtree                    M-S-LEFT/RIGHT

  (local-set-key (kbd "C-c d d") 'org-drill)
  (local-set-key (kbd "C-c d r") 'org-drill-resume)
  (local-set-key (kbd "C-c d t") 'tp-tag-as-drill)

  (local-set-key (kbd "C-c b") 'org-player-start/stop)

  )

(add-hook 'org-mode-hook 'tp-org-mode-hook)

(if (file-readable-p "~/org/capture-templates.el")
    (load-file "~/org/capture-templates.el"))

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
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

(provide 'init-org)
