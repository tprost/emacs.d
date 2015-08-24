(add-to-list 'load-path (expand-file-name "site-lisp/god-mode" user-emacs-directory))

(require 'god-mode)

;; bind Caps-Lock to M-x
;; http://sachachua.com/wp/p2008/08/04/emacs-caps-lock-as-m-x/
;; of course, this disables normal Caps-Lock for *all* apps...
(if (eq window-system 'x)
    (shell-command "xmodmap -e 'clear Lock' -e 'keycode 66 = F13'"))

(global-set-key [f13] 'god-local-mode)
(global-set-key (kbd "<escape>") 'god-local-mode)
(global-set-key (kbd "C-i") 'god-local-mode)

(add-to-list 'god-mod-alist '("h" . "s-"))

(define-key god-local-mode-map (kbd "i") 'god-local-mode)

(provide 'init-god-mode)
