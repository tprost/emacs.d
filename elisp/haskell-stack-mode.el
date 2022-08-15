;;; hackystack-mode --- Summary
;;; Minor mode for Haskell projects
;;
;;
;;; Commentary:
;; 

(defun haskell-stack-testing-vterm-dwim ()
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
          (vterm-send-return))) buffer))

(defvar haskell-stack-mode-map (make-sparse-keymap)
  "The keymap for haskell-stack-mode.")

(define-minor-mode haskell-stack-mode
  "Toggle Haskell-Stack mode"
  :init-value nil
  :lighter " Hackystack"
  :keymap haskell-stack-mode-map
  :after-hook 'haskell-stack-mode-hook)
  
    

(defun haskell-stack-mode-if-appropriate ()
	"Start haskell-stack minor mode if buffer is in a Haskell project."
	(if (eq (projectile-project-type) 'haskell-stack)
			(haskell-stack-mode 1)))
	
(add-hook 'change-major-mode-hook 'haskell-stack-mode-if-appropriate)
  
;; (add-hook 'interactive-haskell-mode-hook #'haskell-project-bindings)

(provide 'haskell-stack-mode)
