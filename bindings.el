(require 'expand-region)
(straight-use-package 'whole-line-or-region)

(require 'whole-line-or-region)

(whole-line-or-region-global-mode t)

(defvar monster-mode-map (make-sparse-keymap)
  "The keymap for monster-mode.")

(defun my-scroll-8-lines-down ()
  (interactive)
  (scroll-down-line 8))

(defun my-scroll-8-lines-up ()
  (interactive)
  (scroll-up-line 8))

;; a
(define-key monster-mode-map (kbd "a") 'backward-paragraph)
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)
(global-set-key (kbd "M-a") 'beginning-of-line)
(global-set-key (kbd "C-M-a") 'beginning-of-line)

;; A
(define-key monster-mode-map (kbd "A") 'beginning-of-buffer)
;; (global-set-key (kbd "C-S-a") 'my-beginning-of-code)
;; (global-set-key (kbd "M-S-a") 'my-beginning-of-text)
(global-set-key (kbd "C-M-S-a") 'beginning-of-buffer)

;; b
(define-key monster-mode-map (kbd "b") 'backward-paragraph)
(global-set-key (kbd "C-b") 'backward-char)
(global-set-key (kbd "M-b") 'backward-word)
(global-set-key (kbd "C-M-b") 'backward-sentence)

;; B
(define-key monster-mode-map (kbd "B") 'backward-sexp)
(global-set-key (kbd "C-S-b") 'backward-symbol)
;; (global-set-key (kbd "M-S-b") 'backward-sexp)
(global-set-key (kbd "C-M-S-b") 'backward-sexp)

;; c
;; reserved for custom "major mode" commands
;; TODO monster c should map to C-c

;; C

;; d
(define-key monster-mode-map (kbd "d") 'kill-paragraph)
(global-set-key (kbd "C-d") 'delete-char)
(global-set-key (kbd "M-d") 'kill-word)
(global-set-key (kbd "C-M-d") 'kill-sentence)

;; D
(define-key monster-mode-map (kbd "D") 'backward-kill-sexp)
;; (global-set-key (kbd "C-S-d") 'my-backward-kill-symbol)
;; (global-set-key (kbd "M-S-d") 'my-backward-kill-?)
(global-set-key (kbd "C-M-S-d") backward-kill-sexp)
;; (define-key monster-mode-map (kbd "C-M-d") 'zap-to-char)
;; (define-key monster-mode-map (kbd "C-M-S-d") 'zap-backwards-to-char)

;; e
(define-key monster-mode-map (kbd "e") 'forward-paragraph)
;; (global-set-key (kbd "C-e") 'crux-end-of-line)
(global-set-key (kbd "C-e") 'end-of-line)
(global-set-key (kbd "M-e") 'end-of-line)
;; (global-set-key (kbd "C-M-e") 'my-second-to-last-end-of-paragraph)

;; E
(define-key monster-mode-map (kbd "E") 'end-of-buffer)
;; (global-set-key (kbd "C-S-e") 'my-end-of-code)
;; (global-set-key (kbd "M-S-e") 'my-end-of-text)
;; (global-set-key (kbd "C-M-S-e") 'end-of-buffer)

;; f
(define-key monster-mode-map (kbd "f") 'forward-sentence)
(global-set-key (kbd "C-f") 'forward-char)
(global-set-key (kbd "M-f") 'forward-word)
;; (global-set-key (kbd "C-M-f") 'forward-phrase)
(global-set-key (kbd "C-M-f") 'forward-sentence)

;; F
(define-key monster-mode-map (kbd "F") 'forward-sexp)
(global-set-key (kbd "C-S-f") 'forward-symbol)
(global-set-key (kbd "M-S-f") 'forward-sexp)
(global-set-key (kbd "C-M-S-f") 'end-of-defun)

;; g
(define-key monster-mode-map (kbd "g") 'keyboard-quit)

;; G
;; what could go here?
;; maybe resetting windows or something?

;; h
(define-key monster-mode-map (kbd "h") 'help-map)

;; H
(define-key monster-mode-map (kbd "H") 'describe-key)

;; i
(define-key monster-mode-map (kbd "i") 'monster-mode)

;; I
;; what could go here?
;; maybe open up my bindings files?

;; j
(define-prefix-command 'my-avy-map)
(define-key monster-mode-map (kbd "j") 'avy-goto-char)
(global-set-key (kbd "C-j") 'my-avy-map)
(global-set-key (kbd "C-j c") 'avy-goto-char)
(global-set-key (kbd "C-j 2") 'avy-goto-char-2)
(global-set-key (kbd "C-j j") 'avy-goto-char)
(global-set-key (kbd "C-j a") 'avy-goto-char-2-above)
(global-set-key (kbd "C-j e") 'avy-goto-char-2-below)
(global-set-key (kbd "C-j b") 'avy-goto-char-2-above)
(global-set-key (kbd "C-j f") 'avy-goto-char-2-below)
(global-set-key (kbd "C-j l") 'avy-goto-char-in-line)
(global-set-key (kbd "C-j w") 'avy-goto-word-1)
(global-set-key (kbd "C-j C-w 0") 'avy-goto-word-0)
(global-set-key (kbd "C-j C-w 1") 'avy-goto-word-1)

(define-prefix-command 'my-micro-avy-map)
(global-set-key (kbd "M-j") 'my-micro-avy-map)
(global-set-key (kbd "M-j c") 'avy-goto-char)
(global-set-key (kbd "M-j l") 'avy-goto-line)
(global-set-key (kbd "M-j a") 'avy-goto-line-above)
(global-set-key (kbd "M-j e") 'avy-goto-line-below)
(global-set-key (kbd "M-j b") 'avy-goto-word-0-above)
(global-set-key (kbd "M-j f") 'avy-goto-word-0-below)
(global-set-key (kbd "M-j w") 'avy-goto-word-0)

(define-prefix-command 'my-macro-avy-map)
(global-set-key (kbd "C-M-j") 'my-macro-avy-map)
(global-set-key (kbd "C-M-j l") 'avy-goto-line)
(global-set-key (kbd "C-M-j a") 'avy-goto-line-above)
(global-set-key (kbd "C-M-j e") 'avy-goto-line-below)

;; J
(define-key monster-mode-map (kbd "J") 'forward-sexp)
(global-set-key (kbd "C-S-j") 'forward-symbol)
(global-set-key (kbd "M-S-j") 'forward-sexp)
(global-set-key (kbd "C-M-S-j") 'end-of-defun)

;; k
(define-key monster-mode-map (kbd "k") 'crux-smart-kill-line)
(global-set-key (kbd "C-k") 'crux-smart-kill-line)
(global-set-key (kbd "M-k") 'kill-word)
(global-set-key (kbd "C-M-k") 'kill-sentence)

;; K
(define-key monster-mode-map (kbd "K") 'kill-buffer)
;; (global-set-key (kbd "C-S-k") ')
;; (global-set-key (kbd "M-S-k") 'kill-word)
;; (global-set-key (kbd "C-M-S-k") 'kill-sentence)

;; l
(define-key monster-mode-map (kbd "l") 'recenter-top-bottom)
(global-set-key (kbd "C-l") 'recenter)
(global-set-key (kbd "M-l") 'recenter)
(global-set-key (kbd "C-M-l") 'recenter)

;; L
(define-key monster-mode-map (kbd "L") 'recenter)
(global-set-key (kbd "C-S-l") 'scroll-bottom-line-to-top)
(global-set-key (kbd "M-S-l") 'scroll-top-line-to-bottom)

;; m
(define-prefix-command 'my-mark-map)
(define-key monster-mode-map (kbd "m") 'er/expand-region)
(define-key monster-mode-map (kbd "C-m") 'my-mark-map)
(define-key monster-mode-map (kbd "C-m l") 'my-mark-current-line)
(define-key monster-mode-map (kbd "C-m f") 'er/mark-defun)
(define-key monster-mode-map (kbd "C-m w") 'er/mark-word)
(define-key monster-mode-map (kbd "C-m p") 'er/mark-paragraph)
(define-key monster-mode-map (kbd "C-m c") 'er/mark-comment)
(define-key monster-mode-map (kbd "C-m e") 'er/mark-email)
(define-key monster-mode-map (kbd "C-m s") 'er/mark-symbol)
(define-key monster-mode-map (kbd "C-m n") 'er/mark-sentence)
(define-key monster-mode-map (kbd "C-m b") 'mark-whole-buffer)

(define-key monster-mode-map (kbd "C-m f") (define-prefix-command 'my-mark-feature-map))
(define-key monster-mode-map (kbd "C-m f s") 'er/mark-feature-scenario)
(define-key monster-mode-map (kbd "C-m f p") 'er/mark-feature-step)

;; M
(define-key monster-mode-map (kbd "M") 'mc/mark-all-dwim)
(define-prefix-command 'my-mc-map)
(global-set-key (kbd "C-S-m") 'my-mc-map)
(global-set-key (kbd "C-S-m r") 'mc/mark-all-in-region)
(global-set-key (kbd "C-S-m l") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-S-m m") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-m n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-m p") 'mc/mark-previous-like-this)

;; n
(define-key monster-mode-map (kbd "n") 'forward-paragraph)

;; o
(define-key monster-mode-map (kbd "o") 'er/expand-region)
(define-key monster-mode-map (kbd "O") 'er/contract-region)
(global-set-key (kbd "C-o") 'er/expand-region)
(global-set-key (kbd "C-S-o") 'er/contract-region)

;; p
(define-key monster-mode-map (kbd "p") 'backward-paragraph)

;; q
(define-key monster-mode-map (kbd "q") 'projectile-map)
(define-key projectile-mode-map (kbd "C-q") 'projectile-command-map)

;; r
(define-key monster-mode-map (kbd "r") 'isearch-backward)

;; s
(define-key monster-mode-map (kbd "s") 'isearch-forward)

;; t
;; what do we use t for?

;; u

;; v
(define-key monster-mode-map (kbd "v") 'scroll-up)
(global-set-key (kbd "C-v") 'my-scroll-8-lines-up)
(global-set-key (kbd "M-v") 'scroll-up) ;; a lot somehow?
(global-set-key (kbd "C-M-v") 'scroll-line-up)
;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; V
(define-key monster-mode-map (kbd "V") 'scroll-down)
(global-set-key (kbd "C-S-v") 'my-scroll-8-lines-down)
(global-set-key (kbd "M-S-v") 'scroll-page-down)
(global-set-key (kbd "C-M-S-v") 'scroll-line-down)

;; w
(define-key monster-mode-map (kbd "w") 'kill-ring-save)

;; x

;; y
(define-key monster-mode-map (kbd "y") 'yank)

;; z
(global-set-key (kbd "C-z") 'monster-mode)


(define-key monster-mode-map (kbd "/") 'undo)





;; (define-key monster-mode-maps (kbd "C-g") 'evil-normal-state)




(define-key monster-mode-map (kbd "%") 'query-replace)

;; evil-search-forward?



(define-key monster-mode-map (kbd "<backspace>") 'backward-delete-char-untabify)
(define-key monster-mode-map (kbd "C-<backspace>") 'backward-kill-word)
(define-key monster-mode-map (kbd "M-<backspace>") 'backward-kill-sexp)

(define-key monster-mode-map (kbd "(") 'kmacro-start-macro-or-insert-counter)
(define-key monster-mode-map (kbd ")") 'kmacro-end-macro)
;;(define-key monster-mode-map (kbd "#") 'evil-record-macro)

(define-key monster-mode-map (kbd "SPC") 'set-mark-command)




;; (Require 'multiple-cursors)

;; ;; evil shell command
;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)
;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)

;; (setq evil-respect-visual-line-mode nil)

;; ;; (global-set-key (kbd "m") '(self-insert-command (char "m")))
;; ;; (evil-global-set-key 'normal (kbd "") 'evil-scroll-line-down)




;;   ;; (evil-global-set-key state (kbd "C-n") 'next-

;;   ;; TODO copy and paste line below

;;   (evil-global-set-key state (kbd "p") 'evil-previous-line)
  
(define-minor-mode monster-mode
  "Toggle Monster mode"
  :init-value nil
  :lighter " Monster"
  :keymap monster-mode-map
  (progn
    (message "asdasdasda")
    (if monster-mode
      (set-cursor-color "green")
      (set-cursor-color "white"))
    (if monster-mode
      (message "monster-mode activated")
      (message "monster-mode deactivated"))))
    


(defun my-mark-current-line ()
  "Select the current line and move the cursor by ARG lines IF
no region is selected.

If a region is already selected when calling this command, only move
the cursor by ARG lines."
  (interactive)
  (my-mark-current-line-and-forward-line 0)
  (end-of-line))



(defun my-mark-current-line-and-forward-line (arg)
  "Select the current line and move the cursor by ARG lines IF
no region is selected.

If a region is already selected when calling this command, only move
the cursor by ARG lines."
  (interactive "p")
  (when (not (use-region-p))
    (forward-line 0)
    (set-mark-command nil))
  (forward-line arg))

;; (setq evil-move-beyond-eol 't)

;; ;; (setq evil-default-state 'emacs)
;; ;; https://evil.readthedocs.io/en/latest/overview.html

;; ;; TODO evil-forward-word-start?
;; (dolist (state (list 'normal 'visual))

;;   (evil-global-set-key state (kbd "f") 'forward-char)
;;   (evil-global-set-key state (kbd "C-f") 'forward-word)
;;   (evil-global-set-key state (kbd "M-f") 'forward-paragraph)
;;   (evil-global-set-key state (kbd "C-M-f") 'end-of-buffer)
;;   (evil-global-set-key state (kbd "S-f") 'forward-symbol)
;;   (evil-global-set-key state (kbd "F") 'forward-symbol)
;;   (evil-global-set-key state (kbd "C-S-f") 'forward-sexp)
;;   (evil-global-set-key state (kbd "M-S-f") 'forward-sexp)
;;   (evil-global-set-key state (kbd "C-M-S-f") 'forward-sexp)
  
;;   (evil-global-set-key state (kbd "b") 'backward-char)
;;   (evil-global-set-key state (kbd "C-b") 'backward-word)
;;   (evil-global-set-key state (kbd "M-b") 'backward-paragraph)
;;   (evil-global-set-key state (kbd "C-M-b") 'end-of-buffer)
;;   (evil-global-set-key state (kbd "S-b") 'backward-symbol)
;;   (evil-global-set-key state (kbd "B") 'backward-symbol)
;;   (evil-global-set-key state (kbd "C-S-b") 'backward-sexp)
;;   (evil-global-set-key state (kbd "M-S-b") 'backward-sexp)
;;   (evil-global-set-key state (kbd "C-M-S-b") 'backward-sexp)
;;   (evil-global-set-key state (kbd "n") 'evil-next-line)
;;   ;; (evil-global-set-key state (kbd "C-n") 'next-

;;   ;; TODO copy and paste line below

;;   (evil-global-set-key state (kbd "p") 'evil-previous-line)

;;   (evil-global-set-key state (kbd "e") 'move-end-of-line)
;;   (evil-global-set-key state (kbd "a") 'crux-move-beginning-of-line))


;; (evil-global-set-key 'normal (kbd "i") 'evil-emacs-state)
;; (evil-global-set-key 'emacs (kbd "C-g") 'evil-normal-state)

;; (evil-global-set-key 'normal (kbd "k") 'crux-smart-kill-line)
;; (evil-global-set-key 'normal (kbd "y") 'yank)
;; (evil-global-set-key 'normal (kbd "w") 'kill-ring-save)

;; ;; evil-search-forward?
;; (evil-global-set-key 'normal (kbd "s") 'isearch-forward)
;; (evil-global-set-key 'normal (kbd "r") 'isearch-backward)

;; (evil-global-set-key 'normal (kbd "d") 'delete-char)
;; (evil-global-set-key 'normal (kbd "C-d") 'kill-word)
;; (evil-global-set-key 'normal (kbd "M-d") 'kill-sexp)
;; (evil-global-set-key 'normal (kbd "C-M-d") 'zap-to-char)

;; (evil-global-set-key 'normal (kbd "<backspace>") 'backward-delete-char-untabify)
;; (evil-global-set-key 'normal (kbd "C-<backspace>") 'backward-kill-word)
;; (evil-global-set-key 'normal (kbd "M-<backspace>") 'backward-kill-sexp)

;; (evil-global-set-key 'normal (kbd "j") 'avy-goto-char)
;; (evil-global-set-key 'normal (kbd "C-j") 'avy-goto-word-0)
;; (evil-global-set-key 'normal (kbd "C-S-j") 'avy-goto-word-1)
;; (evil-global-set-key 'normal (kbd "M-j") 'avy-goto-line)

;; (evil-global-set-key 'normal (kbd "(") 'kmacro-start-macro-or-insert-counter)
;; (evil-global-set-key 'normal (kbd ")") 'kmacro-end-macro)
;; (evil-global-set-key 'normal (kbd "#") 'evil-record-macro)

;; (evil-global-set-key 'normal (kbd "SPC") 'set-mark-command)

;; (evil-global-set-key 'normal (kbd "v") 'my-scroll-8-lines-down)
;; (evil-global-set-key 'normal (kbd "C-v") 'evil-scroll-down)
;; (evil-global-set-key 'normal (kbd "M-v") 'evil-scroll-page-down)
;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-down)

;; (define-prefix-command 'my-mark-map)
;; (evil-global-set-key 'normal (kbd "m") 'my-mark-map)
;; (evil-global-set-key 'normal (kbd "m l") 'my-mark-current-line)
;; (evil-global-set-key 'normal (kbd "m f") 'er/mark-defun)
;; (evil-global-set-key 'normal (kbd "m w") 'er/mark-word)
;; (evil-global-set-key 'normal (kbd "m p") 'er/mark-paragraph)
;; (evil-global-set-key 'normal (kbd "m c") 'er/mark-comment)
;; (evil-global-set-key 'normal (kbd "m e") 'er/mark-email)
;; (evil-global-set-key 'normal (kbd "m s") 'er/mark-symbol)
;; (evil-global-set-key 'normal (kbd "m n") 'er/mark-sentence)
;; (evil-global-set-key 'normal (kbd "m b") 'mark-whole-buffer)

;; (evil-global-set-key 'normal (kbd "m f") (define-prefix-command 'my-mark-feature-map))
;; (evil-global-set-key 'normal (kbd "m f s") 'er/mark-feature-scenario)
;; (evil-global-set-key 'normal (kbd "m f p") 'er/mark-feature-step)


;; (require 'multiple-cursors)

;; ;; evil shell command
;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)
;; (evil-global-set-key 'normal (kbd "!") 'er/edit-lines)

;; (setq evil-respect-visual-line-mode nil)

;; ;; (global-set-key (kbd "m") '(self-insert-command (char "m")))
;; ;; (evil-global-set-key 'normal (kbd "") 'evil-scroll-line-down)


;; ;; (evil-global-set-key 'normal (kbd "C-M-v") 'evil-scroll-line-to-bottom)

;; (defun my-scroll-8-lines-down ()
;;   (interactive)
;;   (evil-scroll-line-down 8))

;; (defun my-scroll-8-lines-up ()
;;   (interactive)
;;   (evil-scroll-line-up 8))

;; (evil-global-set-key 'normal (kbd "S-v") 'my-scroll-8-lines-up)
;; (evil-global-set-key 'normal (kbd "C-S-v") 'evil-scroll-up)
;; (evil-global-set-key 'normal (kbd "M-S-v") 'evil-scroll-page-up)
;; (evil-global-set-key 'normal (kbd "C-M-S-v") 'evil-scroll-line-up)

;; (evil-global-set-key 'normal (kbd "l") 'recenter-top-bottom)
;; (evil-global-set-key 'normal (kbd "C-l") 'evil-scroll-line-to-top)
;; (evil-global-set-key 'normal (kbd "M-l") 'evil-scroll-line-to-bottom)

;; (evil-global-set-key 'normal (kbd "S-l") 'recenter)
;; (evil-global-set-key 'normal (kbd "C-S-l") 'evil-scroll-bottom-line-to-top)
;; (evil-global-set-key 'normal (kbd "M-S-l") 'evil-scroll-top-line-to-bottom)



;; evil-repeat





;; ** Executing

;; keys on macosx
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(setq ns-function-modifier 'hyper)


(defun global-unset-all-super-key ()
  "Will unset any single key in global keymap that has the super
modifier."
  (let ((km (current-global-map)))
    (while km
      (let ((maybe-event (and (listp (car km))
                              (caar km))))
        (if (and (eventp maybe-event) ; Also filters out maybe-event
                                      ; when nil because (car km) was not a list.
                 (memq 'super (event-modifiers maybe-event)))
            (global-unset-key (vector maybe-event))))
      (setq km (cdr km)))))

 ;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
    (defun unfill-paragraph (&optional region)
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive (progn (barf-if-buffer-read-only) '(t)))
      (let ((fill-column (point-max))
            ;; This would override `fill-column' if it's an integer.
            (emacs-lisp-docstring-fill-column t))
        (fill-paragraph nil region)))



;; | C-x !       | go to important file prefix   |
;; | C-x 1       | search for ~/.emacs.d file    |
;; | C-x <tab>   | ?                             |
;; | C-x SPC     | ?                             |
;; | C-x d       | dired mode                    |
;; | C-x e       | run last macro                |
;; | C-x t       | dwim-open-terminal            |
;; | C-x w       | whitespace mode               |

;; | key binding | command type                  |
;; |-------------+-------------------------------|
;; | C-x d       | dired mode                    |
;; | C-x e       | run last macro                |
;; | C-x t       | dwim-open-terminal            |
;; | C-x C-l     | lsp prefix                    |
;; | C-x C-p     | projectile prefix             |
;; | C-x C-p C-t | term-projectile prefix        |
;; | C-x C-w     | window management prefix TODO |
;; | C-x w       | whitespace mode               |
;; | C-x SPC     | ?                             |
;; | C-x <tab>   | ?                             |
;; | C-x !       | go to important file prefix   |
;; | C-x 1       | search for ~/.emacs.d file    |
;; | C-x C-t     | taylor prefix                 |
;; |             |                               |

;; ** Project
;; | key binding | command type |
;; |-------------+--------------|
;; | C-x p r     | restclient   |

;; (global-unset-all-super-key)

;; (global-unset-key (kbd "ESC"))
;; (global-set-key (kbd "ESC") 'keyboard-quit)

(global-set-key (kbd "C-m") 'set-mark-command)
(global-set-key (kbd "C-.") 'kmacro-end-or-call-macro)
(global-set-key (kbd "C-_") 'keyboard-quit)



;; killing things
(global-set-key (kbd "C-k") 'crux-smart-kill-line)
(global-set-key (kbd "C-S-K") 'crux-kill-whole-line)
(global-set-key (kbd "M-k") 'tprost-kill-to-end-of-buffer)
(global-set-key (kbd "M-S-k") 'tprost-kill-to-end-of-buffer)

(global-set-key (kbd "C-S-<backspace>") 'crux-kill-line-backwards)
(global-set-key (kbd "M-S-<backspace>") 'tprost-kill-to-beginning-of-buffer)

;; kill buffer backwards
(global-set-key (kbd "M-S-<backspace>") 'crux-kill-line-backwards)
;; crux-kill-and-join-forward
;; (global-set-key (kbd "C-M-;") 'comment-dwim)
;; (global-set-key (kbd "C-M-; k") 'comment-kill)
;; (global-set-key (kbd "C-M-; C-M-k") 'comment-kill)

;; kill from point to end of buffer



;; (global-set-key (kbd "M-k") 'crux-smart-kill-line)

(global-set-key (kbd "C-o") 'crux-smart-open-line)
(global-set-key (kbd "C-S-o") 'crux-smart-open-line-above)

(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)

(global-unset-key (kbd "C-c n"))
(global-set-key (kbd "C-c n") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "C-c f") 'crux-recentf-find-file)
(global-set-key (kbd "C-c d") 'crux-duplicate-current-line-or-region)
(global-set-key (kbd "C-c M-d") 'crux-duplicate-and-comment-current-line-or-region)
(global-set-key (kbd "C-c e") 'crux-eval-and-replace)

(global-set-key (kbd "C-c e") 'crux-eval-and-replace)
(global-set-key (kbd "C-c r") 'crux-rename-file-and-buffer)

(global-set-key (kbd "C-c TAB") 'crux-indent-rigidly-and-copy-to-clipboard)

;; (global-set-key (kbd "C-M z") 'crux-indent-defun)

;; (global-set-key (kbd "C-c i") 'crux-find-user-init-file)

(global-set-key (kbd "C-^") 'crux-top-join-line)
(global-set-key (kbd "C-c u") 'crux-upcase-region)
(global-set-key (kbd "C-c l") 'crux-downcase-region)
(global-set-key (kbd "C-c c") 'crux-capitalize-region)
(global-set-key (kbd "C-c i") 'crux-ispell-word-then-abbrev)



(global-unset-key (kbd "C-M-;"))

(global-set-key (kbd "C-M-; ;") 'comment-dwim)
(global-set-key (kbd "C-M-; C-M-;") 'comment-dwim)

(global-set-key (kbd "C-M-; l") 'comment-line)
(global-set-key (kbd "C-M-; C-M-l") 'comment-line)

;; C-+             text-scale-increase
;; C-,             toggle-kbd-macro-recording-on
;; C--             text-scale-decrease



;; ESC <C-backspace>               backward-kill-sexp
;; ESC <C-delete>                  backward-kill-sexp
;; ESC <C-down>                    down-list
;; ESC <C-end>                     end-of-defun
;; ESC <C-home>                    beginning-of-defun
;; ESC <C-left>                    backward-sexp
;; ESC <C-right>                   forward-sexp
;; ESC <C-up>      backward-up-list
;; ESC <begin>     beginning-of-buffer-other-window
;; ESC <end>       end-of-buffer-other-window
;; ESC <f10>       toggle-frame-maximized
;; ESC <home>      beginning-of-buffer-other-window
;; ESC <left>      backward-word
;; ESC <next>      scroll-other-window
;; ESC <prior>     scroll-other-window-down
;; ESC <right>     forward-word


;; (global-unset-key (kbd "C-z"))
;; (global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
;; (global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
;; (global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
;; (global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
;; (global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

;; (global-set-key (kbd "<f1> c") 'calendar)
;; (global-set-key (kbd "<f1> g") 'magit-status)
;; (global-set-key (kbd "<f1> o c") 'org-capture)
;; (global-set-key (kbd "<f1> v") 'visual-line-mode)
;; (global-set-key (kbd "<f1> w") 'whitespace-mode)
;; (global-set-key (kbd "<f1> j") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> k k") 'open-my-japanese-file)
;; (global-set-key (kbd "<f1> f") 'set-frame-size-to-80-36)



;; (global-set-key (kbd "M-/") 'hippie-expand)
;; (global-set-key (kbd "TAB") 'smart-tab)
(global-set-key (kbd "M-i") 'back-to-indentation)
(global-set-key (kbd "C-C-S-m") 'iy-go-to-char)

(global-set-key (kbd "C-m") 'set-mark-command)
(global-set-key (kbd "C-=") 'set-mark-command)

;; (global-set-key (kbd "C-z") 'er/expand-region)
;; (global-set-key (kbd "<C-return>") 'open-line-below)
;; (global-set-key (kbd "<C-S-return>") 'open-line-above)
(global-set-key (kbd "M-`") 'other-frame)

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;; (global-set-key (kbd "C-o") 'prelude-smart-open-line-above)
;; (global-set-key (kbd "M-o") 'prelude-smart-open-line)

(global-set-key (kbd "C-x <") 'previous-buffer)
(global-set-key (kbd "C-x >") 'next-buffer)
(global-set-key (kbd "C-x r") 'rename-buffer)

(global-set-key (kbd "C-,") 'toggle-kbd-macro-recording-on)
(global-set-key (kbd "C-.") 'kmacro-end-and-call-macro)

(global-set-key (kbd "M-j")
                (lambda ()
                  (interactive)
                  (join-line -1)))

(global-set-key (kbd "RET") 'electric-newline-and-maybe-indent)

;; (global-set-key (kbd "M-n") 'move-text-down)
;; (global-set-key (kbd "M-p") 'move-text-up)

(global-unset-key (kbd "M-i"))

(global-set-key (kbd "M-i c") (lambda () (interactive) (set-input-method "chinese-py")))
(global-set-key (kbd "M-i e") (lambda () (interactive) (set-input-method "ucs")))

(global-set-key (kbd "s-`") 'other-frame)

(global-set-key (kbd "C-<next>") 'end-of-buffer)
(global-set-key (kbd "C-<prior>") 'beginning-of-buffer)

(global-set-key (kbd "M-A") 'beginning-of-buffer)
(global-set-key (kbd "M-E") 'end-of-buffer)

(global-set-key (kbd "C-M-r") 'lsp-rename)
(global-set-key (kbd "C-M-o") 'lsp-organize-imports)
(global-set-key (kbd "C-M-c") 'crux-cleanup-buffer-or-region)

(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-t") 'set-mark-command)

(global-unset-key (kbd "<f1>"))
(global-unset-key (kbd "<f4>"))
(global-unset-key (kbd "<f5>"))
(global-set-key (kbd "<f1>") 'cleanup-buffer)
(global-set-key (kbd "<f2>") 'projectile-commander)
(global-set-key (kbd "<f3>") 'projectile-test-project)
(global-set-key (kbd "<f4>") 'helm-make-projectile)
(global-set-key (kbd "<f5>") 'crux-find-user-init-file)
(global-set-key (kbd "<f8>") 'crux-find-user-init-file)

(global-set-key (kbd "C-<down>") 'shrink-window-horizontally)
(global-set-key (kbd "C-<up>") 'enlarge-window-horizontally)



;; executables
;; (global-unset-key (kbd "C-x i"))
;; (global-set-key (kbd "C-x C-i") 'tprost-init-file)
;; (global-set-key (kbd "C-x i i") 'tprost-init-file)
;; (global-set-key (kbd "C-x i I") 'tprost-init-file-for-major-mode)
;; (global-set-key (kbd "C-x i f") 'tprost-find-emacsd-file)
;; (global-set-key (kbd "C-x i d") 'tprost-init-directory)
;; (global-set-key (kbd "C-x i t") 'tprost-init-todo-file)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-x c") 'crux-cleanup-buffer-or-region)
(global-set-key (kbd "C-x d") 'dired)
;; (global-set-key (kbd "C-x e") 'kmacro-end-and-call-macro)
(global-set-key (kbd "C-x f") 'helm-find-files)
;; (global-set-key (kbd "C-x g") 'magit-status)
;; (global-set-key (kbd "C-x h") ') ;; TODO
;; (global-set-key (kbd "C-x i") ') ;; TODO
;; (global-set-key (kbd "C-x j") ') ;; TODO
;; (global-set-key (kbd "C-x k") 'kill-buffer)
;; (global-set-key (kbd "C-x l") ') ;; TODO
;; (global-set-key (kbd "C-x m") 'helm-make-projectile) ;; TODO
;; (global-set-key (kbd "C-x n") ') ;; TODO
;; (global-set-key (kbd "C-x o") 'other-window) ;; TODO
;; (global-set-key (kbd "C-x o") 'other-window) ;; TODO
(global-set-key (kbd "C-x p") 'helm-projectile-switch-project)
;; (global-set-key (kbd "C-x q") ') ;; TODO
;; (global-set-key (kbd "C-x r") ') ;; TODO
(global-set-key (kbd "C-x s") 'save-buffer)
(global-set-key (kbd "C-x t") 'crux-visit-term-buffer)
;; (global-set-key (kbd "C-x u") ') ;; TODO
;; (global-set-key (kbd "C-x v") ') ;; TODO
(global-set-key (kbd "C-x w") 'whitespace-mode)
(global-set-key (kbd "C-x y") 'company-yasnippet)
;; (global-set-key (kbd "C-x z") ') ;; TODO

(global-set-key (kbd "C-x L") 'tprost-project-layout)
;; (global-set-key (kbd "C-x S-E") 'eval-last-sexp)


;; (global-set-key (kbd "C-x c") 'crux-create-scratch-buffer)
;; (global-set-key (kbd "C-x !") 'crux-sudo-edit)


;; yasnippet prefix
(global-unset-key (kbd "C-x y"))
(global-unset-key (kbd "C-x C-y"))
(global-set-key (kbd "C-x C-y y") 'company-yasnippet)
(global-set-key (kbd "C-x C-y r") 'yas-reload-all)
(global-set-key (kbd "C-x C-y s") 'tprost-open-snippets-directory-dwim)

(global-unset-key (kbd "C-x C-o"))
(global-set-key (kbd "C-x C-o a") 'org-agenda)
(global-set-key (kbd "C-x C-o t") 'org-todo-list)
(global-set-key (kbd "C-x C-o c") 'org-capture)
(global-set-key (kbd "C-x C-o d") 'org-drill)


;; (global-set-key (kbd "C-x i") 'my-org-drill)
;; (global-set-key (kbd "C-x C-i r") 'my-org-drill-resume)
;; (global-set-key (kbd "C-x r") 'my-org-drill)

(global-set-key (kbd "C-x i") 'my-org-drill)
;; (global-set-key (kbd "C-x C-i r") 'my-org-drill-resume)
(global-set-key (kbd "C-x r") 'my-org-drill)

;; file prefix
(global-unset-key (kbd "C-x C-f"))
(global-set-key (kbd "C-x f") 'helm-find-files)
(global-set-key (kbd "C-x C-f f") 'helm-find-files)
(global-set-key (kbd "C-x C-f r") 'crux-rename-file-and-buffer)
(global-set-key (kbd "C-x C-f k") 'crux-delete-file-and-buffer)

;; custom global shit prefix
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x C-c e") 'tprost-find-emacsd-file)
(global-set-key (kbd "C-x C-c C-e e") 'tprost-find-emacsd-file)
(global-set-key (kbd "C-x C-c C-e i") 'tprost-init-file)
(global-set-key (kbd "C-x C-c C-e t") 'tprost-init-todo-file)

(global-set-key (kbd "C-x C-c C-p d") 'tprost-project-drill)
(global-set-key (kbd "C-x C-c C-p j") 'tprost-project-journal)
(global-set-key (kbd "C-x C-c C-p w") 'tprost-project-wiki)

(global-set-key (kbd "C-x C-c j") 'tprost-open-my-japanese-file)
(global-set-key (kbd "C-x C-c c") 'tprost-open-computer-science-drill-directory)
(global-set-key (kbd "C-x C-c d") 'org-drill)
(global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-japanese)
(global-set-key (kbd "C-x C-c C-d c") 'tprost-drill-computer-science)

;; (global-set-key (kbd "C-x C-c C-d j") 'tprost-drill-)

(global-unset-key (kbd "C-x C-d"))
(global-set-key (kbd "C-x C-d j") 'tprost-open-my-japanese-file)
(global-set-key (kbd "C-x C-d c") 'tprost-open-computer-science-drill-directory)
(global-set-key (kbd "C-x C-d C-o d") 'tprost-drill) ;; TODO
(global-set-key (kbd "C-x C-d C-d") 'tprost-drill) ;; TODO


;; window prefix
(global-unset-key (kbd "C-x C-w"))
(global-set-key (kbd "C-x C-w o") 'other-window)
(global-set-key (kbd "C-x C-w 1") 'delete-other-windows)
(global-set-key (kbd "C-x C-w 0") 'delete-window)

(global-set-key (kbd "C-x o") 'org-agenda)
(global-set-key (kbd "C-x 1") 'cleanup-buffer)

;; buffer prefix
(global-unset-key (kbd "C-x C-b"))
(global-set-key (kbd "C-x C-b r") 'rename-buffer)
(global-set-key (kbd "C-x C-b p") 'previous-buffer)
(global-set-key (kbd "C-x C-b n") 'next-buffer)
(global-set-key (kbd "C-x C-b v") 'revert-buffer)
(global-set-key (kbd "C-x C-b e") 'end-of-buffer)
(global-set-key (kbd "C-x C-b b") 'beginning-of-buffer)
(global-set-key (kbd "C-x C-b w") 'erase-buffer)
(global-set-key (kbd "C-x C-b c") 'cleanup-buffer)

(global-unset-key (kbd "C-x l"))


(global-set-key (kbd "C-x l") 'lsp)
(setq lsp-keymap-prefix "C-x C-l")
(define-key lsp-mode-map (kbd "C-x C-l") lsp-command-map)

(global-set-key (kbd "C-<tab>") 'company-yasnippet)

;; PROJECTILE
;; (setq projectile-keymap-prefix nil)
;; (global-unset-key (kbd "C-x p"))
;; (global-unset-key (kbd "C-x C-p"))
(define-key projectile-mode-map (kbd "C-x C-p") 'projectile-command-map)


;; (global-set-key (kbd "C-x C-p t") 'projectile-test-project)
;; (global-set-key (kbd "C-x C-p t") 'projectile-toggle-between-implementation-and-test)

;; (define-key projectile-mode-map (kbd "C-x p T") 'term-projectile-create-new)
(define-key projectile-command-map (kbd "x") 'projectile-test-project)
(define-key projectile-command-map (kbd "t") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "v") 'projectile-run-vterm)
(define-key projectile-command-map (kbd "d") 'projectile-debug)
(define-key projectile-command-map (kbd "d") 'projectile-debug)
(define-key projectile-command-map (kbd "g") 'projectile-grep)
(define-key projectile-command-map (kbd "o") 'projectile-toggle-between-implementation-and-test)
;; (define-key projectile-mode-map (kbd "C-x C-p x") 'projectile-test-project)
;; (define-key projectile-mode-map (kbd "C-x C-p t") 'projectile-run-term)
;; (define-key projectile-mode-map (kbd "C-x C-p t n") 'term-projectile-create-new)
;; (define-key projectile-mode-map (kbd "C-x p t b") 'term-projectile-backward)
;; (define-key projectile-mode-map (kbd "C-x p t f") 'term-projectile-forward)
;; (define-key projectile-mode-map (kbd "C-x p t s") 'term-projectile-switch-to)

;; python
(define-key python-mode-map (kbd "C-c i") 'py-isort-buffer)
(define-key python-mode-map (kbd "C-M-i") 'my-python-mode-add-import)
(define-key python-mode-map (kbd "C-M-o") 'my-python-organize-imports)
(define-key python-mode-map (kbd "C-M-j") 'lsp-find-definition)

(global-set-key (kbd "C-M-/") 'next-error)


(global-set-key (kbd "C-x D") 'dired-in-downloads-directory)

(global-set-key (kbd "C-x M-w b b") 'my-copy-buffer-file-name-with-path)
(global-set-key (kbd "C-x M-w b w") 'my-copy-buffer-file-name-without-path)

(global-set-key (kbd "C-;") 'avy-goto-char)
(global-set-key (kbd "C-:") 'avy-goto-line)
