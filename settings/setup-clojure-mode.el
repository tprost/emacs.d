(straight-use-package 'clojure-mode)
(straight-use-package 'cider)
(straight-use-package 'flycheck-clj-kondo)
(straight-use-package 'clj-refactor)
(straight-use-package 'paredit)

(require 'clj-refactor)
(require 'flycheck-clj-kondo)

(defun my-clojure-mode-hook ()
     (enable-paredit-mode)
    (clj-refactor-mode 1)
		(company-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m")
		(lsp))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)


(provide 'setup-clojure-mode)
