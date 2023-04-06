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
(global-set-key (kbd "M-a") 'avy-goto-line)
(global-set-key (kbd "M-A") 'my-avy-goto-line-text)
(global-set-key (kbd "C-M-a") 'beginning-of-buffer)
(global-set-key (kbd "C-M-S-a") 'my-beginning-of-buffer-text)
(global-set-key (kbd "H-a") 'beginning-of-defun)

;; b
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "C-S-b") 'my-backward-3-chars) ;; TODO
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "M-B") 'my-backward-whitespace)
(global-set-key (kbd "C-M-b") 'backward-paragraph)
(global-set-key (kbd "C-M-S-b") 'my-forward-3-paragraphs)
(global-set-key (kbd "H-b") 'backward-sexp)

;; c
(global-set-key (kbd "C-c C-k") 'delete-trailing-whitespace)
;; reserved for major or minor modes
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
(global-set-key (kbd "C-S-d") 'delete-backward-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "M-D") 'backward-kill-word)
(global-set-key (kbd "C-M-d") 'kill-paragraph)
(global-set-key (kbd "C-M-S-d") 'backward-kill-paragraph)

;; e
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "C-S-e") 'my-end-of-line-text)
(global-set-key (kbd "M-e") 'avy-goto-end-of-line)
(global-set-key (kbd "M-E") 'my-avy-goto-end-of-line-text)
(global-set-key (kbd "C-M-e") 'end-of-buffer)
(global-set-key (kbd "C-M-S-e") 'my-end-of-buffer-text)
(global-set-key (kbd "H-e") 'forward-paragraph)
;; (global-set-key (kbd "C-M-e") 'end-of-buffer)
;; (global-set-key (kbd "C-M-S-E") 'end-of-buffer-other-window)

;; f
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "C-S-f") 'my-forward-3-chars)
(global-set-key (kbd "M-f") 'forward-word)
(global-set-key (kbd "M-F") 'forward-whitespace)
(global-set-key (kbd "C-M-f") 'forward-paragraph)
(global-set-key (kbd "C-M-S-f") 'my-forward-3-paragraphs)

;; g
;; (evil-global-set-key 'emacs  (kbd "g") 'keyboard-quit)
(global-set-key (kbd "C-g") 'keyboard-quit)

;; h
(global-set-key (kbd "C-h f") 'helm-apropos)
(global-set-key (kbd "C-h r") 'helm-info-emacs)
(global-set-key (kbd "C-h C-l") 'helm-locate-library)

;; i
(global-set-key (kbd "M-i") 'indent-for-tab-command)
(global-set-key (kbd "H-i") 'indent-for-tab-command)
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
(global-set-key (kbd "M-j") nil)
(global-set-key (kbd "M-j M-2") 'avy-goto-char-2)
(global-set-key (kbd "M-j M-j") 'avy-goto-char)
(global-set-key (kbd "M-j M-a") 'avy-goto-char-2-above)
(global-set-key (kbd "M-j M-e") 'avy-goto-char-2-below)
(global-set-key (kbd "M-j M-b") 'avy-goto-char-2-above)
(global-set-key (kbd "M-j M-f") 'avy-goto-char-2-below)
(global-set-key (kbd "M-j M-l") 'avy-goto-char-in-line)
(global-set-key (kbd "M-j M-w") 'avy-goto-word-1)
(global-set-key (kbd "M-j M-0") 'avy-goto-word-0)
(global-set-key (kbd "M-j M-1") 'avy-goto-word-1)
(global-set-key (kbd "C-M-j") 'occur)
(global-set-key (kbd "H-j") 'helm-semantic-or-imenu)

;; k
(global-set-key (kbd "C-k") 'my-kill-line-or-region)
(global-set-key (kbd "C-S-k") 'my-kill-to-beginning-of-line)
(global-set-key (kbd "M-k") nil)
(global-set-key (kbd "M-k M-w") 'kill-word)
(global-set-key (kbd "M-k M-r") 'kill-region)
(global-set-key (kbd "M-k M-p") 'kill-paragraph)
(global-set-key (kbd "M-k M-s") 'kill-sentence)
(global-set-key (kbd "M-k M-l") 'kill-whole-line)
(global-set-key (kbd "M-k M-#") 'kill-rectangle)
(global-set-key (kbd "H-k") 'kill-sexp)
;; (global-set-key (kbd "H-K") nil)
;; (global-set-key (kbd "H-K H-;") 'kill-comment)
;; (global-set-key (kbd "H-K H-:") 'kill-comment)

;; l
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "C-S-l") 'recenter-other-window)
(global-set-key (kbd "M-l") 'recenter-top-bottom)

;; m

;; n
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "M-n") 'forward-line)
(global-set-key (kbd "C-M-n") 'move-text-line-down)
(global-set-key (kbd "H-n") 'backward-sexp)

;; o
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-S-o") 'er/contract-region)
(global-set-key (kbd "M-o") nil)
(global-set-key (kbd "M-o M-l") 'my-mark-current-line)
(global-set-key (kbd "M-o M-w") 'er/mark-word)
(global-set-key (kbd "M-o M-f") 'er/mark-defun)
(global-set-key (kbd "M-o M-=") 'er/mark-next-accessor)
(global-set-key (kbd "M-o M-b") 'er/mark-whole-buffer)
(global-set-key (kbd "M-o M-c") 'er/mark-method-call)
(global-set-key (kbd "M-o M-@") 'er/mark-email)
(global-set-key (kbd "M-o M-[") 'er/mark-inside-pairs)
(global-set-key (kbd "M-o M-{") 'er/mark-outside-pairs)
(global-set-key (kbd "M-o M-]") 'er/mark-inside-pairs)
(global-set-key (kbd "M-o M-}") 'er/mark-outside-pairs)
(global-set-key (kbd "M-o M-p") 'er/mark-paragraph)
(global-set-key (kbd "M-o M-\"") 'er/mark-outside-quotes)
(global-set-key (kbd "M-o M-'") 'er/mark-inside-quotes)
(global-set-key (kbd "M-o M-s") 'er/mark-sentence)
(global-set-key (kbd "M-o M-u") 'er/mark-url)
(global-set-key (kbd "M-o M-s") 'er/mark-symbol)
(global-set-key (kbd "M-o M-;") 'er/mark-comment)
(global-set-key (kbd "M-o M-:") 'er/mark-comment)
(global-set-key (kbd "H-o") 'mark-sexp)

;; p
(global-set-key (kbd "C-p") 'previous-line)
(global-set-key (kbd "M-p") 'backward-line)
(global-set-key (kbd "C-M-p") 'move-text-line-up)
(global-set-key (kbd "H-p") 'backward-sexp)

;; q

;; r
(global-set-key (kbd "C-r") 'my-replace-in-buffer)
(global-set-key (kbd "M-r") 'my-replace-in-buffer-no-fear)
(global-set-key (kbd "H-r") 'lsp-rename)

;; s
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-S-s") 'isearch-backward)
(global-set-key (kbd "M-s") 'helm-swoop)
(global-set-key (kbd "M-S") 'helm-swoop-same-face-at-point)
(global-set-key (kbd "C-M-s") 'helm-multi-swoop)
(global-set-key (kbd "C-M-S") 'helm-multi-swoop-all)
(global-set-key (kbd "H-s") 'helm-multi-swoop-projectile)

;; t

;; u

;; v
(global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
(global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
(global-set-key (kbd "M-v") 'scroll-up)
(global-set-key (kbd "M-V") 'scroll-down)
(global-set-key (kbd "C-M-v") 'scroll-other-window)
(global-set-key (kbd "C-M-S-v") 'scroll-other-window-down)

;; w
(global-set-key (kbd "C-w") 'whole-line-or-region-kill-ring-save)
;; (global-set-key (kbd "C-S-w") 'whole-line-or-region-kill-ring-save)
(global-set-key (kbd "C-M-w") 'whole-line-or-region-kill-ring-save)
(global-set-key (kbd "M-w") 'my-apologies)

;; x
(require 'bindings-c-x)
(global-set-key (kbd "M-x") 'helm-M-x)

;; y
(global-set-key (kbd "C-y") 'yank)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; z
(global-set-key (kbd "C-z") 'undo)

;; C-<symbol>
(global-set-key (kbd "C-!") 'my-apologies-try-dollar-sign)
(setq expand-region-contract-fast-key "<backspace>")
(define-prefix-command 'my-rectangle-map)
;; (global-set-key (kbd "C-#") 'my-rectangle-map)
;; (define-key 'my-rectangle-map (kbd "C-k") 'kill-rectangle)
;; (define-key 'my-rectangle-map (kbd "M-w") 'copy-rectangle-as-kill)
;; (define-key 'my-rectangle-map (kbd "C-w") 'copy-rectangle-as-kill)
;; (define-key 'my-rectangle-map (kbd "C-d") 'delete-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-y") 'yank-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-o") 'open-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-c") 'clear-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-n") 'rectangle-number-lines)
;; (define-key 'my-rectangle-map (kbd "C-t") 'delete-whitespace-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-s") 'string-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-i") 'string-insert-rectangle)
;; (define-key 'my-rectangle-map (kbd "C-SPC") 'rectangle-mark-mode)
(global-set-key (kbd "C-$") 'iuno)
(global-set-key (kbd "C-%") 'query-replace)
(global-set-key (kbd "C-M-%") 'query-replace-regexp)
(global-set-key (kbd "C-^") 'sort-lines)
(global-set-key (kbd "C-M-^") 'sort-paragraphs)
(global-set-key (kbd "C-&") 'nope)
(global-set-key (kbd "C-*") 'jump-to-register)
(global-set-key (kbd "C-M-*") 'point-to-register)
(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)
(global-set-key (kbd "C-{") 'my-open-line-above)
(global-set-key (kbd "M-{") 'my-delete-blank-lines-above)

;; }
(global-set-key (kbd "C-}") 'my-open-line-below)
(global-set-key (kbd "M-}") 'my-delete-blank-lines-below)

;; <
(global-set-key (kbd "C-<") 'my-join-line-above)

;; >
(global-set-key (kbd "C->") 'end-of-buffer)
(global-set-key (kbd "C-<") 'beginning-of-buffer)
(global-set-key (kbd "M->") nil)
(global-set-key (kbd "M-> !") 'compilation-next-error)
(global-set-key (kbd "M-> b") 'my-find-compilation-buffer)

;; :
(global-set-key (kbd "C-:") 'goto-line)

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

(global-set-key (kbd "M-.") 'er/expand-region)

;; /
(global-set-key (kbd "C-/") 'undo)

;; :

;; ;
(global-set-key (kbd "C-;") 'whole-line-or-region-comment-dwim-2)
(global-set-key (kbd "M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; =

;; ?
;; (global-set-key (kbd "C-h f") 'helm-apropos)
;; (global-set-key (kbd "C-h r") 'helm-info-emacs)
;; (global-set-key (kbd "C-h C-l") 'helm-locate-library)
;; (global-set-key (kbd "C-?") 'hs-toggle-hiding)


(global-set-key (kbd "M-$") 'vterm)
(global-set-key (kbd "H-$") 'projectile-run-vterm)

;; %

;; ^

;; &
(global-set-key (kbd "H-&") 'my-emacs-init-file)

;; &

;; (

;; )

;; {


(global-set-key (kbd "C-<up>") 'move-text-line-up)
(global-set-key (kbd "C-<down>") 'move-text-line-down)


(global-set-key (kbd "C-`") 'hydra-frame-management/body)
;; [
;; It's probably a bad idea to bind C-
;; https://emacs.stackexchange.com/questions/7832/how-to-bind-c-for-real
;; C-[ is interpreted at a very early stage as the ASCII control character ESC (see 21.7.1 - Keyboard Events). This code is spread out all other the place as the prefix for longer sequences. There is a reason for that: ESC is actually the meta prefix (see meta-prefix-char), and all bindings that read M-something will translate to a sequence that starts with ESC. Thus, changing the global map won't be enough: you need first to change meta-prefix-char, then to remap ESC to your new meta-prefix-char in each and every map that uses M- before you can safely map C-[1.
;; (global-set-key (kbd "C-[") 'my-open-line-above)

;; \
(global-set-key (kbd "C-\\") 'visual-line-mode)

;; ]
;; (global-set-key (kbd "C-]") 'my-open-line-below)

;; _
;;

;; |
(global-set-key (kbd "C-|") 'split-line)

;; SPC
(global-set-key (kbd "C-SPC") 'set-mark-command)
(global-set-key (kbd "M-SPC") 'my-mark-map)

;; RET
(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)
(global-set-key (kbd "C-<return>") nil)
(global-set-key (kbd "M-<return>") 'my-eval-dwim)

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

(global-set-key (kbd "<f1>") 'projectile-test-project) ;; !
(global-set-key (kbd "<f2>") 'projectile-run-project) ;; r
(global-set-key (kbd "<f3>") 'projectile-find-file)
(global-set-key (kbd "<f4>") 'projectile-test-project) ;; t
(global-set-key (kbd "<f23>") 'projectile-compile-project) ;; c
(global-set-key (kbd "<f13>") 'projectile-find-file) ;; f
(global-set-key (kbd "<f12>") 'hydra-window-management/body) ;; f
(global-set-key (kbd "<f14>") 'projectile-command-map) ;; p
(global-set-key (kbd "<f15>") 'magit) ;; g
(global-set-key (kbd "<f22>") 'projectile-run-project)
(global-set-key (kbd "<f24>") 'revert-buffer) ;; v


(global-set-key (kbd "H-b") 'projectile-switch-to-buffer)
;; (global-set-key (kbd "H-S-B") 'my-backward-to-sexp) ;; TODO

;; (global-set-key (kbd "H-d") 'kill-sexp)
;; (global-set-key (kbd "H-S-D") 'backward-kill-sexp)
;; (global-set-key (kbd "H-f") 'forward-sexp)
;; (global-set-key (kbd "H-i") 'lsp-organize-imports)
;; (global-set-key (kbd "H-j") 'lsp-goto-type-definition)
;; (global-set-key (kbd "H-o") 'lsp-organize-imports)
;; (global-set-key (kbd "H-h") 'lsp-describe-thing-at-point)
;; (global-set-key (kbd "H-j") 'lsp-find-definition)
;; (global-set-key (kbd "H-r") 'lsp-rename)
(global-set-key (kbd "H-x") 'helm-make-projectile)
;; (global-set-key (kbd "H-x") 'switch-to-buffer-in-projectile-register)



(global-set-key (kbd "H-;") 'projectile-test-project)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "<H-C-$>")
                (lambda ()
                  (interactive)
                  (projectile-run-vterm t)))
(global-set-key (kbd "H-%") 'lsp-rename)
(global-set-key (kbd "H-*") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "H-;") 'comment-dwim)
(global-set-key (kbd "H-<return>") 'my-eval-dwim)
(global-set-key (kbd "H-=") 'helm-make-projectile)
(global-set-key (kbd "H->") 'projectile-compile-project)
(global-set-key (kbd "H-C-*") 'buffer-to-projectile-register)
(global-set-key (kbd "H-M-*") 'buffer-to-projectile-register)



;; yasnippet
(define-key yas-keymap (kbd "C-g") 'abort-company-or-yas)

;; flycheck
(define-key flycheck-mode-map flycheck-keymap-prefix nil)
(setq flycheck-keymap-prefix (kbd "M-!"))
(define-key flycheck-mode-map flycheck-keymap-prefix flycheck-command-map)
(define-key flycheck-command-map (kbd "n") 'flycheck-next-error)
(define-key flycheck-command-map (kbd "p") 'flycheck-previous-error)
(define-key flycheck-command-map (kbd "l") 'flycheck-list-errors)

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

;; ;; w windows
;; (define-key 'my-register-map (kbd "C-w") 'window-configuration-to-register)

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
(require 'bindings-structured-haskell-mode)

(provide 'bindings)




