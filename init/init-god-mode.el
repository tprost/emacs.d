
(require 'god-mode)

;; bind Caps-Lock to M-x
;; http://sachachua.com/wp/2008/08/04/emacs-caps-lock-as-m-x/
;; of course, this disables normal Caps-Lock for *all* apps...
(if (eq window-system 'x)
    (shell-command "xmodmap -e 'clear Lock' -e 'keycode 66 = F13'"))
(global-set-key [f13] 'god-local-mode)



(add-to-list 'god-mod-alist '("h" . "s-"))

(provide 'init-god-mode)
