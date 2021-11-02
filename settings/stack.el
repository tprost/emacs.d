(require 'vterm)

(defun my-projectile-run-stack-testing-vterm ()
  (interactive)
  (let* ((project (projectile-ensure-project (projectile-project-root)))          
         (buffer (concat "vterm-stack-" project)))    
    (if (buffer-live-p (get-buffer buffer))
        
        (with-current-buffer buffer
          (vterm-send-string ":reload")
          (vterm-send-return)
          (vterm-send-string ":main")
          (vterm-send-return))
        (progn
          (vterm buffer)
          (vterm-send-string (concat "cd " (projectile-project-root)))
          (vterm-send-return)
          (vterm-send-string "stack exec ghci test/Spec.hs")
          (vterm-send-return)))))

(defun my-toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))

(defun haskell-project-bindings ()
  (if (eq (projectile-project-type) 'haskell-stack)
      (haskell-stack-mode)
      ;; (local-set-key (kbd "C-q X") 'my-projectile-run-stack-testing-vterm)
      ;; (local-set-key (kbd "<f1>") 'my-projectile-run-stack-testing-vterm)
    ))



(defvar haskell-stack-mode-map (make-sparse-keymap)
  "The keymap for haskell-stack-mode.")



(define-minor-mode haskell-stack-mode
  "Toggle Haskell-Stack mode"
  :init-value nil
  :lighter " Haskell-Stack"
  :keymap haskell-stack-mode-map
  :after-hook 'haskell-stack-mode-hook
  (progn    
    ;; (if haskell-stack-mode
    ;;   (set-cursor-color "green")
    ;;   (set-cursor-color "white"))
    (if haskell-stack-mode
      (message "haskell-stack-mode activated")
      (message "haskell-stack-mode deactivated"))))
  
(add-hook 'projectile-mode-hook #'haskell-project-bindings)
          
