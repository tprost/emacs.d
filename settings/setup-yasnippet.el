(straight-use-package 'yasnippet)
(straight-use-package
 '(yasnippet-snippets :host github :repo "tprost/yasnippet-snippets"
            :branch "master"))

(require 'yasnippet)
(require 'yasnippet-snippets)

(yas-global-mode 1)

;; (setq yas-snippet-dirs
;;       '("~/.emacs.d/snippets"))

(provide 'setup-yasnippet)
