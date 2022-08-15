(straight-use-package 'haskell-mode)
(straight-use-package 'lsp-haskell)
(straight-use-package 'haskell-snippets)

(require 'lsp-haskell)

;; ;; Hooks so haskell and literate haskell major modes trigger LSP setup
(add-hook 'haskell-mode-hook #'lsp-deferred)
;; ;; (add-hook 'haskell-mode-hook #'lsp)
;; ;; (add-hook 'haskell-literate-mode-hook #'lsp)

(defun my-haskell-mode-hook ()
  (set-fill-column 90))
  

(add-hook 'haskell-mode-hook #'my-haskell-mode-hook)
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)
(add-hook 'haskell-mode-hook 'haskell-collapse-mode)
(add-hook 'haskell-mode-hook 'ligature-mode)

;; (add-to-list 'company-backends 'company-ghc)
          
(defun my-haskell-send-region (start end)
    "Send region to Haskell Interactive"
    (interactive "r")
    (if (use-region-p)        
          (let ((b (current-buffer))
                (regionp (buffer-substring start end)))                 
              (haskell-interactive-bring)
              (insert regionp)
              (haskell-interactive-mode-return)
              (pop-to-buffer b))
        (message "Region not active")))

(defun my-haskell-hs-hide-all ()
  (interactive)
  (my-haskell-hs-open-all)
  (haskell-hide-toggle-all))

(defun my-haskell-hs-show-all ()
  (interactive)
  (hs-minor-mode -1)
  (hs-minor-mode 1))

(defun my-haskell-rename--with (oldName newName)
	(my-haskell-mark-function-definition)
	     (replace-string-in-region oldName newName)
		   (goto-char (region-beginning))
		   (open-line 1)
		   (insert (format "%s = %s" oldName newName))
	     (shell-command
				(read-string "Retrie Command: " (format " retrie --unfold Game.%s" oldName))))

(defun my-haskell-rename ()
	(interactive)
	(lsp-find-definition)
	(mark-word)
	(my-haskell-rename--with
	 (buffer-substring-no-properties (mark) (point))
	 (read-string "New name: "))) 	     

(defun my-haskell-retrie ()
	(interactive)	
  (shell-command (read-string "Retrie Command: " " retrie --adhoc \"forall f g
	xs. map f (map g xs) = map (f . g) xs\"")))

(defun my-haskell-mark-function-definition ()
	(interactive)
	(er/mark-paragraph))

(defun my-haskell-organize-imports ()
	(interactive)
	(save-buffer)
	(message (buffer-file-name))
	(message (format "fix-imports -i src -i test %s <%s >test.hs"
	(buffer-file-name) (buffer-file-name) (buffer-file-name)))
	(erase-buffer)
	(shell-command (format "fix-imports -i src -i test %s <%s" (buffer-file-name) (buffer-file-name) (buffer-file-name)) (current-buffer)))
	

(defun my-haskell-stack-project-setup ()
	(interactive)
	(switch-to-buffer (my-haskystack-testing-vterm-dwim))
	(my-haskystack-testing-vterm-dwim)
	(buffer-to-projectile-register-noninteractive ?t (current-buffer))
	
	(projectile-run-vterm)
	(buffer-to-projectile-register-noninteractive ?! (current-buffer))
	(buffer-to-projectile-register-noninteractive ?s (current-buffer))q
	
	(find-file (file-name-concat (projectile-project-root) "stack.yaml"))
	(buffer-to-projectile-register-noninteractive ?k (current-buffer))
	(find-file (file-name-concat (projectile-project-root) "package.yaml"))
	(buffer-to-projectile-register-noninteractive ?p (current-buffer))
	(find-file (file-name-concat (projectile-project-root) "todo.org"))
	(buffer-to-projectile-register-noninteractive ?o (current-buffer)))

(defun my-find-project-todo-file ()
  (interactive)
  (find-file (file-name-concat (projectile-project-root) "todo.org")))

(provide 'setup-haskell-mode)
