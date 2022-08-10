;; hack to make straight.el load newest org-mode
(require 'subr-x)

;; (package! org-plus-contrib
;;   :recipe (:host github :repo "rougier/nano-modeline"))

(straight-use-package 'org)
(straight-use-package 'org-contrib)
(straight-use-package 'git)

(require 'setup-org-drill)


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

;; (straight-use-package 'org-plus-contrib)

;; customizations

(setq my-org-todo-files (file-expand-wildcards "~/org/*/*todo.org"))
(setq my-development-todo-files (file-expand-wildcards "~/dev/personal/**/*todo.org"))
(setq my-emacs-todo-files (file-expand-wildcards "~/.emacs.d/*todo.org"))
(setq my-playbook-todo-files (file-expand-wildcards "~/.playbook/*todo.org"))
(setq my-dotfiles-todo-files (file-expand-wildcards "~/.dotfiles/*todo.org"))
(setq my-nixos-todo-files (file-expand-wildcards "/etc/nixos/*todo.org"))

(setq org-agenda-files (append my-org-todo-files                               
                               my-development-todo-files
                               my-emacs-todo-files
                               my-dotfiles-todo-files
															 my-nixos-todo-files
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
        ("l" "Journal" entry (file+datetree "~/org/journal/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("j" "Japanese" entry (file "~/org/drill/japanese/drill.org")
         (file "~/.emacs.d/drill/japanese.org"))))

;; (straight-use-package 'org-drill)

;; (straight-use-package
;;  '(org-drill :type git :host github :repo "hakanserce/org-drill"))

;; (require 'org-drill)

;; (setq org-drill-spaced-repetition-algorithm 'sm2)
;; (setq org-drill-add-random-noise-to-intervals-p t)

(setq org-priority-highest ?A)
(setq org-priority-lowest ?Z)
(setq org-priority-default ?E)

;; (require 'darktooth-theme)

(require 'darktooth-colors)

;; (color-defined-p "darktooth-identifiers-1")

(set-face-attribute 'org-level-1 nil :height 1.0)
(set-face-attribute 'org-level-2 nil :height 1.0)
(set-face-attribute 'org-level-3 nil :height 1.0)
(set-face-attribute 'org-level-4 nil :height 1.0)
(set-face-attribute 'org-level-5 nil :height 1.0)
;; (set-face-attribute 'org-level-1 nil :foreground darktooth-light1 :height 1.0)
;; (set-face-attribute 'org-level-2 nil :foreground darktooth-light2 :height 1.0)
;; (set-face-attribute 'org-level-3 nil :foreground darktooth-light3 :height 1.0)
;; (set-face-attribute 'org-level-4 nil :foreground darktooth-light4 :height 1.0)
;; (set-face-attribute 'org-level-5 nil :foreground darktooth-light4 :height 1.0)
;; (set-face-attribute 'org-todo nil :foreground darktooth-neutral-yellow)
;; (set-face-attribute 'org-tag nil :foreground darktooth-neutral-purple)
;; (set-face-attribute 'org-headline-done nil :foreground darktooth-neutral-aqua)

(defvar auto-minor-mode-alist ()
  "Alist of filename patterns vs correpsonding minor mode functions, see `auto-mode-alist'
All elements of this alist are checked, meaning you can enable multiple minor modes for the same regexp.")

(defun enable-minor-mode-based-on-extension ()
  "Check file name against `auto-minor-mode-alist' to enable minor modes
the checking happens for all pairs in auto-minor-mode-alist"
  (when buffer-file-name
    (let ((name (file-name-sans-versions buffer-file-name))
          (remote-id (file-remote-p buffer-file-name))
          (case-fold-search auto-mode-case-fold)
          (alist auto-minor-mode-alist))
      ;; Remove remote file name identification.
      (when (and (stringp remote-id)
                 (string-match-p (regexp-quote remote-id) name))
        (setq name (substring name (match-end 0))))
      (while (and alist (caar alist) (cdar alist))
        (if (string-match-p (caar alist) name)
            (funcall (cdar alist) 1))
        (setq alist (cdr alist))))))

(add-hook 'find-file-hook #'enable-minor-mode-based-on-extension)

(setq my-org-todo-mode-map (make-sparse-keymap))

(define-minor-mode my-org-todo-mode
  "For org files with giant lists of TODO items."
	:keymap my-org-todo-mode-map
  :lighter " ☑")

(add-to-list 'auto-minor-mode-alist '("\\todo.org\\'" . my-org-todo-mode))

(defun my-org-todo-file-cleanup ()
	(interactive)
	(mark-whole-buffer)
	(org-sort-entries nil ?o))

(add-hook 'org-mode-hook (lambda ()	(visual-line-mode)))
                           

(provide 'setup-org)
