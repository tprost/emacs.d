(add-to-list 'load-path "~/.emacs.d/site-lisp/lookup/lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/lookup/lisp/support-files")

(require 'lookup)
;; (require 'support-ndweb)
;; (require 'ndweb)

;; (setq lookup-search-agents
;; 			'((ndeb "~/dict")))

(global-set-key (kbd "<f9>") 'lookup-word)

(provide 'init-lookup)
