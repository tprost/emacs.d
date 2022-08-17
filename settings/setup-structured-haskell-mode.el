(straight-use-package
 '(structured-haskell-mode :host github :repo "projectional-haskell/structured-haskell-mode"
            :branch "master" :build nil))

(add-to-list 'load-path "~/.emacs.d/straight/repos/structured-haskell-mode/elisp")

(require 'shm)

(add-hook 'haskell-mode-hook 'structured-haskell-mode)

;; (setcdr shm-map (cdr (make-keymap)))

(define-key shm-map (kbd "H-b") 'shm/backward-node)
(define-key shm-map (kbd "H-M-b") 'shm/backward-paragraph)
(define-key shm-map (kbd "H-f") 'shm/forward-node)
(define-key shm-map (kbd "H-M-f") 'shm/forward-paragraph)

(define-key shm-map (kbd "H-p") 'shm/backward-paragraph)
(define-key shm-map (kbd "H-n") 'shm/forward-paragraph)

(define-key shm-map (kbd "H-k") 'shm/kill-line)
(define-key shm-map (kbd "H-w") 'shm/kill-region)

(define-key shm-map (kbd "H-j") 'shm/newline-indent-proxy)
(define-key shm-map (kbd "H-a") 'shm/goto-parent)
(define-key shm-map (kbd "H-e") 'shm/goto-parent-end)
(define-key shm-map (kbd "H-e") 'shm/goto-parent-end)
(define-key shm-map (kbd "H-y") 'shm/yank)
(define-key shm-map (kbd "H-.") 'shm/mark-node)

(define-key shm-map (kbd "H-r") 'shm/raise)
(define-key shm-map (kbd "H-s") 'shm/splice)

(define-key shm-map (kbd "H-<") 'shm/delete-indentation)
(define-key shm-map (kbd "H->") 'shm/newline-indent)

;; (define-key shm-map (kbd "H-<return>") 'shm/newline-indent-proxy)
(define-key shm-map (kbd "H-<return>") 'shm/ret-proxy)
(define-key shm-map (kbd "H-C-<return>") 'shm/simple-indent-newline-indent)
(define-key shm-map (kbd "H-<backspace>") 'shm/backward-kill-word)
(define-key shm-map (kbd "H-$") 'shm/$)
(define-key shm-map (kbd "H-+") 'shm/add-operand)
(define-key shm-map (kbd "H-;") 'shm/comment)

(define-key shm-map (kbd "H-C-|") 'shm/split)
(define-key shm-map (kbd "H-|") 'shm/split-line)

(define-key shm-map (kbd "H-i H-n") 'shm/newline-indent)
(define-key shm-map (kbd "H-i H-l") 'shm/newline-indent)
(define-key shm-map (kbd "H-i H-d") 'shm/delete-indentation)
(define-key shm-map (kbd "H-i H-<") 'shm/simple-indent)
(define-key shm-map (kbd "H-i H-S-i") 'shm/simple-indent-backtab)

(define-key shm-map (kbd "H-/") 'shm/swing-down)
(define-key shm-map (kbd "H-\\") 'shm/swing-up)
;; (define-key shm-map (kbd "H-;") 'shm/swing-uo)


(define-key shm-map (kbd "C-k") nil)
(define-key shm-map (kbd "C-w") nil)
(define-key shm-map (kbd "C-y") nil)
;; key             binding
;; ---             -------

;; C-c             Prefix Command
;; TAB             shm/tab
;; C-j             shm/newline-indent-proxy
;; C-k             shm/kill-line
;; RET             shm/ret-proxy
;; C-w             shm/kill-region
;; C-y             shm/yank
;; ESC             Prefix Command
;; SPC             shm/space
;; "               shm/double-quote
;; #               shm/hash
;; (               shm/open-paren
;; )               shm/close-paren
;; ,               shm/comma
;; -               shm/hyphen
;; :               shm/:
;; [               shm/open-bracket
;; ]               shm/close-bracket
;; {               shm/open-brace
;; }               shm/close-brace
;; DEL             shm/del
;; C-$             shm/$
(define-key shm-map (kbd "C-$") nil)
;; C-+             shm/add-operand
(define-key shm-map (kbd "C-+") nil)
;; C-<backspace>   shm/backward-kill-word
(define-key shm-map (kbd "C-<backspace>") nil)
;; C-<return>      shm/simple-indent-newline-indent
(define-key shm-map (kbd "C-<return>") nil)
;; <backtab>       shm/backtab
;; <deletechar>    shm/delete

;; C-c C-e         shm/export
;; C-c C-j         shm/swing-down
;; C-c C-q         shm/qualify-import
;; C-c C-u         shm/insert-undefined
;; C-c C-w         shm/goto-where
;; C-c C-^         shm/swing-up
;; C-c C-_         shm/insert-underscore

;; C-M-b           shm/backward-node
(define-key shm-map (kbd "C-M-b") nil)
;; C-M-f           shm/forward-node
(define-key shm-map (kbd "C-M-f") nil)
;; C-M-k           shm/kill-node
(define-key shm-map (kbd "C-M-k") nil)
;; C-M-o           shm/split-line
(define-key shm-map (kbd "C-M-o") nil)
;; M-(             shm/wrap-parens
(define-key shm-map (kbd "M-(") nil)
;; M-)             paredit-close-round-and-newline
(define-key shm-map (kbd "M-)") nil)
;; M-;             shm/comment
(define-key shm-map (kbd "M-;") nil)
;; M-S             shm/split
(define-key shm-map (kbd "M-S") nil)
;; M-^             shm/delete-indentation
(define-key shm-map (kbd "M-^") nil)
;; M-a             shm/goto-parent
(define-key shm-map (kbd "M-a") nil)
;; M-k             shm/kill-node
(define-key shm-map (kbd "M-k") nil)
;; M-r             shm/raise
(define-key shm-map (kbd "M-r") nil)
;; M-s             shm/splice
(define-key shm-map (kbd "M-s") nil)
;; M-w             shm/copy-region
(define-key shm-map (kbd "M-w") nil)
;; M-y             shm/yank-pop
(define-key shm-map (kbd "M-y") nil)
;; M-{             shm/backward-paragraph
(define-key shm-map (kbd "M-{") nil)
;; M-}             shm/forward-paragraph
(define-key shm-map (kbd "M-}") nil)
;; M-DEL           shm/backward-kill-word
(define-key shm-map (kbd "M-DEL") nil)
;; C-M-SPC         shm/mark-node
(define-key shm-map (kbd "C-M-S") nil)



(provide 'setup-structured-haskell-mode)


