(require-package 'exec-path-from-shell)

(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)
(setq ns-function-modifier 'hyper)
;; (setq mac-option-modifier 'meta)
;; (setq mac-command-modifier 'super)
;; (setq ns-function-modifier 'hyper)

(when (memq window-system '(mac ns))
 (exec-path-from-shell-initialize))

(provide 'init-osx)
