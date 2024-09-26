;;; config-clojure.el -*- lexical-binding: t; -*-

(use-package! eval-sexp-fu :defer t)
(use-package! cider-eval-sexp-fu :defer t)
(map! :localleader
      :map (clojure-ts-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("e" . "eval")
               "b" #'cider-eval-buffer
               "d" #'cider-eval-defun-at-point
               "p" #'eval-sexp-fu-cider-eval-sexp-inner-list
               "e" #'eval-sexp-fu-cider-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'cider-eval-region
               "l" #'load-library))


(after! cider-eval-sexp-fu
  (evil-define-key 'visual clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "C-<return>") 'eval-sexp-fu-cider-eval-sexp-inner-list)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "M-<return>") 'cider-eval-defun-at-point))

(after! popup
  (set-popup-rule! "^\\*cider-repl"
    :side 'top))

(after! '(smartparens clojure-ts-mode)
  (remove-hook 'clojure-ts-hook #'smartparens-global-mode))

(add-hook 'clojure-ts-mode-hook 'evilisp-mode)

(defun remove-function-from-after-save-hooks (fn)
  "Remove FN from `after-save-hook` in all buffers."
  (dolist (buffer (buffer-list))
    (with-current-buffer buffer
      (remove-hook 'after-save-hook fn t))))

;; Example usage: Remove 'my-function from all after-save hooks
(remove-function-from-after-save-hooks 'cider-format-buffer)
