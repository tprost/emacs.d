;;; config-emacs-lisp.el -*- lexical-binding: t; -*-


(add-hook 'emacs-lisp-mode-hook 'evilisp-mode)

(after! smartparens
  (remove-hook 'emacs-lisp-mode-hook #'smartparens-global-mode))

(after! eval-sexp-fu
  (evil-define-key 'visual emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "M-<return>") 'eval-defun)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp))

(map! :localleader
      :map (emacs-lisp-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("d" . "debug")
               "f" #'+emacs-lisp/edebug-instrument-defun-on
               "F" #'+emacs-lisp/edebug-instrument-defun-off)
      (:prefix ("e" . "eval")
               "b" #'eval-buffer
               "d" #'eval-defun
               "p" #'eval-sexp-fu-eval-sexp-inner-list
               "e" #'eval-sexp-fu-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'eval-region
               "l" #'load-library)
      (:prefix ("g" . "goto")
               "f" #'find-function
               "v" #'find-variable
               "l" #'find-library))
