;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

(load! "config-rice.el")

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; (elpaca (elfmt :host github :repo "riscy/elfmt" :main "elfmt.el") (require 'elfmt))

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode)
                               (python-mode . python-ts-mode)))
(defun is-macosx ()
  (eq system-type 'darwin))

;;; add to ~/.doom.d/config.el
(setq doom-leader-key "<SPC>"
      doom-localleader-key "<SPC> m")

(load! "evilisp.el")

(load! "config-evil.el")
(load! "config-clojure.el")
(load! "config-emacs-lisp.el")
(load! "config-haskell.el")

;; disable smartparens everywhere
(after! smartparens
  (remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)

  (smartparens-global-mode -1))
(use-package! envrc :defer t)
(after! envrc
  (envrc-global-mode))
(after! exec-path-from-shell
  (when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))




(load! "config-common-lisp.el")
(load! "config-magit.el")

;; (use-package! redshank)
;; (use-package! slime)


(after! redshank
  (require 'redshank))
(defun +extract-to-common-lisp-function (name)
  "Extract the current region into a new Common Lisp function with NAME."
  (interactive "sEnter the name of the new function: ")
  (let ((start (region-beginning))
        (end (region-end))
        (defun-name (read-from-string (concat name "()"))))
    (if (use-region-p)
        (progn
          ;; Replace the region with a function call
          (kill-region start end)
          (insert (format "%s" defun-name))

          ;; Go to the beginning of the current defun and insert the new function
          (save-excursion

            (beginning-of-defun)
            (insert "(defun ")
            (insert defun-name)
            (insert "()")


            (yank)
            (insert ")")
            )
          (message "No region selected.")))))
(after! graphql-mode
  (remove-hook! 'graphql-mode-local-vars-hook #'lsp!)
  )


(after! org
  (setq org-capture-templates
        (setq org-capture-templates
              '(("i" "Inbox" entry (file+headline "~/org/todo/inbox.org" "Getting Things Done Inbox")
                 "* TODO %?\n  %i")
                ("j" "Journal" entry (file+datetree "~/org/journal.org")
                 "* %?\nEntered on %U\n  %i\n  %a")))

        ))

(map! :leader "yi" #'yas-insert-snippet)
(map! :leader "ye" #'yas-expand)
(map! :leader "yy" #'yas-insert-snippet)

(map! :i "<f4>" #'yas-expand)


(map! :localleader ";" #'comment-dwim)
(map! "M-;" #'comment-dwim)


(defun +projectile-run-make-test ()
  (interactive)
  (makefile-executor-execute-target (concat (projectile-project-root) "Makefile") "test")
  )

(map! :leader "pt" #'+projectile-run-make-test)

(defun +find-nixos-configuration-file ()
  (interactive)
  (find-file "/etc/nixos/configuration.nix")

  )


(map! :leader "fn" #'+find-nixos-configuration-file)

(after! org-roam
  (require 'org-roam)
  (setq org-roam-directory "~/org/roam")
  (cl-defmethod org-roam-node-slug :around ((node org-roam-node))
    (string-replace "_" "-" (cl-call-next-method)))


  (setq org-roam-dailies-directory "daily/")
  (setq org-roam-dailies-capture-templates
        '(("d" "default" entry
           "* %?"
           :target (file+head "%<%Y-%m-%d>.org"
                              "#+title: %<%Y-%m-%d>\n")))))

(map! :leader "ri" #'org-roam-node-insert)
(map! :leader "rf" #'org-roam-node-find)
(map! :leader "rr" #'org-roam-dailies-capture-today)
(map! :leader "rgd" #'org-roam-dailies-goto-today)
(map! :leader "rgy" #'org-roam-dailies-goto-yesterday)
(map! :leader "gr" nil)
(map! :leader "grd" #'org-roam-dailies-goto-today)

(use-package! websocket
  :after org-roam)
(use-package! org-roam-ui
  :after org-roam ;; or :after org
  ;;         normally we'd recommend hooking orui after org-roam, but since org-roam does not have
  ;;         a hookable mode anymore, you're advised to pick something yourself
  ;;         if you don't care about startup time, use
  ;;  :hook (after-init . org-roam-ui-mode)
  :config
  (setq org-roam-ui-sync-theme t
        org-roam-ui-follow t
        org-roam-ui-update-on-save t
        org-roam-ui-open-on-start t))

(defun +capture-gtd-inbox-todo ()
  (interactive)
  (org-capture nil "i"))

(map! :leader "z" '+capture-gtd-inbox-todo)
(map! :leader "<f2>" '+capture-gtd-inbox-todo)

(setq org-gtd-update-ack "3.0.0")
(use-package! org-gtd
  :after org
  :config
  (setq org-edna-use-inheritance t)
  (org-edna-mode)
  (setq org-gtd-directory "~/org/todo")
  (map! :leader
        (:prefix ("d" . "org-gtd")
         :desc "Capture"        "c"  #'org-gtd-capture
         :desc "Engage"         "e"  #'org-gtd-engage
         :desc "Process inbox"  "p"  #'org-gtd-process-inbox
         :desc "Show all next"  "n"  #'org-gtd-show-all-next
         :desc "Stuck projects" "s"  #'org-gtd-review-stuck-projects))
  (map! :map org-gtd-clarify-map
        :desc "Organize this item" "C-c c" #'org-gtd-organize))
(setq org-agenda-files '("~/org/todo"))

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox")

(use-package! esup :defer t)
