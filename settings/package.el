(require 'package)

(setq package-list '(async auto-complete dash emmet-mode epl es-lib es-windows exec-path- expand-reg flx flx-ido git-commit git-rebase helm ido-vertic inf-ruby iy-go-to-c jade-mode js2-mode js2-refact json-mode json-refor json-snatc magit markdown-m move-text multiple-c org org-plus-c pkg-info popup projectile rvm s scss-mode smex tagedit web-mode yasnippet))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
