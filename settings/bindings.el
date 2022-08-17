
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
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
(global-set-key (kbd "C-S-A") 'beginning-of-line)
(global-set-key (kbd "M-a") 'avy-goto-line)
(global-set-key (kbd "M-S-A") 'avy-goto-line-above)
(global-set-key (kbd "C-M-a") 'beginning-of-buffer)
(global-set-key (kbd "C-M-S-A") 'beginning-of-buffer-other-window)

;; b
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "C-S-b") 'my-backward-to-char) ;; TODO
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "M-B") 'backward-to-word)
(global-set-key (kbd "C-M-b") 'backward-sentence)
(global-set-key (kbd "C-M-S-b") 'my-backward-to-sentence) ;; TODO
(global-set-key (kbd "H-b") 'backward-sexp)
(global-set-key (kbd "H-S-B") 'my-backward-to-sexp) ;; TODO

;; c
;; reserved for major or minor modes
(global-set-key (kbd "H-c") 'crux-cleanup-buffer-or-region)

;; C

;; d
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "C-S-D") 'backward-delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "M-S-D") 'backward-kill-word)
(global-set-key (kbd "C-M-d") 'kill-sentence)
(global-set-key (kbd "C-M-S-D") 'my-kill-to-end-of-buffer)
(global-set-key (kbd "H-d") 'kill-sexp)
(global-set-key (kbd "H-S-D") 'backward-kill-sexp)
;; (global-set-key (kbd "H-S-d") 'kill-sexp)


;; e
(global-set-key (kbd "C-e") 'end-of-visual-line)
(global-set-key (kbd "C-S-E") 'end-of-line)
(global-set-key (kbd "M-e") 'avy-goto-end-of-line)
(global-set-key (kbd "M-S-E") 'avy-goto-line-below) ;; TODO
(global-set-key (kbd "C-M-e") 'end-of-buffer)
(global-set-key (kbd "C-M-S-E") 'end-of-buffer-other-window)

;; f
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "M-f") 'forward-word)
(global-set-key (kbd "C-M-f") 'forward-sentence)
(global-set-key (kbd "H-f") 'forward-sexp)

;; g
;; (evil-global-set-key 'emacs  (kbd "g") 'keyboard-quit)

;; G
;; what could go here?
;; maybe resetting windows or something?

;; h
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

;; H

;; i
(global-set-key (kbd "H-i") 'lsp-organize-imports)

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

								
;; (evil-global-set-key 'emacs (kbd "i") 'evil-insert-state)
;; (evil-global-set-key 'emacs (kbd "<insertchar>") 'evil-insert-state)
;; (evil-global-set-key 'insert (kbd "<insertchar>") 'evil-emacs-state)
;; (evil-global-set-key 'emacs (kbd "<insert>") 'evil-insert-state)
;; (evil-global-set-key 'insert (kbd "<insert>") 'evil-emacs-state)


;; I
;; what could go here?
;; maybe open up my bindings files?

;; j
(define-prefix-command 'my-avy-map)

(global-set-key (kbd "C-j") 'avy-goto-char)
(global-set-key (kbd "M-j") nil)
(global-set-key (kbd "M-j M-c") 'avy-goto-char)
(global-set-key (kbd "M-j c c") 'avy-goto-char)
(global-set-key (kbd "M-j c 1") 'avy-goto-char)
(global-set-key (kbd "M-j c 2") 'avy-goto-char-2)
(global-set-key (kbd "M-j c a") 'avy-goto-char-2-above)
(global-set-key (kbd "M-j c b") 'avy-goto-char-2-below)

(global-set-key (kbd "M-j M-2") 'avy-goto-char-2)
(global-set-key (kbd "M-j M-j") 'avy-goto-char)

(global-set-key (kbd "M-j M-a") 'avy-goto-char-2-above)
(global-set-key (kbd "M-j M-e") 'avy-goto-char-2-below)
(global-set-key (kbd "M-j M-b") 'avy-goto-char-2-above)
(global-set-key (kbd "M-j M-f") 'avy-goto-char-2-below)
(global-set-key (kbd "M-j M-l") 'avy-goto-char-in-line)
(global-set-key (kbd "M-j M-w") 'avy-goto-word-1)
(global-set-key (kbd "M-j w 0") 'avy-goto-word-0)
(global-set-key (kbd "M-j w 1") 'avy-goto-word-1)

(global-set-key (kbd "H-j") 'lsp-goto-type-definition)

;; J

;; k
;; (evil-global-set-key 'emacs  (kbd "k") 'my-major-kill-dwim)
(global-set-key (kbd "C-k") 'crux-kill-and-join-forward)
(global-set-key (kbd "M-k") 'crux-smart-kill-line)

;; K
;; (evil-global-set-key 'emacs  (kbd "K") 'crux-kill-line-backwards)
(global-set-key (kbd "C-S-k") 'crux-kill-line-backwards)
;; (global-set-key (kbd "M-S-k") 'kill-word)
;; (global-set-key (kbd "C-M-S-k") 'kill-sentence)

;; l
 ;; (evil-global-set-key 'emacs  (kbd "l") 'recenter-top-bottom)
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "M-l") 'recenter)
(global-set-key (kbd "C-M-l") 'recenter)

;; L
;; (evil-global-set-key 'emacs (kbd "L") 'lsp-keymap-prefix)

;; m
;; (global-set-key (kbd "M-m") 'er/expand-region)
;; (evil-global-set-key 'emacs (kbd "m") 'set-mark-command)

;; (define-key my-mark-map (kbd "f") (define-prefix-command 'my-mark-feature-map))
;; (define-key my-mark-map (kbd "f s") 'er/mark-feature-scenario)
;; (define-key my-mark-map (kbd "f p") 'er/mark-feature-step)

;; (evil-global-set-key 'emacs  (kbd "M") 'mc/mark-all-dwim)


;; n
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "M-n") 'forward-paragraph)

;; o
(global-set-key (kbd "C-o") 'other-frame)
(global-set-key (kbd "C-S-O") 'other-window-or-frame)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "H-o") 'lsp-organize-imports)

;; p
(global-set-key (kbd "C-p") 'previous-line)
(global-set-key (kbd "M-p") 'backward-paragraph)

;; q

;; r
(define-prefix-command 'my-register-map)
(global-set-key (kbd "C-r") 'my-register-map)
(define-key 'my-register-map (kbd "C-v") 'view-register)

;; r points
(define-key 'my-register-map (kbd "C-p") 'point-to-register)
(define-key 'my-register-map (kbd "C-j") 'jump-to-register)
(define-key 'my-register-map (kbd "p r") 'point-to-register)
(define-key 'my-register-map (kbd "p j") 'jump-to-register)

(define-key 'my-register-map (kbd "C-i") 'insert-register)

;; r regions
(define-key 'my-register-map (kbd "C-r") 'copy-to-register)
(define-key 'my-register-map (kbd "r w") 'copy-to-register)
(define-key 'my-register-map (kbd "r i") 'insert-register)
(define-key 'my-register-map (kbd "r a") 'append-to-register)
(define-key 'my-register-map (kbd "r p") 'prepend-to-register)

;; w windows
(define-key 'my-register-map (kbd "C-w") 'window-configuration-to-register)

;; f frames
(define-key 'my-register-map (kbd "C-f") 'frame-configuration-to-register)
(define-key 'my-register-map (kbd "f r") 'frame-configuration-to-register)
(define-key 'my-register-map (kbd "f j") 'jump-to-frame-config-register)

(define-key 'my-register-map (kbd "C-u") 'number-to-register)
(define-key 'my-register-map (kbd "u r") 'number-to-register)
(define-key 'my-register-map (kbd "u i") 'increment-register)
(global-set-key (kbd "M-r") 'jump-to-register)
(global-set-key (kbd "H-r") 'lsp-rename)

;; s
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-S-S") 'isearch-backward)
(global-set-key (kbd "M-S-S") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'my-isearch-forward-from-beginning-of-buffer)

;; t
;; t is for typing! or rather, less of it please
(define-prefix-command 'my-editing-map)
(global-set-key (kbd "C-t") 'my-editing-map)
(defhydra hydra-move-text (global-map "C-t N")
  "Drag lines around."
  ("n" move-text-down "down")
  ("p" move-text-up "up"))
(define-key my-editing-map (kbd "C-s") 'split-line)
(define-key my-editing-map (kbd "C-i C-f") 'crux-indent-defun)
(define-key my-editing-map (kbd "C-i C-x") 'indent-sexp)
(define-key my-editing-map (kbd "C-i C-d") 'delete-indentation)
(define-key my-editing-map (kbd "C-i C-;") 'indent-for-comment)
(define-key my-editing-map (kbd "C-i C-2") 'indent-to)
(define-key my-editing-map (kbd "C-i C-r") 'indent-region)
(define-key my-editing-map (kbd "C-i C-g") 'indent-rigidly)
(define-key my-editing-map (kbd "C-i C-l") 'indent-relative)	
(define-key my-editing-map (kbd "C-i <backspace>") 'indent-rigidly-left)
(define-key my-editing-map (kbd "C-i SPC") 'indent-rigidly-right)
(define-key my-editing-map (kbd "C-i C-c") 'indent-code-rigidly)
;; (global-set-key (kbd "M-i") 'indent-for-tab-command)
;; (global-set-key (kbd "M-i") 'back-to-indentation)
(define-key my-editing-map (kbd "C-c") 'crux-capitalize-region)
(define-key my-editing-map (kbd "m") 'hydra-move-text/body)
(define-key my-editing-map (kbd "C-d") 'downcase-dwim)
(define-key my-editing-map (kbd "C-u") 'upcase-dwim)
(define-key my-editing-map (kbd "u w") 'upcase-word)
(define-key my-editing-map (kbd "u u") 'upcase-dwim)
(define-key my-editing-map (kbd "u C-r") 'upcase-region)
(define-key my-editing-map (kbd "u r") 'crux-upcase-region)
(define-key my-editing-map (kbd "u i") 'upcase-initials-region)
(define-key my-editing-map (kbd "C-p") 'hydra-move-text/move-text-up)
(define-key my-editing-map (kbd "C-n") 'hydra-move-text/move-text-down)
(define-key my-editing-map (kbd "C-j") 'crux-top-join-line)
(define-key my-editing-map (kbd "C-o") 'my-open-line-below)
(define-key my-editing-map (kbd "C-S-O") 'my-open-line-above)
(define-key my-editing-map (kbd "o a") 'my-open-line-above)
(define-key my-editing-map (kbd "o b") 'my-open-line-below)
(define-key my-editing-map (kbd "C-&") 'crux-duplicate-current-line-or-region)
(define-key my-editing-map (kbd "& ;")
	'crux-duplicate-and-comment-current-line-or-region)
(define-key my-editing-map (kbd "C-l") 'delete-blank-lines)
(define-key my-editing-map (kbd "C-w") 'fixup-whitespace)

;; u

;; U

;; v
(global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
(global-set-key (kbd "C-S-V") 'my-scroll-8-lines-down)
(global-set-key (kbd "M-v") 'scroll-up)
(global-set-key (kbd "M-S-V") 'scroll-down)
;; scroll-line-up, recenter

;; w
;; (evil-global-set-key 'emacs  (kbd "w") 'whole-line-or-region-kill-ring-save)

;; x
(require 'bindings-c-x)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "H-x") 'switch-to-buffer-in-projectile-register)

;; X
;; (evil-global-set-key 'emacs  (kbd "X") 'my-eval-dwim) ;; eval dwim
;; (global-set-key (kbd "M-S-x") 'my-eval-dwim)
;; (global-set-key (kbd "C-M-S-x") 'my-eval-dwim)
;; (global-set-key (kbd "C-<return>") 'my-eval-dwim)
;; (define-prefix-command 'my-eval-map)
;; (global-set-key (kbd "C-S-x") 'my-eval-map)
;; (define-key my-eval-map (kbd "x") 'my-eval-dwim) ;; eval dwim
;; (define-key my-eval-map (kbd "f") 'eval-defun)
;; (define-key my-eval-map (kbd "x") 'eval-last-sexp)
;; (define-key my-eval-map (kbd "y") 'crux-eval-and-replace)
;; (define-key my-eval-map (kbd "b") 'eval-buffer)
;; (define-key my-eval-map (kbd "r") 'eval-region)
;; (define-key my-eval-map (kbd "p") 'eval-print-last-sexp)

;; y
(global-set-key (kbd "C-y") 'yank)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; z
(global-set-key (kbd "C-z") 'undo)
;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; !
(global-set-key (kbd "C-!") 'vterm)
(global-set-key (kbd "M-!") 'shell-command)
;; (global-set-key (kbd "H-!") 'next-error)

;; "

;; #
(define-prefix-command 'my-rectangle-map)
(global-set-key (kbd "C-#") 'my-rectangle-map)
(define-key 'my-rectangle-map (kbd "C-k") 'kill-rectangle)
(define-key 'my-rectangle-map (kbd "M-w") 'copy-rectangle-as-kill)
(define-key 'my-rectangle-map (kbd "C-w") 'copy-rectangle-as-kill)
(define-key 'my-rectangle-map (kbd "C-d") 'delete-rectangle)
(define-key 'my-rectangle-map (kbd "C-y") 'yank-rectangle)
(define-key 'my-rectangle-map (kbd "C-o") 'open-rectangle)
(define-key 'my-rectangle-map (kbd "C-c") 'clear-rectangle)
(define-key 'my-rectangle-map (kbd "C-n") 'rectangle-number-lines)
(define-key 'my-rectangle-map (kbd "C-t") 'delete-whitespace-rectangle)
(define-key 'my-rectangle-map (kbd "C-s") 'string-rectangle)
(define-key 'my-rectangle-map (kbd "C-i") 'string-insert-rectangle)
(define-key 'my-rectangle-map (kbd "C-SPC") 'rectangle-mark-mode)
(global-set-key (kbd "M-#") 'kill-rectangle)
;; (global-set-key (kbd "C-#") 'er/expand-region)
;; (global-set-key (kbd "M-#") 'er/contract-region)

;; $
(global-set-key (kbd "C-$") 'ispell-word)
(global-set-key (kbd "M-$") 'ispell)

;; %
(global-set-key (kbd "C-%") 'query-replace)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "H-%") 'lsp-rename)

;; &
(global-set-key (kbd "C-&") 'crux-duplicate-current-line-or-region)

;; '

;; (
(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)

;; )
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)

;; *
;; (global-set-key (kbd "C-*") )

;; +

;; ,
(define-prefix-command 'my-mc-map)
(global-set-key (kbd "C-,") 'my-mc-map)
(define-key my-mc-map (kbd "C-a") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "C-r") 'mc/mark-all-in-region)
(define-key my-mc-map (kbd "C-l") 'mc/edit-beginnings-of-lines)
(define-key my-mc-map (kbd "C-m") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "C-n") 'mc/mark-next-like-this)
(define-key my-mc-map (kbd "C-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-,") 'mc/mark-all-dwim)

;; -
;; (global-set-key (kbd "C--") 'kmacro-end-or-call-macro)

;; .
(define-prefix-command 'my-mark-map)
(global-set-key (kbd "C-.") 'my-mark-map)
(define-key my-mark-map (kbd "C-a") 'er/mark-next-accessor)
(define-key my-mark-map (kbd "C-b") 'er/mark-whole-buffer)
(define-key my-mark-map (kbd "C-c") 'er/mark-method-call)
(define-key my-mark-map (kbd "C-e") 'er/mark-email)
(define-key my-mark-map (kbd "C-f") 'er/mark-defun)
(define-key my-mark-map (kbd "C-l") 'my-mark-current-line)
(define-key my-mark-map (kbd "C-p") 'er/mark-inside-pairs)
(define-key my-mark-map (kbd "C-p") 'er/mark-paragraph)
(define-key my-mark-map (kbd "C-q") 'er/mark-outside-quotes)
(define-key my-mark-map (kbd "q o") 'er/mark-outside-quotes)
(define-key my-mark-map (kbd "q i") 'er/mark-inside-quotes)
(define-key my-mark-map (kbd "C-s") 'er/mark-sentence)
(define-key my-mark-map (kbd "C-u") 'er/mark-url)
(define-key my-mark-map (kbd "C-w") 'er/mark-word)
(define-key my-mark-map (kbd "C-y") 'er/mark-symbol)
(define-key my-mark-map (kbd "C-.") 'set-mark-command)
(define-key my-mark-map (kbd "C-'") 'er/mark-inside-quotes)
(define-key my-mark-map (kbd "C--") 'er/contract-region)
(define-key my-mark-map (kbd "C-;") 'er/mark-comment)
(define-key my-mark-map (kbd "C-=") 'er/expand-region)
(define-key my-mark-map (kbd "C-S-Q") 'er/mark-inside-quotes)
(define-key my-mark-map (kbd "C-S-Y") 'er/mark-symbol-with-prefix)
(define-key my-mark-map (kbd "C-SPC") 'er/expand-region)
(define-key my-mark-map (kbd "C-\"") 'er/mark-outside-quotes)
(global-set-key (kbd "M-.") 'er/expand-region)
(global-set-key (kbd "H-.") 'hs-toggle-hiding)

;; /
(global-set-key (kbd "C-/") 'undo)

;; :

;; ;
(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; <
(global-set-key (kbd "C-<") 'my-join-line-above)

;; >
(global-set-key (kbd "C->") 'my-join-line-below)

;; =

;; ?
(global-set-key (kbd "C-?") 'hs-toggle-hiding)

;; @
(global-set-key (kbd "C-@") 'set-mark-command)
(global-set-key (kbd "M-@") 'er/expand-region)
(setq expand-region-contract-fast-key "<backspace>")

;; [
;; It's probably a bad idea to bind C-
;; https://emacs.stackexchange.com/questions/7832/how-to-bind-c-for-real
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.
;; (global-set-key (kbd "C-[") 'my-open-line-above)

;; \
(global-set-key (kbd "C-\\") 'visual-line-mode)

;; ]
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; ^
(global-set-key (kbd "C-^") 'sort-lines)
(global-set-key (kbd "M-^") 'sort-paragraphs)

;; _
;;

;; {
(global-set-key (kbd "C-{") 'my-open-line-above)
(global-set-key (kbd "M-{") 'my-delete-blank-lines-above)

;; }
(global-set-key (kbd "C-}") 'my-open-line-below)
(global-set-key (kbd "M-}") 'my-delete-blank-lines-below)

;; |
(global-set-key (kbd "C-|") 'split-line)

;; SPC
(global-set-key (kbd "C-SPC") 'set-mark-command)
(global-set-key (kbd "M-SPC") 'my-mark-map)

;; RET
(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)
(global-set-key (kbd "C-<return>") nil)
(global-set-key (kbd "M-<return>") nil)
(global-set-key (kbd "H-<return>") 'my-eval-dwim)

;; TAB
(global-set-key [tab] 'company-complete)
(global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "C-TAB") 'tab-next)
(global-set-key (kbd "S-C-TAB") 'tab-previous)
(global-set-key (kbd "M-<tab>") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "C-M-<tab>") 'buffer-to-projectile-register)
(setq tab-bar-select-tab-modifiers '(hyper))

;; BACKSPACE
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sentence)


(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<find>") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "<undo>") 'undo)
(global-set-key (kbd "<menu>") 'switch-to-buffer-in-projectile-register)
;; (global-set-key (kbd "C-z") 'undo)

;; (evil-global-set-key 'emacs  (kbd "<backspace>") 'backward-delete-char)
;; (evil-global-set-key 'emacs  (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'emacs  (kbd "M-<backspace>") 'crux-kill-line-backwards)

(global-set-key (kbd "<f1>") 'switch-to-buffer-in-projectile-register) ;; a
(global-set-key (kbd "H-<f1>") 'buffer-to-projectile-register) ;; a

(global-set-key (kbd "<f2>") 'projectile-test-project)
(global-set-key (kbd "<f3>") 'projectile-run-vterm) ;; s
(global-set-key (kbd "<f4>") 'projectile-test-project) ;; t
(global-set-key (kbd "<f23>") 'projectile-compile-project) ;; c
(global-set-key (kbd "<f13>") 'projectile-find-file) ;; f
(global-set-key (kbd "<f14>") 'projectile-switch-project) ;; p
(global-set-key (kbd "<f15>") 'magit) ;; g

(global-set-key (kbd "<f22>") 'projectile-run-project)
(global-set-key (kbd "<f24>") 'revert-buffer) ;; v

;; (global-set-key (kbd "<f1> c") 'calendar)
;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

;; hs-minor-mode
(global-set-key (kbd "C-c C-.") 'hs-toggle-hiding)

;; yasnippet 
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; projectile
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "x") 'projectile-test-project)
(define-key projectile-command-map (kbd "b")
	'projectile-switch-to-buffer)
(define-key projectile-command-map (kbd "r") nil)
(define-key projectile-command-map (kbd "r r")
	'switch-to-buffer-in-projectile-register)
(define-key projectile-command-map (kbd "r s") 'buffer-to-projectile-register)


(define-key projectile-command-map (kbd "1") 'projectile-find-test-file)
(define-key projectile-command-map (kbd "1") 'projectile-toggle-between-implementation-and-test)

(define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "V") 'projectile-run-vterm-dwim)
(define-key projectile-command-map (kbd "t") 'my-jump-to-project-todo-file)
;; (define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "d") 'projectile-debug)
;; (define-key projectile-command-map (kbd "g") 'projectile-grep)

;; (define-key projectile-mode-map (kbd "C-x C-p x") 'projectile-test-project)
;; (define-key projectile-mode-map (kbd "C-x C-p t") 'projectile-run-term)
;; (define-key projectile-mode-map (kbd "C-x C-p t n") 'term-projectile-create-new)
;; (define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
;; (define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
;; (define-key projectile-mode-map (kbd "C-x p t s") 'term-projectile-switch-to)

;; flycheck
(define-key flycheck-mode-map flycheck-keymap-prefix nil)
(setq flycheck-keymap-prefix (kbd "C-c !"))
(define-key flycheck-mode-map flycheck-keymap-prefix flycheck-command-map)
(define-key flycheck-command-map (kbd "C-n") 'flycheck-next-error)
(define-key flycheck-command-map (kbd "C-p") 'flycheck-previous-error)
(define-key flycheck-command-map (kbd "C-l") 'flycheck-list-errors)

;; haskell-stack-mode
(define-key haskell-stack-mode-map (kbd "<f2>")
	'haskell-stack-testing-vterm-dwim)
(define-key haskell-mode-map (kbd "H-t") 'haskell-stack-testing-vterm-dwim)

(require 'bindings-org-mode)
(require 'bindings-haskell-mode)

(provide 'bindings)

