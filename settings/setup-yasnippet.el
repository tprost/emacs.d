(straight-use-package 'yasnippet)
(straight-use-package
 '(yasnippet-snippets :host github :repo "tprost/yasnippet-snippets"
            :branch "master"))

(require 'yasnippet)
(require 'yasnippet-snippets)

(yas-global-mode 1)

;; (setq yas-snippet-dirs
;;       '("~/.emacs.d/snippets"))


(defun check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
				(backward-char 1)
				(if (looking-at "->") t nil)))))

(defun do-yas-expand ()
  (let ((yas/fallback-behavior 'return-nil))
    (yas/expand)))

(defun tab-indent-or-complete ()
  (interactive)
  (cond
   ((minibufferp)
    (minibuffer-complete))
   (t
    (indent-for-tab-command)
    (if (or (not yas/minor-mode)
						(null (do-yas-expand)))
				(if (check-expansion)
						(progn
							(company-manual-begin)
							(if (null company-candidates)
									(progn
										(company-abort)
										(indent-for-tab-command)))))))))

(defun tab-complete-or-next-field ()
  (interactive)
  (if (or (not yas/minor-mode)
					(null (do-yas-expand)))
      (if company-candidates
					(company-complete-selection)
				(if (check-expansion)
						(progn
							(company-manual-begin)
							(if (null company-candidates)
									(progn
										(company-abort)
										(yas-next-field))))
					(yas-next-field)))))

(defun expand-snippet-or-complete-selection ()
  (interactive)
  (if (or (not yas/minor-mode)
					(null (do-yas-expand))
					(company-abort))
      (company-complete-selection)))

(defun abort-company-or-yas ()
  (interactive)
  (if (null company-candidates)
      (yas-abort-snippet)
    (company-abort)))

(provide 'setup-yasnippet)
