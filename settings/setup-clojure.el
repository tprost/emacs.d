(straight-use-package 'clojure-mode)
(straight-use-package 'cider)
(straight-use-package 'flycheck-clj-kondo)
(straight-use-package 'clj-refactor)
(straight-use-package 'paredit)

(require 'clj-refactor)
(require 'flycheck-clj-kondo)

(defun my-clojure-mode-hook ()
   	(flycheck-mode)
    (enable-paredit-mode)
    (clj-refactor-mode 1)
		(company-mode 1)
		(add-hook 'before-save-hook 'cider-format-buffer t t)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m")
		(lsp))

;; ;; Define your custom keybindings
;; (defun my-cider-mode-keybindings ()
;;   "Custom keybindings for Cider mode."
  
;;   ;; Add more keybindings as needed
;;   )

;; (define-key cider-mode-map (kbd "C-c C-e") 'cider-eval-last-sexp)
;; (define-key cider-mode-map (kbd "C-c C-r") 'cider-eval-region)
;; (define-key cider-mode-map (kbd "C-c C-b") 'cider-eval-buffer)

;; Add your custom keybindings to cider-mode-hook
;; (add-hook 'cider-mode-hook 'my-cider-mode-keybindings)

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
(add-hook 'clojure-mode-hook #'ligature-mode)


(require 'ligature)
(ligature-set-ligatures 'clojure-mode '("==" "!=" "->" "->>" "::" ">=" "<="))

(provide 'setup-clojure)
