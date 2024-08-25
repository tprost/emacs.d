;;; evilisp.el -*- lexical-binding: t; -*-

(use-package! expand-region)
(defun +expand-region-to-parent ()
  "Expand the region to the parent form in Lisp."
  (interactive)
  (er/expand-region 2))

;; (use-package! bind-map)
;; (use-package! evil-lisp-state
;;   (after! evil-lisp-state

;;     (evil-lisp-state-leader "z")))
(defun +clean-up-trailing-parentheses ()
  "Remove any whitespace between the last symbol in a defun and the closing parenthesis."
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (evil-cp-end-of-defun)                                    ; Move to the end of the defun
    (backward-char)                     ; Move back over the last symbol
    (while (looking-at "[ \t\n]")       ; While there's whitespace
      (delete-char 1)
      (backward-char))                  ; Delete the whitespace
    (message "Trailing parentheses cleaned up!")))


(use-package! evil-cleverparens)
(after! evil-cleverparens
  (require 'evil-cleverparens-text-objects)

  (add-to-list 'evil-cp-additional-movement-keys '("R" . evil-cp-backward-sexp))
  (add-to-list 'evil-cp-additional-movement-keys '("T" . evil-cp-forward-sexp))

  (setq evil-cp-additional-movement-keys
        (assoc-delete-all "H" evil-cp-additional-movement-keys))
  (setq evil-cp-additional-movement-keys
        (assoc-delete-all "L" evil-cp-additional-movement-keys))
  (evil-cp-set-additional-movement-keys))


;;
;; Setup my little "Evilisp" mode
;;
(defvar evilisp-mode-map (make-sparse-keymap))
(define-minor-mode evilisp-mode
  "A minor mode for custom Evil text objects specific to Lisp."
  :init-value nil
  :lighter " evilisp"
  :keymap evilisp-mode-map
  (when evilisp-mode (evil-normalize-keymaps)))

(after! evil
  (defvar evilisp-outer-text-objects-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map evil-outer-text-objects-map)
      map)
    "Keymap for evilisp mode's outer text objects.")

  (defvar evilisp-inner-text-objects-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map evil-inner-text-objects-map)
      map)
    "Keymap for evilisp mode's outer text objects.")
  ;; https://github.com/emacs-evil/evil-cleverparens/blob/master/evil-cleverparens.el
  (define-key evilisp-outer-text-objects-map "f" #'evil-cp-a-form)
  (define-key evilisp-inner-text-objects-map "f" #'evil-cp-inner-form)
  (define-key evilisp-outer-text-objects-map "c" #'evil-cp-a-comment)
  (define-key evilisp-inner-text-objects-map "c" #'evil-cp-inner-comment)
  (define-key evilisp-outer-text-objects-map "d" #'evil-cp-a-defun)
  (define-key evilisp-inner-text-objects-map "d" #'evil-cp-inner-defun)

  (define-key evilisp-outer-text-objects-map "s" #'evil-cp-a-WORD)
  (define-key evilisp-inner-text-objects-map "s" #'evil-cp-inner-WORD)

  (evil-define-key 'normal evilisp-mode-map "T" #'evil-cp-forward-sexp)
  (evil-define-key 'normal evilisp-mode-map "R" #'evil-cp-backward-sexp)
  (evil-define-key 'normal evilisp-mode-map "(" #'evil-cp-backward-up-sexp)
  (evil-define-key 'normal evilisp-mode-map ")" #'evil-cp-up-sexp)

  (evil-define-key 'visual evilisp-mode-map (kbd "a") evilisp-outer-text-objects-map)
  (evil-define-key 'normal evilisp-mode-map (kbd "d") 'evil-cp-delete)
  (evil-define-key 'operator evilisp-mode-map (kbd "a") evilisp-outer-text-objects-map)
  (evil-define-key nil evilisp-mode-map (kbd "<localleader>l") 'evil-evilisp-state)
  (map! :localleader :map evilisp-mode-map :n "l" 'evil-evilisp-state)

  (evil-define-key nil evilisp-mode-map (kbd "<localleader>c") '+clean-up-trailing-parentheses)
  (map! :localleader :n :map evilisp-mode-map
        :desc "Tidy trailing parentheses" "c" #'+clean-up-trailing-parentheses)
  (if (is-macosx)

      (progn
        (evil-define-key nil evilisp-mode-map (kbd "M-k") 'evil-cp-beginning-of-defun)
        (evil-define-key nil evilisp-mode-map (kbd "M-j") 'evil-cp-end-of-defun)
        (evil-define-key nil evilisp-mode-map (kbd "M-H") 'evil-cp-backward-up-sexp)
        (evil-define-key nil evilisp-mode-map (kbd "M-h") 'evil-cp-backward-sexp)
        (evil-define-key nil evilisp-mode-map (kbd "M-l") 'evil-cp-forward-sexp)
        (evil-define-key nil evilisp-mode-map (kbd "M-L") 'evil-cp-up-sexp))
    (progn
      (evil-define-key nil evilisp-mode-map (kbd "M-f") 'evil-cp-beginning-of-defun)
      (evil-define-key nil evilisp-mode-map (kbd "M-s") 'evil-cp-end-of-defun)
      (evil-define-key nil evilisp-mode-map (kbd "M-R") 'evil-cp-backward-up-sexp)
      (evil-define-key nil evilisp-mode-map (kbd "M-r") 'evil-cp-backward-sexp)
      (evil-define-key nil evilisp-mode-map (kbd "M-t") 'evil-cp-forward-sexp)
      (evil-define-key nil evilisp-mode-map (kbd "M-T") 'evil-cp-up-sexp)
      (evil-define-key nil evilisp-mode-map (kbd "C-M-r") 'evil-cp-drag-backward)
      (evil-define-key nil evilisp-mode-map (kbd "C-M-t") 'evil-cp-drag-forward)))
  (evil-define-key nil evilisp-mode-map (kbd "M-w") 'evil-cp-forward-symbol-begin)
  (evil-define-key nil evilisp-mode-map (kbd "M-e") 'evil-cp-forward-symbol-end)
  (evil-define-key nil evilisp-mode-map (kbd "M-b") 'evil-cp-backward-symbol-begin)
  (evil-define-key nil evilisp-mode-map (kbd "M-g M-e") 'evil-cp-backward-symbol-end)

  (evil-define-key nil evilisp-mode-map (kbd "M-[") 'evil-cp-previous-opening)
  (evil-define-key nil evilisp-mode-map (kbd "M-]") 'evil-cp-next-closing)
  (evil-define-key nil evilisp-mode-map (kbd "M-y") 'evil-cp-yank)
  (evil-define-key nil evilisp-mode-map (kbd "M-Y") 'evil-cp-yank-line)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-x") 'evil-cp-delete-char-or-splice)
  (evil-define-key nil evilisp-mode-map (kbd "M-X") 'evil-cp-delete-char-or-splice-backwards)
  (evil-define-key nil evilisp-mode-map (kbd "M-a") 'evil-cp-insert-at-end-of-form)

  (evil-define-key nil evilisp-mode-map (kbd "C-M-t") 'sp-transpose-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-f") 'evil-cp-drag-backward)
  (evil-define-key nil evilisp-mode-map (kbd "C-M->") 'evil-cp->)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-<") 'evil-cp-<)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-J") 'sp-join-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-s") 'sp-splice-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-S") 'sp-split-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-R") 'evil-cp-raise-form)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-r") 'sp-raise-sexp)

  (evil-define-key nil evilisp-mode-map (kbd "C-M-i") 'evil-cp-insert-at-beginning-of-form)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-w") 'evil-cp-copy-paste-form)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-y") 'evil-cp-yank-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-d") 'evil-cp-delete-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-c") 'evil-cp-change-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-Y") 'evil-cp-yank-enclosing)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-D") 'evil-cp-delete-enclosing)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-C") 'evil-cp-change-enclosing)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-=") 'sp-indent-defun)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-o") 'evil-cp-open-below-form)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-v") 'sp-convolute-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-(") 'evil-cp-wrap-next-round)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-)") 'evil-cp-wrap-previous-round)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-{") 'evil-cp-wrap-next-curly)
  (evil-define-key nil evilisp-mode-map (kbd "C-M-}") 'evil-cp-wrap-previous-curly)

  (evil-define-key nil evilisp-mode-map (kbd "M-d") 'evil-cp-delete)
  (evil-define-key nil evilisp-mode-map (kbd "M-D") 'evil-cp-delete-line)
  (evil-define-key nil evilisp-mode-map (kbd "M-c") 'evil-cp-change)
  (evil-define-key nil evilisp-mode-map (kbd "M-C") 'evil-cp-change-line)

  (evil-define-key nil evilisp-mode-map (kbd "H-f") 'beginning-of-defun)
  (evil-define-key nil evilisp-mode-map (kbd "H-w") 'paredit-backward-up)
  (evil-define-key nil evilisp-mode-map (kbd "H-s") 'end-of-defun)
  (evil-define-key nil evilisp-mode-map (kbd "H-p") 'paredit-forward-up)
  (evil-define-key nil evilisp-mode-map (kbd "H-r") 'paredit-backward)
  (evil-define-key nil evilisp-mode-map (kbd "H-t") 'paredit-forward)
  (evil-define-key nil evilisp-mode-map (kbd "H-v") 'paredit-forward-down)

  (evil-define-key nil evilisp-mode-map (kbd "H-x") 'paredit-backward-down)
  (evil-define-key nil evilisp-mode-map (kbd "H-e") '+expand-region-to-parent)


  (evil-define-key nil evilisp-mode-map (kbd "H-o") 'paredit-wrap-around)
  (evil-define-key nil evilisp-mode-map (kbd "H-o") 'paredit-wrap-around)
  (evil-define-key nil evilisp-mode-map (kbd "H-)") 'paredit-forward-slurp-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "H-}") 'paredit-forward-barf-sexp)

  (evil-define-key nil evilisp-mode-map (kbd "H-(") 'paredit-backward-slurp-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "H-{") 'paredit-backward-barf-sexp)

  (evil-define-key nil evilisp-mode-map (kbd "H-S") 'paredit-split-sexp)
  (evil-define-key nil evilisp-mode-map (kbd "H-J") 'paredit-join-sexp))

;; not sure if I want to use this state or not
;;
;; maybe just using M-<key> bindings is better; it means I can still
;; use default evil commands for things more easily
(after! evil (evil-define-state evilisp
               "basically paredit mode but as an evil state and i add more crap"
               :tag " )> "
               :suppress-keymap t
               )
  (evil-define-key 'evilisp 'global (kbd "f") 'beginning-of-defun)

  (evil-define-key 'evilisp 'global (kbd "w") 'paredit-backward-up)
  (evil-define-key 'evilisp 'global (kbd "f") 'beginning-of-defun)
  (evil-define-key 'evilisp 'global (kbd "s") 'end-of-defun)
  (evil-define-key 'evilisp 'global (kbd "p") 'paredit-forward-up)
  (evil-define-key 'evilisp 'global (kbd "r") 'paredit-backward)
  (evil-define-key 'evilisp 'global (kbd "t") 'paredit-forward)
  (evil-define-key 'evilisp 'global (kbd "v") 'paredit-forward-down)

  (evil-define-key 'evilisp 'global (kbd "x") 'paredit-backward-down)
  (evil-define-key 'evilisp 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'evilisp 'global (kbd "d") nil))
