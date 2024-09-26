;;; config-evil.el -*- lexical-binding: t; -*-

(after! evil
  (if (not (is-macosx))
      (progn
        (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "t") nil)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "s") nil)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "S") nil)

        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "k") nil)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "K") nil)

        (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
        (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
        (define-key evil-motion-state-map (kbd "f") 'evil-previous-line)
        (define-key evil-motion-state-map (kbd "F") 'evil-lookup)
        (define-key evil-motion-state-map (kbd "s") 'evil-next-line)
        (define-key evil-normal-state-map (kbd "S") 'evil-join)
        ;; (evil-define-key 'normal 'global (kbd  "s") 'evil-next-line)
        (define-key evil-normal-state-map (kbd "J") nil)
        (define-key evil-normal-state-map (kbd "T") nil)
        (define-key evil-motion-state-map (kbd "T") nil)
        (define-key evil-normal-state-map (kbd "R") nil)
        (define-key evil-motion-state-map (kbd "R") nil)
        ;; T is a would-be motion-state window command
        (define-key evil-motion-state-map (kbd "t") 'evil-forward-char)
        ;; R is a would-be motion-state window command

        (define-key evil-motion-state-map (kbd "r") 'evil-backward-char)

        ;; t
        (define-key evil-motion-state-map (kbd "h") 'evil-find-char-to)
        (define-key evil-motion-state-map (kbd "H") 'evil-find-char-to-backward)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "h") 'evil-snipe-t)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "H") 'evil-snipe-T)

        ;; f
        (define-key evil-motion-state-map (kbd "j") 'evil-find-char)
        (define-key evil-motion-state-map (kbd "J") 'evil-find-char-backward)

        ;; s
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "j") 'evil-snipe-s)
        (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "J") 'evil-snipe-S)
        (define-key evil-normal-state-map (kbd "k") 'evil-substitute)
        (define-key evil-normal-state-map (kbd "K") 'evil-change-whole-line)

        ;; r
        (define-key evil-normal-state-map (kbd "l") 'evil-replace)
        (define-key evil-normal-state-map (kbd "L") 'evil-enter-replace-state)
        (define-key evil-normal-state-map (kbd "r") nil)
        (define-key evil-normal-state-map (kbd "s") nil)
        (evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state))))

(after! evil
  (evil-define-key 'visual 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f2>") 'evil-normal-state)
  (evil-define-key 'visual 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state))

;; ffap-other-window;
