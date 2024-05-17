(straight-use-package 'vterm)

(require 'vterm)

(define-key vterm-mode-map (kbd "<f1>") nil)
(define-key vterm-mode-map (kbd "<f2>") nil)
(define-key vterm-mode-map (kbd "<f3>") nil)

(defun disable-vterm-function-keys ()
  "Disable all function keys (F1 to F24) in vterm mode."
  (let ((i 1))
    (while (<= i 24)
      (define-key vterm-mode-map (kbd (format "<f%d>" i)) nil)
      (setq i (1+ i)))))

(disable-vterm-function-keys)







(define-key vterm-mode-map (kbd "C-m") 'vterm-send-return)
(define-key vterm-mode-map (kbd "<C-m>") 'vterm-send-return)

(define-key vterm-mode-map (kbd "M-k") 'kill-current-buffer)
(define-key vterm-mode-map (kbd "M-h") nil)
(define-key vterm-mode-map (kbd "M-b") 'helm-buffer-list)

(provide 'bindings-vterm)
