(define-key org-mode-map (kbd "H-p") 'org-previous-visible-heading)
(define-key org-mode-map (kbd "H-n") 'org-next-visible-heading)
(define-key org-mode-map (kbd "H-f") 'org-forward-heading-same-level)
(define-key org-mode-map (kbd "H-b") 'org-backward-heading-same-level)
(define-key org-mode-map (kbd "H-u") 'org-up-heading)
(define-key org-mode-map (kbd "H-j") 'org-goto)

(define-key org-mode-map (kbd "H-.") 'org-cycle)
(define-key org-mode-map (kbd "H-C-.") 'org-global-cycle)
;; outline-show-all
;; org-reveal
;; oiutline-show-branches
;; outline-show-children

(define-key org-mode-map (kbd "H-<return>") 'org-meta-return)
;; TODO
;; C-RET (org-insert-heading-respect-content)
;; M-S-RET (org-insert-todo-heading)
;; C-S-RET (org-insert-todo-heading-respect-content)

(defhydra hydra-move-text (org-mode-map "H-v")
  "Drag trees around."
  ("n" org-move-subtree-down "down")
  ("p" org-move-subtree-up "up")
	("RET" nil "done"))

(define-key org-mode-map (kbd "H-o") 'org-promote-subtree)
(define-key org-mode-map (kbd "H-S-O") 'org-demote-subtree)

(define-key org-mode-map (kbd "H-@") 'org-mark-subtree)
(define-key org-mode-map (kbd "H-m") 'org-mark-subtree)

(define-key org-mode-map (kbd "H-y") 'org-yank)
(define-key org-mode-map (kbd "H-^") 'org-sort)

;; TODO cut copy paste subtrees
;; TODO org clone
;; TODO refile
;; TODO narrowing commands

;; TODO everything in the manual from
;; https://orgmode.org/manual/Sparse-Trees.html

(define-key org-mode-map (kbd "C-c C-l") 'org-insert-link)
; ;; (define-key org-mode-map (kbd "H-x H-t") 'org-table-align)



(define-key my-org-todo-mode-map (kbd "<f1>") 'my-org-todo-file-cleanup)

(provide 'bindings-org-mode)
