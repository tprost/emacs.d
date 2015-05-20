
(global-set-key (kbd "C-@") 'er/expand-region)

(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)
(defun open-my-emacs-file ()
  (interactive)
  ;;; Place your code below this line, but inside the bracket.
  (find-file "~/.emacs.d/init.el")
  )

(defun open-my-japanese-file ()
  (interactive)
  (find-file "~/org/japanese.org"))

;; (dolist (key '("s-a" "s-b" "s-c" "s-d" "s-e" "s-f" "s-g"
;;                "s-h" "s-i" "s-j" "s-k" "s-l" "s-m" "s-n"
;; 							 "s-o" "s-p" "s-q" "s-r" "s-t" "s-u" "s-v"
;; 							 "s-w" "s-x" "s-y" "s-z" "\e"))
;;   (global-set-key  (kbd key) nil))

;; unbind super key
(global-set-key (kbd "s-&") nil) ;; kill-this-buffer
(global-set-key (kbd "s-'") nil) ;; next-multiframe-window
(global-set-key (kbd "s-,") nil) ;; customize
(global-set-key (kbd "s--") nil) ;; center-line
(global-set-key (kbd "s-:") nil) ;; ispell
(global-set-key (kbd "s-?") nil) ;; info
(global-set-key (kbd "s-C") nil) ;; ns-popup-color-panel
(global-set-key (kbd "s-D") nil) ;; dired
(global-set-key (kbd "s-E") nil) ;; edit-abbrevs
(global-set-key (kbd "s-H") nil) ;; ns-do-hide-others
(global-set-key (kbd "s-L") nil) ;; shell-command
(global-set-key (kbd "s-M") nil) ;; manual-entry
(global-set-key (kbd "s-S") nil) ;; ns-write-file-using-panel
(global-set-key (kbd "s-^") nil) ;; kill-some-buffers
(global-set-key (kbd "s-`") nil) ;; other-frame
(global-set-key (kbd "s-a") nil) ;; mark-whole-buffer
(global-set-key (kbd "s-c") nil) ;; ns-copy-including-secondary
(global-set-key (kbd "s-d") nil) ;; isearch-repeat-backward
(global-set-key (kbd "s-e") 'eval-region) ;; isearch-yank-kill
(global-set-key (kbd "s-f") nil) ;; isearch-forward
(global-set-key (kbd "s-g") nil) ;; isearch-repeat-forward
(global-set-key (kbd "s-h") nil) ;; ns-do-hide-emacs
(global-set-key (kbd "s-j") nil) ;; exchange-point-and-mark
(global-set-key (kbd "s-k") nil) ;; kill-this-buffer
(global-set-key (kbd "s-l") nil) ;; goto-line
(global-set-key (kbd "s-m") nil) ;; iconify-frame
(global-set-key (kbd "s-n") nil) ;; make-frame
(global-set-key (kbd "s-o") nil) ;; ns-open-file-using-panel
(global-set-key (kbd "s-p") nil) ;; ns-print-buffer
(global-set-key (kbd "s-q") nil) ;; save-buffers-kill-emacs
(global-set-key (kbd "s-s") nil) ;; save-buffer
(global-set-key (kbd "s-t") nil) ;; ns-popup-font-panel
(global-set-key (kbd "s-u") nil) ;; revert-buffer
(global-set-key (kbd "s-v") nil) ;; yank
(global-set-key (kbd "s-w") nil) ;; delete-frame
(global-set-key (kbd "s-x") nil) ;; kill-region
(global-set-key (kbd "s-y") nil) ;; ns-paste-secondary
(global-set-key (kbd "s-z") nil) ;; undo
(global-set-key (kbd "s-|") nil) ;; shell-command-on-region
(global-set-key (kbd "s-~") nil) ;; ns-prev-frame


(global-set-key (kbd "<f9> <f6>") 'visual-line-mode)
(global-set-key (kbd "<f9> <f7>") 'org-capture)
(global-set-key (kbd "<f9> <f8>") 'whitespace-mode)
(global-set-key (kbd "<f9> <f9>") 'shell)
(global-set-key (kbd "<f9> <f10>") 'calendar)

;; (global-set-key (kbd "<f9> 3") 'emacs-lisp-mode)
;; (global-set-key (kbd "<f9> 4") 'python-mode)
;; (global-set-key (kbd "<f9> 5") 'ruby-mode)
;; (global-set-key (kbd "<f9> 6") 'html-mode)

 ;; (global-set-key (kbd "<f9> SPC") 'flyspell-buffer)

(global-set-key (kbd "<f12> <f12>") 'open-my-emacs-file)
(global-set-key (kbd "<f12> <f1>") 'open-my-japanese-file)

(global-set-key (kbd "<f5>") 'cleanup-buffer)

(global-set-key (kbd "M-/") 'hippie-expand)

;; eval-region
