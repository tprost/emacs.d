;; keys on macosx
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(setq ns-function-modifier 'hyper)

(require 'expand-region)
(require 'which-key)
(which-key-mode)

(require 'whole-line-or-region)
(require 'hydra)

(whole-line-or-region-global-mode t)

(define-key input-decode-map [?\C-m] [C-m])

;; a
(global-set-key (kbd "C-a") 'beginning-of-line)
(global-set-key (kbd "C-S-a") 'beginning-of-line-text)
(global-set-key (kbd "C-M-a") 'avy-goto-line)
(global-set-key (kbd "C-M-S-a") 'my-avy-goto-line-text)
(global-set-key (kbd "C-M-H-a") 'beginning-of-buffer)
(global-set-key (kbd "C-M-H-S-a") 'my-beginning-of-buffer-text)
(global-set-key (kbd "C-H-a") 'beginning-of-defun)

;; (global-set-key (kbd "C-M-a") 'beginning-of-buffer)
;; (global-set-key (kbd "C-M-S-a") 'my-beginning-of-buffer-text)


;; b
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "C-S-b") 'my-backward-3-chars) ;; TODO
(global-set-key (kbd "C-M-b") 'backward-word)
(global-set-key (kbd "C-M-S-b") 'my-backward-whitespace)
(global-set-key (kbd "C-M-H-b") 'backward-paragraph)
(global-set-key (kbd "C-M-H-S-b") 'my-forward-3-paragraphs)
(global-set-key (kbd "C-H-b") 'backward-sexp)

;; c
(global-set-key (kbd "C-c C-k") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c C-r C-k") 'kill-rectangle)
(global-set-key (kbd "C-c C-r C-d") 'delete-rectangle)
(global-set-key (kbd "C-c C-r C-y") 'yank-rectangle)
(global-set-key (kbd "C-c C-r C-o") 'open-rectangle)
(global-set-key (kbd "C-c C-u") 'upcase-dwim)
(global-set-key (kbd "C-c C-d") 'downcase-dwim)
(global-set-key (kbd "C-c C-w") 'fixup-whitespace)
(global-set-key (kbd "C-c C-l") 'delete-blank-lines)

;; RESERVED for major or minor modes
;; t
;; t is for typing! or rather, less of it please
;; (define-prefix-command 'my-editing-map)
;; (global-set-key (kbd "C-t") 'my-editing-map)
;; (defhydra hydra-move-text (global-map "C-t N")
;;   "Drag lines around."
;;   ("n" move-text-down "down")
;;   ("p" move-text-up "up"))
;; (define-key my-editing-map (kbd "C-s") 'split-line)
;; (define-key my-editing-map (kbd "C-i C-f") 'crux-indent-defun)
;; (define-key my-editing-map (kbd "C-i C-x") 'indent-sexp)
;; (define-key my-editing-map (kbd "C-i C-d") 'delete-indentation)
;; (define-key my-editing-map (kbd "C-i C-;") 'indent-for-comment)
;; (define-key my-editing-map (kbd "C-i C-2") 'indent-to)
;; (define-key my-editing-map (kbd "C-i C-r") 'indent-region)
;; (define-key my-editing-map (kbd "C-i C-g") 'indent-rigidly)
;; (define-key my-editing-map (kbd "C-i C-l") 'indent-relative)
;; (define-key my-editing-map (kbd "C-i <backspace>") 'indent-rigidly-left)
;; (define-key my-editing-map (kbd "C-i SPC") 'indent-rigidly-right)
;; (define-key my-editing-map (kbd "C-i C-c") 'indent-code-rigidly)
;; ;; (global-set-key (kbd "M-i") 'indent-for-tab-command)
;; ;; (global-set-key (kbd "M-i") 'back-to-indentation)
;; (define-key my-editing-map (kbd "C-c") 'crux-capitalize-region)
;; (define-key my-editing-map (kbd "m") 'hydra-move-text/body)
;; (define-key my-editing-map (kbd "C-d") 'downcase-dwim)
;; (define-key my-editing-map (kbd "C-u") 'upcase-dwim)
;; (define-key my-editing-map (kbd "u w") 'upcase-word)
;; (define-key my-editing-map (kbd "u u") 'upcase-dwim)
;; (define-key my-editing-map (kbd "u C-r") 'upcase-region)
;; (define-key my-editing-map (kbd "u r") 'crux-upcase-region)
;; (define-key my-editing-map (kbd "u i") 'upcase-initials-region)
;; (define-key my-editing-map (kbd "C-p") 'hydra-move-text/move-text-up)
;; (define-key my-editing-map (kbd "C-n") 'hydra-move-text/move-text-down)
;; (define-key my-editing-map (kbd "C-j") 'crux-top-join-line)
;; (define-key my-editing-map (kbd "C-o") 'my-open-line-below)
;; (define-key my-editing-map (kbd "C-S-O") 'my-open-line-above)
;; (define-key my-editing-map (kbd "o a") 'my-open-line-above)
;; (define-key my-editing-map (kbd "o b") 'my-open-line-below)
;; (define-key my-editing-map (kbd "C-&") 'crux-duplicate-current-line-or-region)
;; (define-key my-editing-map (kbd "& ;")
;; 	'crux-duplicate-and-comment-current-line-or-region)
;; (define-key my-editing-map (kbd "C-l") 'delete-blank-lines)
;; (define-key my-editing-map (kbd "C-w") 'fixup-whitespace)

;; C

;; d
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "C-S-d") 'my-delete-3-chars)
(global-set-key (kbd "C-M-d") 'kill-word)
(global-set-key (kbd "C-M-S-d") 'my-kill-word-3-words)
(global-set-key (kbd "C-H-d") 'kill-paragraph)
(global-set-key (kbd "C-H-S-d") 'my-kill-3-paragraphs)

;; e
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "C-S-e") 'my-end-of-line-text)
(global-set-key (kbd "C-M-e") 'avy-goto-end-of-line)
(global-set-key (kbd "C-M-S-e") 'my-avy-goto-end-of-line-text)
(global-set-key (kbd "C-M-H-e") 'end-of-buffer)
(global-set-key (kbd "C-M-H-S-e") 'my-end-of-buffer-text)
(global-set-key (kbd "C-H-e") 'end-of-paragraph)

;; (global-set-key (kbd "C-M-e") 'end-of-buffer)
;; (global-set-key (kbd "C-M-S-E") 'end-of-buffer-other-window)

;; f
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "C-S-f") 'my-forward-3-chars)
(global-set-key (kbd "C-M-f") 'forward-word)
(global-set-key (kbd "C-M-S-f") 'forward-whitespace)
(global-set-key (kbd "C-H-f") 'forward-paragraph)
(global-set-key (kbd "C-H-S-f") 'my-forward-3-paragraphs)

;; g
;; (evil-global-set-key 'emacs  (kbd "g") 'keyboard-quit)
(global-set-key (kbd "C-g") 'keyboard-quit)

;; h
;; (global-set-key (kbd "C-h f") 'helm-apropos)
;; (global-set-key (kbd "C-h r") 'helm-info-emacs)
;; (global-set-key (kbd "C-h C-l") 'helm-locate-library)

;; i

;; C-i is bound to TAB

;; delete-indentation
;; ;; Tq
;; ;; https://emacsredux.com/blog/2016/01/31/use-tab-to-indent-or-complete/
;; (define-prefix-command 'my-indenting-map)
;; ;; (evil-global-set-key 'emacs  (kbd "T") 'my-indent-dwim)
;; (global-set-key (kbd "C-S-t") 'my-indenting-map)
;; (define-key my-indenting-map (kbd "f") 'crux-indent-defun)
;; (define-key my-indenting-map (kbd "t") 'my-indent-dwim)
;; (define-key my-indenting-map (kbd ";") 'indent-for-comment)
;; (define-key my-indenting-map (kbd "r") 'indent-rigidly)
;; (define-key my-indenting-map (kbd "x") 'indent-sexp)
;; (define-key my-indenting-map (kbd "p") 'indent-pp-sexp)
;; (define-key my-indenting-map (kbd "2") 'indent-to)
;; ;; TODO explore more indenting commands

;; indent-according-to-mode
;; newline-and-indent
;; reindent-then-newline-and-indent
;; indent-region

;; j
(define-prefix-command 'my-avy-map)

(global-set-key (kbd "C-j") 'avy-goto-char)
(global-set-key (kbd "C-S-j") nil)
(global-set-key (kbd "C-S-j C-S-2") 'avy-goto-char-2)
(global-set-key (kbd "C-S-j C-S-j") 'avy-goto-char)
(global-set-key (kbd "C-S-j C-S-a") 'avy-goto-char-2-above)
(global-set-key (kbd "C-S-j C-S-e") 'avy-goto-char-2-below)
(global-set-key (kbd "C-S-j C-S-b") 'avy-goto-char-2-above)
(global-set-key (kbd "C-S-j C-S-f") 'avy-goto-char-2-below)
(global-set-key (kbd "C-S-j C-S-l") 'avy-goto-char-in-line)
(global-set-key (kbd "C-S-j C-S-w") 'avy-goto-word-1)
(global-set-key (kbd "C-S-j C-S-0") 'avy-goto-word-0)
(global-set-key (kbd "C-S-j C-S-1") 'avy-goto-word-1)
(global-set-key (kbd "C-M-j") 'helm-swoop)
(global-set-key (kbd "C-M-S-j") 'helm-swoop-same-face-at-point)
;; (global-set-key (kbd "C-M-j") 'occur)
(global-set-key (kbd "C-H-j") 'lsp-goto-type-definition)

;; k
(global-set-key (kbd "C-k") 'my-kill-line-or-region)
(global-set-key (kbd "C-S-k") 'my-kill-to-beginning-of-line)
(global-set-key (kbd "C-M-k") nil)
;; (global-set-key (kbd "H-K") nil)
;; (global-set-key (kbd "H-K H-;") 'kill-comment)
;; (global-set-key (kbd "H-K H-:") 'kill-comment)

;; l
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "C-S-l") 'recenter-other-window)
(global-set-key (kbd "C-M-l") 'recenter-top-bottom)

;; m
(global-set-key (kbd "<C-m>") 'set-mark-command)

;; don't think

;; n
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "C-M-n") 'forward-line)
(global-set-key (kbd "C-M-H-n") 'move-text-line-down)
(global-set-key (kbd "C-H-n") 'forward-sexp)

;;
(global-set-key (kbd "C-o") 'er/expand-region)

;; p
(global-set-key (kbd "C-p") 'previous-line)
(global-set-key (kbd "C-M-p") 'my-previous-3-lines)
(global-set-key (kbd "C-M-H-p") 'move-text-line-up)
(global-set-key (kbd "C-H-p") 'backward-sexp)

;; q
;; (global-set-key (kbd "C-q") 'jump-to-register)
;; (global-set-key (kbd "M-q") 'point-to-register)
;; (global-set-key (kbd "H-q") 'switch-to-buffer-in-projectile-register)
;; (global-set-key (kbd "H-M-q") 'buffer-to-projectile-register)

;; (define-prefix-command 'my-register-map)
;; (global-set-key (kbd "C-r") 'my-register-map)
;; (define-key 'my-register-map (kbd "C-v") 'view-register)

;; (define-key 'my-register-map (kbd "C-p") 'point-to-register)
;; (define-key 'my-register-map (kbd "C-j") 'jump-to-register)
;; (define-key 'my-register-map (kbd "p r") 'point-to-register)
;; (define-key 'my-register-map (kbd "p j") 'jump-to-register)

;; (define-key 'my-register-map (kbd "C-i") 'insert-register)

;; ;; r regions
;; (define-key 'my-register-map (kbd "C-r") 'copy-to-register)
;; (define-key 'my-register-map (kbd "r w") 'copy-to-register)
;; (define-key 'my-register-map (kbd "r i") 'insert-register)
;; (define-key 'my-register-map (kbd "r a") 'append-to-register)
;; (define-key 'my-register-map (kbd "r p") 'prepend-to-register)

;; r
(global-set-key (kbd "C-r") 'iy-go-to-char-backward)
(global-set-key (kbd "C-S-r") 'isearch-backward)
(global-set-key (kbd "C-M-r") 'avy-goto-char-2-above)

;; s
(global-set-key (kbd "C-s") 'iy-go-to-char)
(global-set-key (kbd "C-S-s") 'isearch-forward)
(global-set-key (kbd "C-M-s") 'avy-goto-char-2-below)


;; t
(global-set-key (kbd "C-t") 'my-indent-rigidly-1)
(global-set-key (kbd "C-S-t") 'my-unindent-rigidly-1)
(global-set-key (kbd "C-M-t") 'my-indent-rigidly-2)
(global-set-key (kbd "C-M-S-t") 'my-unindent-rigidly-2)

;; u

;; v
(global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
(global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
(global-set-key (kbd "C-M-v") 'scroll-up)
(global-set-key (kbd "C-M-V") 'scroll-down)
(global-set-key (kbd "C-M-v") 'scroll-other-window)
(global-set-key (kbd "C-M-S-v") 'scroll-other-window-down)

;; w
(global-set-key (kbd "C-w") 'whole-line-or-region-kill-ring-save)
;; (global-set-key (kbd "C-S-w") 'whole-line-or-region-kill-ring-save)
(global-set-key (kbd "C-M-w") 'whole-line-or-region-kill-ring-save)
(global-set-key (kbd "C-M-H-w") 'my-apologies)

;; x
(require 'bindings-c-x)

;; y
(global-set-key (kbd "C-y") 'yank)
(global-set-key (kbd "C-M-y") 'helm-show-kill-ring)

;; z
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'undo-redo)

;; <return> 
(global-set-key (kbd "C-<return>") 'eval-last-sexp)
(global-set-key (kbd "M-<return>") 'eval-buffer)
;; (global-set-key (kbd "C-S-<return>") 'mc/edit-lines)
;; (global-set-key (kbd "M-<return>") nil)
;; (global-set-key (kbd "M-<return>") nil)
;; (global-set-key (kbd "M-<return> M-a") 'mc/mark-all-dwim)
;; (global-set-key (kbd "M-<return> M-r") 'mc/mark-all-in-region)
;; (global-set-key (kbd "M-<return> M-l") 'mc/edit-beginnings-of-lines)
;; (global-set-key (kbd "M-<return> M-<return>") 'mc/mark-all-dwim)
;; (global-set-key (kbd "M-<return> M-n") 'mc/mark-next-like-this)
;; (global-set-key (kbd "M-<return> M-p") 'mc/mark-previous-like-this)
;; (global-set-key (kbd "C-M-<return>") 'mc/mark-all-dwim)

;; ;
(global-set-key (kbd "C-;") 'comment-dwim)
(global-set-key (kbd "C-M-;") 'comment-dwim)
(global-set-key (kbd "C-H-;") 'comment-dwim)

;; :
(global-set-key (kbd "C-:") 'goto-line)

;; .
(global-set-key (kbd "C-.") 'er/expand-region)

;; ,
(global-set-key (kbd "C-,") 'er/contract-region)
(global-set-key (kbd "C-<") nil)
(global-set-key (kbd "C->") nil)

;; <

;; /

;; ?

(global-set-key (kbd "C-^") 'move-text-line-up)
(global-set-key (kbd "C-$") 'move-text-line-down)
(global-set-key (kbd "C-*") 'hs-toggle-hiding)
(global-set-key (kbd "C-&") 'yas/expand)

;; (global-set-key (kbd "C-r") 'query-replace)
;; (global-set-key (kbd "C-S-r") 'query-replace-regexp)
;; (global-set-key (kbd "C-M-r") 'my-replace-in-buffer)
;; (global-set-key (kbd "C-M-S-r") 'my-replace-in-buffer-no-fear)
;; (global-set-key (kbd "C-H-r") 'lsp-rename)

(global-set-key (kbd "C-%") 'query-replace) ;; isearch-mode
(global-set-key (kbd "C-M-%") 'query-replace-regexp) ;; isearch-mode

(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)


;; [
;; It's probably a bad idea to bind C-
;; https://emacs.stackexchange.com/questions/7832/how-to-bind-c-for-real
;; C-[ is interpreted at a very early stage as the ASCII control characte a__ar ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.
;; (global-set-key (kbd "C-[") 'my-open-line-above)

;; \
(global-set-key (kbd "C-\\") 'visual-line-mode)

;; ]
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; SPC
(global-set-key (kbd "C-SPC") 'set-mark-command)

;; RET
(global-set-key (kbd "RET") 'newline-and-indent)

;; TAB
(global-set-key [tab] 'company-complete)
;; (global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "TAB") 'tab-indent-or-complete)
(global-set-key (kbd "C-TAB") 'tab-next)
(global-set-key (kbd "S-C-TAB") 'tab-previous)
(setq tab-bar-select-tab-modifiers '(hyper))

;; BACKSPACE
(global-set-key (kbd "C-<backspace>") 'backward-delete-char)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-word)
(global-set-key (kbd "C-M-H-<backspace>") 'backward-kill-paragraph)


(require 'bindings-meta)
(require 'bindings-hyper)


(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<find>") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "<undo>") 'undo)
(global-set-key (kbd "<menu>") 'switch-to-buffer-in-projectile-register)

(global-set-key (kbd "<f1>") 'my-test-project) ;; !
(global-set-key (kbd "<f2>") 'my-run-project) ;; r
(global-set-key (kbd "<f3>") 'my-compile-project)
(global-set-key (kbd "<f4>") 'my-unit-test-project) ;; t
(global-set-key (kbd "<f23>") 'projectile-compile-project) ;; c
(global-set-key (kbd "<f13>") 'hydra-frame-management/body) ;; f
(global-set-key (kbd "<f12>") 'hydra-window-management/body) ;; f
(global-set-key (kbd "<f14>") 'projectile-command-map) ;; p
(global-set-key (kbd "<f15>") 'magit) ;; g
(global-set-key (kbd "<f22>") 'projectile-run-project) 
(global-set-key (kbd "<f24>") 'revert-buffer) ;; v
(global-set-key (kbd "<f11>") 'hydra-window-management/body) ;; w


;; x(global-set-key (kbd "H-M-b") 'projectile-switch-to-buffer)
;; (global-set-key (kbd "H-S-B") 'my-backward-to-sexp) ;; TODO

;; (global-set-key (kbd "H-d") 'kill-sexp)
;; (global-set-key (kbd "H-S-D") 'backward-kill-sexp)


;; (global-set-key (kbd "H-i") 'lsp-organize-imports)

;; (global-set-key (kbd "H-o") 'lsp-organize-imports)
;; (global-set-key (kbd "H-h") 'lsp-describe-thing-at-point)
;; (global-set-key (kbd "H-j") 'lsp-find-definition)
;; (global-set-key (kbd "H-r") 'lsp-rename)
;; (global-set-key (kbd "H-@") 'helm-make-projectile)
;; (global-set-key (kbd "H-x") 'switch-to-buffer-in-projectile-register)




;; yasnippet
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; flycheck
(global-set-key (kbd "C-!") 'flycheck-next-error)
(define-key flycheck-mode-map flycheck-keymap-prefix nil)
(setq flycheck-keymap-prefix (kbd "M-!"))
(define-key flycheck-mode-map flycheck-keymap-prefix flycheck-command-map)
(define-key flycheck-command-map (kbd "n") 'flycheck-next-error)
(define-key flycheck-command-map (kbd "p") 'flycheck-previous-error)
(define-key flycheck-command-map (kbd "l") 'flycheck-list-errors)

;; ;; f frames
;; (define-key 'my-register-map (kbd "C-f") 'frame-configuration-to-register)
;; (define-key 'my-register-map (kbd "f r") 'frame-configuration-to-register)
;; (define-key 'my-register-map (kbd "f j") 'jump-to-frame-config-register)

;; (define-key 'my-register-map (kbd "C-u") 'number-to-register)
;; (define-key 'my-register-map (kbd "u r") 'number-to-register)
;; (define-key 'my-register-map (kbd "u i") 'increment-register)
;; (global-set-key (kbd "M-r") 'jump-to-register)
;; (global-set-key (kbd "H-r") 'lsp-rename)

(require 'bindings-projectile-mode)
(require 'bindings-org-mode)
(require 'bindings-haskell-mode)
;; (require 'bindings-structured-haskell-mode)
(require 'bindings-vterm)
(require 'bindings-clojure-mode)
(require 'bindings-paredit-mode)

(provide 'bindings)




