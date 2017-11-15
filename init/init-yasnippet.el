(require-package 'yasnippet)

(require 'yasnippet)

(yas-global-mode 1)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"))

;; (yas/initialize)

;; (define-key yas-minor-mode-map (kbd "<tab>") nil)
;; (define-key yas-minor-mode-map (kbd "TAB") nil)

;; Bind `SPC' to `yas-expand' when snippet expansion available (it
;; will still call `self-insert-command' otherwise).
;; (define-key yas-minor-mode-map (kbd "SPC") yas-maybe-expand)

;; Bind `C-c y' to `yas-expand' ONLY.
;; (define-key yas-minor-mode-map (kbd "C-x y") #'yas-expand)

;; (define-key yas-minor-mode-map (kbd "C-S-y") 'yas-expand)
(provide 'init-yasnippet)
