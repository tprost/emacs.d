(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.swig\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
	(local-set-key (kbd "C-c C-e r") 'mc/mark-sgml-tag-pair)
)
(add-hook 'web-mode-hook 'my-web-mode-hook)
