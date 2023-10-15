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
(global-set-key (kbd "H-f") 'forward-sexp)

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
;; (global-set-key (kbd "H-j") 'lsp-goto-type-definition)

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
(global-set-key (kbd "H-l") 'lsp-lens-mode)

;; m
(global-set-key (kbd "<C-m>") 'set-mark-command)
(global-set-key (kbd "M-m") nil)
(global-set-key (kbd "M-m M-;") 'er/mark-comment)
(global-set-key (kbd "M-m M-b") 'mark-whole-buffer)
(global-set-key (kbd "M-m M-c") 'er/mark-method-call)
(global-set-key (kbd "M-m M-f") 'er/mark-defun)
(global-set-key (kbd "M-m M-p") 'er/mark-paragraph)
(global-set-key (kbd "M-m M-s") 'er/mark-sentence)
(global-set-key (kbd "M-m M-w") 'er/mark-word)
(global-set-key (kbd "M-m M-'") 'er/mark-inside-quotes)
(global-set-key (kbd "M-m M-\"") 'er/mark-outside-quotes)
(global-set-key (kbd "M-m M-[") 'er/mark-inside-pairs)
(global-set-key (kbd "M-m M-{") 'er/mark-outside-pairs)
(global-set-key (kbd "M-m M-]") 'er/mark-inside-pairs)
(global-set-key (kbd "M-m M-}") 'er/mark-outside-pairs)
(global-set-key (kbd "M-m M-u") 'er/mark-url)
(global-set-key (kbd "M-m M-s") 'er/mark-symbol)
(global-set-key (kbd "M-m M-l") 'my-mark-current-line)
(global-set-key (kbd "M-m M-@") 'er/mark-email)
(global-set-key (kbd "C-M-m") 'er/expand-region)
(global-set-key (kbd "C-M-S-m") 'er/contract-region)
(global-set-key (kbd "H-m") 'lsp-extend-selection)
(global-set-key (kbd "H-S-m") 'er/contract-region) ;; no lsp fn exists yet I
;; don't think

;; n
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "M-n") 'forward-line)
(global-set-key (kbd "C-M-n") 'move-text-line-down)
(global-set-key (kbd "H-n") 'end-of-defun)

;;
;; (global-set-key (kbd "H-o") 'mark-sexp)

;; p
(global-set-key (kbd "C-p") 'previous-line)
(global-set-key (kbd "M-p") 'backward-line)
(global-set-key (kbd "C-M-p") 'move-text-line-up)
(global-set-key (kbd "H-p") 'beginning-of-defun)

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
(global-set-key (kbd "C-r") 'query-replace)
(global-set-key (kbd "C-S-r") 'query-replace-regexp)
(global-set-key (kbd "M-r") 'my-replace-in-buffer)
(global-set-key (kbd "C-M-r") 'my-replace-in-buffer-no-fear)
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
(global-set-key (kbd "C-t") 'my-indent-rigidly-1)
(global-set-key (kbd "C-S-t") 'my-unindent-rigidly-1)
(global-set-key (kbd "M-t") 'my-indent-rigidly-2)
(global-set-key (kbd "M-S-t") 'my-unindent-rigidly-2)
(global-set-key (kbd "H-t") 'crux-indent-defun)
(global-set-key (kbd "H-t") 'crux-indent-defun)

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

;; <return>
(global-set-key (kbd "C-<return>") 'mc/mark-all-dwim)
(global-set-key (kbd "C-S-<return>") 'mc/edit-lines)
(global-set-key (kbd "M-<return>") nil)
(global-set-key (kbd "M-<return>") nil)
(global-set-key (kbd "M-<return> M-a") 'mc/mark-all-dwim)
(global-set-key (kbd "M-<return> M-r") 'mc/mark-all-in-region)
(global-set-key (kbd "M-<return> M-l") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "M-<return> M-<return>") 'mc/mark-all-dwim)
(global-set-key (kbd "M-<return> M-n") 'mc/mark-next-like-this)
(global-set-key (kbd "M-<return> M-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-M-<return>") 'mc/mark-all-dwim)
(global-set-key (kbd "H-<return>") 'my-eval-dwim)

;; .
(global-set-key (kbd "C-.") 'helm-buffers-list)
(global-set-key (kbd "M-.") nil)
(global-set-key (kbd "M-. M-n") 'next-buffer)
(global-set-key (kbd "M-. M-p") 'previous-buffer)
(global-set-key (kbd "M-. M-k") 'kill-this-buffer)
;; (global-set-key (kbd "M-.") 'next-buffer)
;; (global-set-key (kbd "M-.") 'point-to-register)

;; ,
(global-set-key (kbd "C-,") 'helm-find-files)

;; ;
(global-set-key (kbd "C-;") 'magit)
(global-set-key (kbd "M-;") 'magit)
(global-set-key (kbd "H-;") 'comment-dwim)
(global-set-key (kbd "H-;") 'comment-dwim)

;; /
(global-set-key (kbd "C-/") 'dired-mode)
(define-key projectile-mode-map (kbd "C-/") 'projectile-command-map)
;; (global-set-key (kbd "M-/") nil)
;; (global-set-key (kbd "M-/ M-$") 'my-projectile-run-new-vterm)

;; ?
(global-set-key (kbd "C-?") 'dired-mode)
(global-set-key (kbd "H-?") 'helm-projectile-switch-to-buffer)

;; minor/major mode conveniences
(global-set-key (kbd "C-!") 'flycheck-next-error)
(global-set-key (kbd "H-!") 'projectile-test-project)

(global-set-key (kbd "C-$") 'vterm)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-$") 'projectile-run-vterm)
(global-set-key (kbd "H-M-$") 'my-projectile-run-new-vterm)

(global-set-key (kbd "C-@") 'compilation-next-error)
(global-set-key (kbd "M-@") 'my-find-compilation-buffer)
(global-set-key (kbd "H-@") 'projectile-compile-project)


(global-set-key (kbd "C-%") 'query-replace) ;; isearch-mode
(global-set-key (kbd "M-%") 'query-replace-regexp) ;; isearch-mode
;; (global-set-key (kbd "H-%") 'lsp-rename)

(global-set-key (kbd "C-^") 'hs-toggle-hiding)

(global-set-key (kbd "C-&") 'yasnippet)
(global-set-key (kbd "C-*") 'todo)

(global-set-key (kbd "C-(") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "C-)") 'kmacro-end-or-call-macro)


;; windows
(global-set-key (kbd "C--") 'other-window)
(global-set-key (kbd "C--") 'other-window)
(global-set-key (kbd "C-_") 'whitespace-mode)
;; (define-key 'my-register-map (kbd "C-w") 'window-configuration-to-register)

;; frames
(global-set-key (kbd "C-`") 'other-frame)
(global-set-key (kbd "M-`") 'other-frame-backward)
(global-set-key (kbd "M-`") 'hydra-frame-management/body)
;; (global-set-key (kbd "C-~") 'flyspell-mode)
;; (global-set-key (kbd "C-=") 'other-frame)

;; (global-set-key (kbd "H-=") 'helm-make-projectile)

(global-set-key (kbd "C-{") 'previous-buffer)
(global-set-key (kbd "C-}") 'next-buffer)
;; (global-set-key (kbd "C-[") 'previous-buffer)
;; (global-set-key (kbd "C-]") 'next-buffer)

;; <
(global-set-key (kbd "C-<") 'text-scale-decrease)
(global-set-key (kbd "C->") 'text-scale-increase)

;; :
(global-set-key (kbd "C-:") 'goto-line)

;; |
(global-set-key (kbd "C-|") 'aggressive-indent-mode)

(global-set-key (kbd "C-<up>") 'move-text-line-up)
(global-set-key (kbd "C-<down>") 'move-text-line-down)



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
(global-set-key (kbd "M-SPC") 'set-mark-command)

;; RET
(global-set-key (kbd "RET") 'newline-and-indent)

;; TAB
(global-set-key [tab] 'company-complete)
;; (global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "TAB") 'tab-indent-or-complete)
(global-set-key (kbd "C-TAB") 'tab-next)
(global-set-key (kbd "S-C-TAB") 'tab-previous)
(global-set-key (kbd "M-<tab>") 'switch-to-buffer-in-projectile-register)
(global-set-key (kbd "C-M-<tab>") 'buffer-to-projectile-register)
(global-set-key (kbd "H-<tab>") 'yas-expand)
(setq tab-bar-select-tab-modifiers '(hyper))

;; BACKSPACE
(global-set-key (kbd "C-<backspace>") 'backward-delete-char)
(global-set-key (kbd "M-<backspace>") 'backward-kill-word)
(global-set-key (kbd "C-M-<backspace>") 'backward-kill-paragraph)

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
(global-set-key (kbd "<f13>") 'projectile-find-file) ;; f
(global-set-key (kbd "<f12>") 'hydra-window-management/body) ;; f
(global-set-key (kbd "<f14>") 'projectile-command-map) ;; p
(global-set-key (kbd "<f15>") 'magit) ;; g
(global-set-key (kbd "<f22>") 'projectile-run-project)
(global-set-key (kbd "<f24>") 'revert-buffer) ;; v


;; x(global-set-key (kbd "H-M-b") 'projectile-switch-to-buffer)
;; (global-set-key (kbd "H-S-B") 'my-backward-to-sexp) ;; TODO

;; (global-set-key (kbd "H-d") 'kill-sexp)
;; (global-set-key (kbd "H-S-D") 'backward-kill-sexp)
(global-set-key (kbd "H-f") 'forward-sexp)
(global-set-key (kbd "H-b") 'back-sexp)
(global-set-key (kbd "H-n") 'forward-paragraph)
(global-set-key (kbd "H-p") 'backward-paragraph)
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

(provide 'bindings)




