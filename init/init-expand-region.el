(straight-use-package 'expand-region)

(global-unset-key (kbd "C-,"))
(global-set-key (kbd "C-, C-,") 'er/expand-region)
(global-set-key (kbd "C-, ,") 'er/expand-region)

(global-set-key (kbd "C-, C-.") 'er/contract-region)
(global-set-key (kbd "C-, .") 'er/contract-region)

(global-set-key (kbd "C-, w") 'er/mark-word)
(global-set-key (kbd "C-, s") 'er/mark-symbol)
(global-set-key (kbd "C-, x") 'er/mark-symbol-with-prefix)
(global-set-key (kbd "C-, a") 'er/mark-next-accessor)
(global-set-key (kbd "C-, m") 'er/mark-method-call)
(global-set-key (kbd "C-, q i") 'er/mark-inside-quotes)
(global-set-key (kbd "C-, q o") 'er/mark-outside-quotes)
(global-set-key (kbd "C-, p i") 'er/mark-inside-pairs)
(global-set-key (kbd "C-, p o") 'er/mark-outside-pairs)
(global-set-key (kbd "C-, c") 'er/mark-comment)
(global-set-key (kbd "C-, M-;") 'er/mark-comment)
(global-set-key (kbd "C-, u") 'er/mark-url)
(global-set-key (kbd "C-, e") 'er/mark-email)
(global-set-key (kbd "C-, d") 'er/mark-defun)

(provide 'init-expand-region)


