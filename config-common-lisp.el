;;; config-common-lisp.el -*- lexical-binding: t; -*-
(after! sly

  (evil-define-key 'visual sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "C-<return>") 'eval-sexp-fu-sly-eval-expression-inner-list)
  (evil-define-key 'normal sly-mode-map (kbd "M-<return>") 'sly-eval-defun)
  (evil-define-key 'normal sly-mode-map (kbd "<localleader><return>") '+slite-run-at-point-dwim)
  (map! :localleader :n :map sly-mode-map
        :desc "My Custom Command" "<return>" #'+slite-run-at-point-dwim))

(after! magit
  (set-popup-rule! "^magit"
    :size 0.25                 ;; Makes the Magit status window take up half the frame height
    :side 'bottom             ;; Opens the window at the bottom
    :select t                 ;; Automatically focus the Magit window
    ))

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


(add-hook 'lisp-mode-hook 'evilisp-mode)
