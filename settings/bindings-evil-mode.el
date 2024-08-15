
(define-key evil-normal-state-map (kbd "n") 'evil-next-line)
(define-key evil-normal-state-map (kbd "p") 'evil-previous-line)

(define-key evil-normal-state-map (kbd "f") 'evil-forward-char)
(define-key evil-normal-state-map (kbd "b") 'evil-backward-char)
(define-key evil-normal-state-map (kbd "F") 'evil-forward-word-begin)
(define-key evil-normal-state-map (kbd "B") 'evil-backward-word-end)
(define-key evil-normal-state-map (kbd "a") 'evil-backward-word-begin)
(define-key evil-normal-state-map (kbd "e") 'evil-forward-word-end)
(define-key evil-normal-state-map (kbd "A") 'evil-backward-WORD-begin)
(define-key evil-normal-state-map (kbd "E") 'evil-forward-WORD-end)
(define-key evil-normal-state-map (kbd "^") 'evil-first-non-blank)
(define-key evil-normal-state-map (kbd "$") 'evil-end-of-line)

;; f b a e ^ $

(define-key evil-motion-state-map (kbd "f") 'evil-forward-char)
(define-key evil-motion-state-map (kbd "b") 'evil-backward-char)
(define-key evil-motion-state-map (kbd "F") 'evil-forward-word-begin)
(define-key evil-motion-state-map (kbd "B") 'evil-backward-word-end)
(define-key evil-motion-state-map (kbd "a") 'evil-backward-word-begin)
(define-key evil-motion-state-map (kbd "e") 'evil-forward-word-end)
(define-key evil-motion-state-map (kbd "A") 'evil-backward-WORD-begin)
(define-key evil-motion-state-map (kbd "E") 'evil-forward-WORD-end)
(define-key evil-motion-state-map (kbd "^") 'evil-first-non-blank)
(define-key evil-motion-state-map (kbd "$") 'evil-end-of-line)

(define-key evil-normal-state-map (kbd "k") 'evil-delete)
(define-key evil-normal-state-map (kbd "K") 'evil-delete-line)
(define-key evil-normal-state-map (kbd "w") 'evil-yank)
(define-key evil-normal-state-map (kbd "W") 'evil-yank-line)
(define-key evil-normal-state-map (kbd "y") 'yank)
(define-key evil-normal-state-map (kbd "Y") 'yank-pop)
(define-key evil-normal-state-map (kbd "l") 'evil-paste-after)
(define-key evil-normal-state-map (kbd "L") 'evil-paste-before)

(define-key evil-motion-state-map (kbd "w") 'evil-yank)
(define-key evil-motion-state-map (kbd "W") 'evil-yank-line)
(define-key evil-motion-state-map (kbd "y") nil)
(define-key evil-motion-state-map (kbd "Y") nil)

;; Undo
(define-key evil-normal-state-map (kbd "u") 'evil-undo)
(define-key evil-normal-state-map (kbd "U") 'evil-redo)

(define-key evil-normal-state-map (kbd "x") 'evil-delete-char)

;; (define-key evil-visual-state-map (kbd "w") 'evil-yank)
;; (define-key evil-visual-state-map (kbd "W") 'evil-yank-line)
;; (define-key evil-visual-state-map (kbd "y") nil)
;; (define-key evil-visual-state-map (kbd "Y") nil)

;; (define-key evil-visual-state-map (kbd "w") 'evil-yank)
;; (define-key evil-visual-state-map (kbd "W") 'evil-yank-line)
;; (define-key evil-visual-state-map (kbd "p") 'evil-paste-after)
;; (define-key evil-visual-state-map (kbd "Y") nil)
;; (define-key evil-visual-state-map (kbd "y") 'evil-paste-after)

;; evil-find-char   was mapped to f in normal mode
;; evil-search-next was mapped to n in normal mode
;; evil-?                         a in normal mode (the insert thingie);

(setq evil-emacs-state-cursor '("blue" box))
(setq evil-normal-state-cursor '("firebrick" box))
(setq evil-visual-state-cursor '("cyan" box))
(setq evil-insert-state-cursor '("dark violet" box))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))

(setq evil-move-beyond-eol t)

(provide 'bindings-evil-mode)
