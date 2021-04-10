(straight-use-package 'lua-mode)

(setq lua-electric-flag nil)
(defun lua-abbrev-mode-off () (abbrev-mode 0))
(add-hook 'lua-mode-hook 'lua-abbrev-mode-off)
(setq save-abbrevs nil)



(defun rgc-lua-at-most-one-indent (old-function &rest arguments)
  (let ((old-res (apply old-function arguments)))
    (if (> old-res 2) 2 old-res)))

(advice-add #'lua-calculate-indentation-block-modifier
            :around #'rgc-lua-at-most-one-indent)

;; (setq lsp-clients-lua-language-server-bin "~/.emacs.d/.cache/lsp/lua-language-server/bin/MacOS/lua-language-server")

;; (defun lua-busted-fuckups-fix ()
;;   (save-excursion
;;     (lua-forward-line-skip-blanks 'back)
;;     (let* ((current-indentation (current-indentation))
;;            (line (thing-at-point 'line t))
;;            (busted-p (s-matches?
;;                       (rx (+ bol (* space)
;;                              (or "context" "describe" "it" "setup" "teardown")
;;                              "("))
;;                       line)))
;;           (when busted-p
;;             (+ current-indentation lua-indent-level)))))

;; (defun rgc-lua-calculate-indentation-override (old-function &rest arguments)
;;   (or (lua-busted-fuckups-fix)
;;       (apply old-function arguments)))

;; (advice-add #'lua-calculate-indentation-override
;;             :around #'rgc-lua-calculate-indentation-override)

(provide 'init-lua-mode)
