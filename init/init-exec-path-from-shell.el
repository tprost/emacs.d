(require-package 'exec-path-from-shell)

(exec-path-from-shell-initialize)

(exec-path-from-shell-copy-env "PATH")

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(exec-path-from-shell-copy-env "PATH")
(exec-path-from-shell-copy-env "NVM_DIR")


(provide 'init-exec-path-from-shell)
