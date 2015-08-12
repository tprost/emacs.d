
(load-file "~/.emacs.d/prelude/init.el")

(prelude-require-packages
 '(auto-complete
	 clojure-mode
	 cider
	 helm-projectile
	 jasminejs-mode
	 js2-mode
	 js2-refactor
	 org-plus-contrib
	 projectile
	 rvm
	 scss-mode
	 smart-tab
	 web-mode
	 helm
	 yasnippet))

(require 'prelude-helm-everywhere)

(prelude-global-mode -1)


(provide 'init-prelude)
