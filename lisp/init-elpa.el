;;; Code:
(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(defvar my-packages
	'(
		ace-jump-mode
		auto-complete
		cider
		clojure-mode
		expand-region
		god-mode
		helm
		helm-projectile
		js2-mode
		js2-refactor
		magit		
		org-plus-contrib
		paredit
		projectile
		projectile
		rvm
		scss-mode
		smart-mode-line	
		web-mode
		yasnippet
		yasnippet	
		zop-to-char			      	
		)
	"A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
	(loop for p in my-packages
				when (not (package-installed-p p)) do (return nil)
				finally (return t)))

(unless (my-packages-installed-p)
	;; check for new packages (package versions)
	(package-refresh-contents)
	;; install the missing packages
	(dolist (p my-packages)
		(when (not (package-installed-p p))
			(package-install p))))

(provide 'init-elpa)
