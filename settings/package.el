(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )
