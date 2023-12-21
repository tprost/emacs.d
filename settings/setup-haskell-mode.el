(straight-use-package 'haskell-mode)
(straight-use-package 'lsp-haskell)
(straight-use-package 'haskell-snippets)
(straight-use-package 'helm-lsp)
;; (straight-use-package 'haskell-tng-mode)

;; (straight-use-package
;;  '(el-patch :type git :host github :repo "mickeynp/ligature.el"))
;; (straight-use-package 'dante)

;; TODO wishlist

;; quick lookup function on hoogle?
;; quick search on hoogle?
;; start repl
;; send block to repl
;; tree-sitter?
;; jump to definition
;; jump to definition of non-local function?
;; good completion company mode
;; indentation
;; format buffer
;; format region
;; show hide


(require 'lsp-haskell)
(require 'haskell-mode)
(require 'haskell-interactive-mode)

;; (require 'helm-lsp)
;; (require 'lsp-haskell)

;; ;; ;; Hooks so haskell and literate haskell major modes trigger LSP setup1
;; (add-hook 'haskell-mode-hook #'lsp-deferred)

;; ;; (add-hook 'csharp-mode-hook #'lsp-deferred)
;; ;; ;; (add-hook 'haskell-mode-hook #'lsp)
;; ;; ;; (add-hook 'haskell-literate-mode-hook #'lsp)

(defun my-haskell-mode-hook ()
	(ligature-mode)
	(flycheck-mode 0)
  (set-fill-column 90))


;; ;; 


;; ;; (add-hook 'haskell-mode-hook #'my-haskell-mode-hook)
;; ;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; ;; (add-hook 'haskell-mode-hook 'haskell-collapse-mode)
;; (add-hook 'haskell-mode-hook 'ligature-mode)
;; (add-hook 'haskell-mode-hook 'haskell-decl-scan-mode)

;; ;; (add-to-list 'company-backends 'company-ghc)
          
;; (defun my-haskell-send-region (start end)
;;     "Send region to Haskell Interactive"
;;     (interactive "r")
;;     (if (use-region-p)        
;;           (let ((b (current-buffer))
;;                 (regionp (buffer-substring start end)))                 
;;               (haskell-interactive-bring)
;;               (insert regionp)
;;               (haskell-interactive-mode-return)
;;               (pop-to-buffer b))
;;         (message "Region not active")))

;; (defun my-haskell-send-region-to-vterm (start end)
;;     "Send region to Haskell Interactive"
;;     (interactive "r")
;; 		(let ((regionp (buffer-substring start end)))
			
;; 		  (with-current-buffer "*vterm typerdrive ghci*"
;; 				(vterm-send-string ":{")
;; 				(vterm-send-return)
;; 			  (vterm-send-string regionp)
;; 				(vterm-send-return)
;; 				(vterm-send-string ":}")
;; 				(vterm-send-return))))    

;; (defun my-haskell-hs-hide-all ()
;;   (interactive)
;;   (my-haskell-hs-open-all)
;;   (haskell-hide-toggle-all))

;; (defun my-haskell-hs-show-all ()
;;   (interactive)
;;   (hs-minor-mode -1)
;;   (hs-minor-mode 1))

;; (defun my-haskell-rename--with (oldName newName)
;; 	(my-haskell-mark-function-definition)
;; 	     (replace-string-in-region oldName newName)
;; 		   (goto-char (region-beginning))
;; 		   (open-line 1)
;; 		   (insert (format "%s = %s" oldName newName))
;; 	     (shell-command
;; 				(read-string "Retrie Command: " (format " retrie --unfold Game.%s" oldName))))

;; (defun my-haskell-rename ()
;; 	(interactive)
;; 	(lsp-find-definition)
;; 	(mark-word)
;; 	(my-haskell-rename--with
;; 	 (buffer-substring-no-properties (mark) (point))
;; 	 (read-string "New name: "))) 	     

;; (defun my-haskell-retrie ()
;; 	(interactive)	
;;   (shell-command (read-string "Retrie Command: " " retrie --adhoc \"forall f g
;; 	xs. map f (map g xs) = map (f . g) xs\"")))

;; (defun my-haskell-mark-function-definition ()
;; 	(interactive)
;; 	(er/mark-paragraph))

;; (defun my-haskell-organize-imports ()
;; 	(interactive)
;; 	(save-buffer)
;; 	(message (buffer-file-name))
;; 	(message (format "fix-imports -i src -i test %s <%s >test.hs"
;; 	(buffer-file-name) (buffer-file-name) (buffer-file-name)))
;; 	(erase-buffer)
;; 	(shell-command (format "fix-imports -i src -i test %s <%s" (buffer-file-name) (buffer-file-name) (buffer-file-name)) (current-buffer)))
	

;; (defun my-haskell-stack-project-setup ()
;; 	(interactive)
;; 	(switch-to-buffer (haskell-stack-testing-vterm-dwim))
;; 	(my-haskystack-testing-vterm-dwim)
;; 	(buffer-to-projectile-register-noninteractive ?t (current-buffer))
	
;; 	(projectile-run-vterm)
;; 	(buffer-to-projectile-register-noninteractive ?! (current-buffer))
;; 	(buffer-to-projectile-register-noninteractive ?s (current-buffer))
	
;; 	(find-file (file-name-concat (projectile-project-root) "stack.yaml"))
;; 	(buffer-to-projectile-register-noninteractive ?k (current-buffer))
;; 	(find-file (file-name-concat (projectile-project-root) "package.yaml"))
;; 	(buffer-to-projectile-register-noninteractive ?p (current-buffer))
;; 	(find-file (file-name-concat (projectile-project-root) "todo.org"))
;; 	(buffer-to-projectile-register-noninteractive ?o (current-buffer)))

;; (defun my-find-project-todo-file ()
;;   (interactive)
;;   (find-file (file-name-concat (projectile-project-root) "todo.org")))


;; (defun my-tsc-forward-node ()
;; 	(interactive)
;; 	(goto-char (tsc-node-end-position (tree-sitter-node-at-pos :named))))


(add-hook 'haskell-mode-hook 'my-haskell-mode-hook)
;; ;; (flycheck-add-next-checker 'lsp 'haskell-stack-ghc)
;; (remove-hook 'haskell-mode-hook 'ligature-mode)
;; (remove-hook 'haskell-mode-hook 'haskell-decl-scan-mode)
;; (remove-hook 'haskell-mode-hook 'lsp-deferred)
;; (remove-hook 'haskell-mode-hook 'haskell-indentation-mode)
;; (remove-hook 'haskell-mode-hook 'interactive-haskell-mode)

(straight-use-package 'tree-sitter)
(straight-use-package 'tree-sitter-langs)

(add-hook 'haskell-mode-hook #'tree-sitter-mode)

;; (straight-use-package 'tsc)

;; (require 'tsc)


;; (require 'tree-sitter)
;; (require 'tree-sitter-langs)
;; (require 'tree-sitter-hl)
;; (require 'tree-sitter-langs) 
;; (require 'tree-sitter-debug)
;; (require 'tree-sitter-query)

;; (global-tree-sitter-mode 0)
;; ;; (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)


;; (straight-use-package 'eglot)
;; (require 'eglot)

;; (require 'haskell-tng-hsinspect)
;; (require 'haskell-tng-extra)
;; (require 'haskell-tng-extra-company)

;; (rassq-delete-all 'haskell-tng-mode auto-mode-alist)
;; (require 'cl)
;; (setq auto-mode-alist
;;       (remove-if (lambda (pair) (eq (cdr pair) 'haskell-tng-mode))
;;                  auto-mode-alist))


;; (setq-default flycheck-disabled-checkers '(haskell-stack-ghc))
(require 'ligature)

(ligature-set-ligatures 'haskell-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]"
                                       "|=" "|>" "{|" ;; "|-" "-|" "|-|" "|+|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://" "|->" "<-|"))

(provide 'setup-haskell-mode)



