;;; config-common-lisp.el -*- lexical-binding: t; -*-
(use-package! eval-sexp-fu)
(use-package! slite)
(after! sly

  (evil-define-key 'visual sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "C-<return>") 'eval-sexp-fu-sly-eval-expression-inner-list)
  (evil-define-key 'normal sly-mode-map (kbd "M-<return>") 'sly-eval-defun)
  (evil-define-key 'normal sly-mode-map (kbd "<localleader><return>") '+slite-run-at-point-dwim)
  (map! :localleader :n :map sly-mode-map
        :desc "My Custom Command" "<return>" #'+slite-run-at-point-dwim))


(after! slite
  (require 'slite)

  (set-popup-rule! "^\\*Test Results\\*"
    :size '+popup-shrink-to-fit ;; Makes the buffer take up 25% of the frame height
    :side 'bottom              ;; Opens the window at the bottom
    :select nil                  ;; Automatically focus the buffer when it opens
    ))


(defun +slite-run-at-point (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (prin1-to-string
    `(parachute:test
      ,(let ((name (sly-parse-toplevel-form)))
         (if (symbolp name)
             `(quote ,(intern (sly-qualify-cl-symbol-name name)))
           name))))))

(defun +slite-run-at-point-dwim (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (cl-flet ((top-level-first-sexp
               ()
               (ignore-errors
                 (save-excursion
                   (goto-char (car (sly-region-for-defun-at-point)))
                   (down-list 1)
                   (car (last (sly-parse-context (read (current-buffer)))))))))
     (prin1-to-string
      `(,(cond
          ((let ((case-fold-search t))
             (string-match-p "define-test$" (symbol-name (top-level-first-sexp)) ))
           'parachute:test)
          (t
           'fiveam:run))
        ,(let ((name (sly-parse-toplevel-form)))
           (if (symbolp name)
               `',(intern (sly-qualify-cl-symbol-name name))
             name)))))))

(map! :localleader
      :map (clojure-lisp-mode-map lisp-interaction-mode-map)
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

(after! smartparens
  (remove-hook 'lisp-mode-hook #'smartparens-global-mode))

(add-hook 'lisp-mode-hook 'evilisp-mode)

(use-package! common-lisp-snippets)
(after! common-lisp-snippets
  (require 'common-lisp-snippets))
