;; (require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.swig\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  ;; (local-set-key (kbd "C-c C-e r") 'mc/mark-sgml-tag-pair)
  (define-key web-mode-map (kbd "s-e") 'emmet-expand-line)
  (define-key web-mode-map (kbd "C-c t s") 'tagedit-forward-slurp-tag)
  (define-key web-mode-map (kbd "C-c t b") 'tagedit-forward-barf-tag)
  (define-key web-mode-map (kbd "M-r") 'tagedit-raise-tag)
  (define-key web-mode-map (kbd "M-s") 'tagedit-splice-tag)
  (define-key web-mode-map (kbd "M-J") 'tagedit-join-tags)
  (define-key web-mode-map (kbd "M-S") 'tagedit-split-tag)
  (define-key web-mode-map (kbd "M-?") 'tagedit-convolute-tags)
  (define-key web-mode-map (kbd "C-c t k") 'tagedit-kill)
  (define-key web-mode-map (kbd "s-k") 'tagedit-kill-attribute))

(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-hook 'web-mode-hook 'emmet-mode)

(provide 'init-web-mode)
