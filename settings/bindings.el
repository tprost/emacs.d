
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
(global-set-key (kbd "C-i") nil)
(global-set-key (kbd "C-i C-s") 'split-line)
(global-set-key (kbd "C-i C-f") 'crux-indent-defun)
(global-set-key (kbd "C-i C-x") 'indent-sexp)
(global-set-key (kbd "C-i C-d") 'delete-indentation)
(global-set-key (kbd "C-i C-;") 'indent-for-comment)
(global-set-key (kbd "C-i C-2") 'indent-to)
(global-set-key (kbd "C-i C-r") 'indent-region)
(global-set-key (kbd "C-i C-g") 'indent-rigidly)
(global-set-key (kbd "C-i C-l") 'indent-relative)	
(global-set-key (kbd "C-i <backspace>") 'indent-rigidly-left)
(global-set-key (kbd "C-i SPC") 'indent-rigidly-right)
(global-set-key (kbd "C-i C-c") 'indent-code-rigidly)
(global-set-key (kbd "M-i") 'indent-for-tab-command)
;; (global-set-key (kbd "M-i") 'back-to-indentation)
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
;; (evil-global-set-key 'emacs (kbd "n") 'forward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)
;; (global-set-key (kbd "M-n") '

;; N

;; o
(global-set-key (kbd "C-o") 'other-window)
(global-set-key (kbd "M-o") 'other-frame)
(global-set-key (kbd "H-o") 'lsp-organize-imports)
;; code folding
;; (evil-global-set-key 'emacs (kbd "o") 'hs-toggle-hiding)
;; (evil-global-set-key 'emacs (kbd "C-o") 'hs-hide-block)
;; (evil-global-set-key 'emacs (kbd "M-o") 'hs-show-block)
;; (define-prefix-command 'my-hs-map)
;; (define-key my-hs-map (kbd "s") 'hs-show-all)
;; (define-key my-hs-map (kbd "h") 'hs-hide-all)
;; (define-key my-hs-map (kbd "l") 'hs-hide-level)
;; (evil-global-set-key 'emacs (kbd "C-M-o") 'my-hs-map)
;; (evil-global-set-key 'insert (kbd "C-o") 'my-open-line-below)
;; (evil-global-set-key 'insert (kbd "M-o") 'my-open-line-above)
;; (evil-global-set-key 'insert (kbd "C-M-o") 'my-trim-lines-above-and-below)

;; O
;; (evil-global-set-key 'emacs  (kbd "O") 'er/expand-region)
;; (evil-global-set-key 'emacs  (kbd "M-S-o") 'er/contract-region)

;; p
(global-set-key (kbd "M-p") 'backward-paragraph)

;; (evil-global-set-key 'emacs  (kbd "p") 'backward-paragraph)


;; P
;; (evil-global-set-key 'emacs (kbd "P") 'projectile-command-map)

                
                
;; q
;; (global-set-key (kbd "C-q") nil)
;; (global-set-key (kbd "C-q n") 'next-error)
;; (global-set-key (kbd "C-q p") 'previous-error)
;; (global-set-key (kbd "M-q") 'flycheck-next-error)

;;   ---             -------

;; C-c !           Prefix Command

;; C-c ! C-c       flycheck-compile
;; C-c ! C-w       flycheck-copy-errors-as-kill
;; C-c ! ?         flycheck-describe-checker
;; C-c ! C         flycheck-clear
;; C-c ! H         display-local-help
;; C-c ! V         flycheck-version
;; C-c ! c         flycheck-buffer
;; C-c ! e         flycheck-explain-error-at-point
;; C-c ! h         flycheck-display-error-at-point
;; C-c ! i         flycheck-manual
;; C-c ! l         flycheck-list-errors
;; C-c ! n         flycheck-next-error
;; C-c ! p         flycheck-previous-error
;; C-c ! s         flycheck-select-checker
;; C-c ! v         flycheck-verify-setup
;; C-c ! x         flycheck-disable-checker


;; Q

;; r
(global-set-key (kbd "H-r") 'lsp-rename)
(global-set-key (kbd "H-r") 'lsp-rename)
;; (evil-global-set-key 'emacs  (kbd "r") 'isearch-backward)

;; R

;; s
;; (evil-global-set-key 'emacs  (kbd "s") 'isearch-forward)
;; (global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "M-s") 'isearch-forward-regexp)

;; S

;; t
;; (global-set-key (kbd "C-t") 'tab-next)
;; (global-set-key (kbd "C-S-T") 'tab-previous)
;; (global-set-key (kbd "M-t") 'tab-switch)
;; (global-set-key (kbd "M-S-T") 'tab-switch)



;; t is for typing!

;; (define-prefix-command 'my-editing-map)
;; ;; (evil-global-set-key 'emacs  (kbd "t") 'my-editing-map)
;; (global-set-key (kbd "C-t") 'my-editing-map)

;; (defhydra hydra-move-text (global-map "C-t N")
;;   "Drag lines around."
;;   ("n" move-text-down "down")
;;   ("p" move-text-up "up"))

;; (define-key my-editing-map (kbd "c") 'crux-capitalize-region)
;; (define-key my-editing-map (kbd "d") 'downcase-dwim)
;; (define-key my-editing-map (kbd "u") 'upcase-dwim)
;;  ;; TODO fix ispell and bind to something else
;; (define-key my-editing-map (kbd "?") 'crux-ispell-word-then-abbrev)
;; (define-key my-editing-map (kbd "o") 'my-open-line-below)
;; (define-key my-editing-map (kbd "p") 'hydra-move-text/move-text-up)
;; (define-key my-editing-map (kbd "n") 'hydra-move-text/move-text-down)
;; (define-key my-editing-map (kbd "^") 'crux-top-join-line)
;; (define-key my-editing-map (kbd "C-o") 'my-open-line-below-and-move)
;; (define-key my-editing-map (kbd "O") 'my-open-line-above)
;; (define-key my-editing-map (kbd "C-S-o") 'my-open-line-above-and-move)
;; (define-key my-editing-map (kbd "s") 'sort-lines)
;; (define-key my-editing-map (kbd "&") 'crux-duplicate-current-line-or-region)
;; (define-key my-editing-map (kbd "l") 'delete-blank-lines)
;; (define-key my-editing-map (kbd "w") 'fixup-whitespace)
;; ;; (define-key my-editing-map (kbd "&") 'crux-duplicate-and-comment-current-line-or-region)
;; ;; fixup-whitespace

;; T

;; u

;; U

;; v
;; (evil-global-set-key 'emacs (kbd "v") 'recenter)
;; (evil-global-set-key 'emacs (kbd "C-v") 'scroll-up)
;; (evil-global-set-key 'emacs (kbd "M-v") 'scroll-down)
;; (evil-global-set-key 'insert  (kbd "C-v") 'my-scroll-8-lines-up)
;; (evil-global-set-key 'insert  (kbd "M-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "C-M-v") 'recenter)
;; (global-set-key (kbd "C-v") 'scroll-up-command)
;; (global-set-key (kbd "M-v") 'scroll-down-command) ;; a lot somehow?
;; (global-set-key (kbd "C-M-v") 'scroll-line-up)
;; (evil-global-set-key 'emacs (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; V
;; (evil-global-set-key 'emacs  (kbd "V") 'scroll-down)
;; (global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
;; (global-set-key (kbd "M-S-v") 'scroll-page-down)
;; (global-set-key (kbd "C-M-S-v") 'scroll-line-down)

;; w
;; (evil-global-set-key 'emacs  (kbd "w") 'whole-line-or-region-kill-ring-save)

;; x
(require 'bindings-c-x)
(global-set-key (kbd "M-x") 'helm-M-x)

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

;; Y
;; ?

;; z
(global-set-key (kbd "C-z") 'undo)
;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; Z
;; ?

;; !
;; (global-set-key (kbd "H-!") 'next-error)

;; @
(global-set-key (kbd "C-@") 'set-mark-command)
(global-set-key (kbd "M-@") 'er/expand-region)
(setq expand-region-contract-fast-key "<backspace>")

;; #
;; (global-set-key (kbd "C-#") 'er/expand-region)
;; (global-set-key (kbd "M-#") 'er/contract-region)

;; $
;; (global-set-key (kbd "C-$") 'ispell-word)
;; (global-set-key (kbd "M-$") 'ispell)

;; %
(global-set-key (kbd "C-%") 'query-replace)
(global-set-key (kbd "M-%") 'query-replace-regexp)
(global-set-key (kbd "H-%") 'lsp-rename)

;; ^
(global-set-key (kbd "C-^") 'sort-lines)
;; (global-set-key (kbd "M-^") 'sort-paragraphs)

;; &
;; (global-set-key (kbd "C-&") )

;; *
;; (global-set-key (kbd "C-*") )

;; (
(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)

;; )
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)

;; -
;; (global-set-key (kbd "C--") 'kmacro-end-or-call-macro)

;; _
;;

;; +

;; =

;; [
;; It's probably a bad idea to bind C-
;; https://emacs.stackexchange.com/questions/7832/how-to-bind-c-for-real
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.
;; (global-set-key (kbd "C-[") 'my-open-line-above)

;; ]
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; {
(global-set-key (kbd "C-{") 'my-open-line-above)

;; }
(global-set-key (kbd "C-}") 'my-open-line-below)

;; \
(global-set-key (kbd "C-\\") 'visual-line-mode)

;; |
;; (global-set-key (kbd "C-|") 'my-open-line-below)

;; ;
(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; :

;; '

;; "

;; ,
(global-set-key (kbd "C-,") 'mc/mark-all-dwim)
(define-prefix-command 'my-mc-map)
(global-set-key (kbd "M-,") 'my-mc-map)
(define-key my-mc-map (kbd "M-a") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "M-r") 'mc/mark-all-in-region)
(define-key my-mc-map (kbd "M-l") 'mc/edit-beginnings-of-lines)
(define-key my-mc-map (kbd "M-m") 'mc/mark-all-dwim)
(define-key my-mc-map (kbd "M-n") 'mc/mark-next-like-this)
(define-key my-mc-map (kbd "M-p") 'mc/mark-previous-like-this)

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

;; <
(global-set-key (kbd "C-<") 'scroll-down-line)
(global-set-key (kbd "M-<") 'scroll-down-command)

;; >
(global-set-key (kbd "C->") 'scroll-up-line)
(global-set-key (kbd "M->") 'scroll-up-command)

;; /
(global-set-key (kbd "C-/") 'undo)

;; ?
(global-set-key (kbd "C-?") 'hs-toggle-hiding)

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
(global-set-key (kbd "M-<tab>") 'tab-switch)
(setq tab-bar-select-tab-modifiers '(hyper))

;; BACKSPACE
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-sentence)


(global-set-key (kbd "<home>") 'beginning-of-buffer)
(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "<find>") 'search-forward)
(global-set-key (kbd "<undo>") 'undo)
;; (global-set-key (kbd "C-z") 'undo)

;; (evil-global-set-key 'emacs  (kbd "<backspace>") 'backward-delete-char)
;; (evil-global-set-key 'emacs  (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'emacs  (kbd "M-<backspace>") 'crux-kill-line-backwards)


(global-set-key (kbd "C-c C-.") 'hs-toggle-hiding)

(global-set-key (kbd "<f1>") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "<f2>") 'revert-buffer)
;; (global-set-key (kbd "<f3>") 'kmacro-start-macro-or-insert-counter)
;; (global-set-key (kbd "<f4>") 'kmacro-end-or-call-macro)

;; project level hotkeys
(global-set-key (kbd "<f5>") 'projectile-test-project)
(global-set-key (kbd "<f6>") 'projectile-compile-project)
(global-set-key (kbd "<f7>") 'projectile-run-vterm)
(global-set-key (kbd "<f8>") 'projectile-grep)
(global-set-key (kbd "<f9>") 'projectile-find-file)

;; (global-set-key (kbd "<f1> c") 'calendar)
;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)

;; yasnippet 
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; projectile
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)
;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "x") 'projectile-test-project)

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

(require 'bindings-org-mode)
(require 'bindings-haskell-mode)

(provide 'bindings)

