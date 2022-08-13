(straight-use-package 'avy)
(straight-use-package 'cider)
(straight-use-package 'clojure-mode)
(straight-use-package 'crux)
(straight-use-package 'dash)
(straight-use-package 'editorconfig)
(straight-use-package 'expand-region)
(straight-use-package 'haxe-mode)
(straight-use-package 'hydra)
(straight-use-package 'jinja2-mode)
(straight-use-package 'make-mode)
(straight-use-package 'move-text)
(straight-use-package 'multiple-cursors)
(straight-use-package 'restclient)
(straight-use-package 'feature-mode)
(straight-use-package 'pyenv-mode)
(straight-use-package 'whole-line-or-region)
(straight-use-package 'which-key)
(straight-use-package 'nix-mode)
(straight-use-package 'glsl-mode)
(straight-use-package 'frame-cmds)

(straight-use-package 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(defun look-up-in-goldendict (word)
  (start-process "goldendict" nil "goldendict" word)
  )

(defun look-up-region-in-goldendict ()
  (interactive)
  (let ((word ""))
    (if (equal major-mode 'pdf-view-mode)
        (setq word (car (pdf-view-active-region-text)))
      (setq word  (buffer-substring (mark) (point))))
    (look-up-in-goldendict word)
    )
  )

;; (setq explicit-shell-file-name "/bin/bash")

(setq inhibit-startup-screen t)
(setq initial-buffer-choice nil)

(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq create-lockfiles nil)

(provide 'setup-miscellaneous)
