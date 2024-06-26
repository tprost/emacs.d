;; (straight-use-package 'slime)
(straight-use-package 'sly)

;; (require 'slime)
(require 'sly)

(setq inferior-lisp-program "sbcl")
;; (setq slime-contribs '(slime-fancy quicklisp-systems))
;; (slime-setup '(slime-fancy slime-quicklisp slime-asdf))

;; (define-key slime-mode-map (kbd "C-<return>") 'slime-eval-defun)
;; slite is for running tests

(straight-use-package
 '(slite :host github :repo "tdrhq/slite"))
(require 'slite)

(defun slite-run-at-point (&optional raw-prefix-arg)
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

(defun slite-run-at-point-dwim (&optional raw-prefix-arg)
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

(add-hook 'lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'prettify-symbols-mode)

(defun my-common-lisp-mode-hook ()
  "Customize Common Lisp mode."
  (setq indent-tabs-mode nil) ; Use spaces instead of tabs
  (setq lisp-indent-offset 2)) ; Set the indentation level to 2 spaces

(add-hook 'lisp-mode-hook #'my-common-lisp-mode-hook)

;; Function to indent buffer before saving
(defun indent-buffer ()
  "Indent whole buffer before saving."
  (interactive)
  (indent-region (point-min) (point-max)))

;; Add to `before-save-hook` for Lisp modes
(add-hook 'lisp-mode-hook
          (lambda ()
            (add-hook 'before-save-hook #'indent-buffer nil 'local)))

(add-hook 'emacs-lisp-mode-hook
					(lambda ()
            (add-hook 'before-save-hook #'indent-buffer nil 'local)))

;; (straight-use-package 'mgl-try)

;; (define-key slime-mode-map (kbd "C-<return>") 'slime-eval-defun)
;; (define-key slime-mode-map (kbd "M-<return>") 'slime-eval-buffer)
;; (define-key slime-mode-map (kbd "H-<return>") 'slite-run-at-point-dwim)

(provide 'setup-common-lisp)
