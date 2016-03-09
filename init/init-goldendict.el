(add-to-list 'load-path "~/.emacs.d/site-lisp/goldendict")

(require 'goldendict)

(global-set-key (kbd "C-x l") 'goldendict-popup)

(provide 'init-goldendict)
