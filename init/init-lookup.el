(add-to-list 'load-path "~/.emacs.d/site-lisp/lookup/lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/lookup/lisp/support-files")

(setq lookup-search-agents
			'((ndeb "~/dict")))

(require 'lookup)
(require 'support-ndweb)
(require 'ndweb)

(global-set-key (kbd "<f9>") 'lookup-word)

(provide 'init-lookup)
