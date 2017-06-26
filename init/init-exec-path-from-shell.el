(require-package 'exec-path-from-shell)

(exec-path-from-shell-initialize)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


(provide 'init-exec-path-from-shell)
