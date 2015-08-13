(require 'yasnippet)

;; (yas/load-directory "~/.emacs.d/elpa/yasnippet-20150415.244/snippets")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
				;; "~/.emacs.d/jasminejs-mode/snippets"
				yas-installed-snippets-dir
				))
(yas/initialize)

(define-key yas-minor-mode-map (kbd "C-S-y") 'yas-expand)

(provide 'init-yasnippet)
