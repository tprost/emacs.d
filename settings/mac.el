;; pixel pixel pixel pixel
(setq mac-allow-anti-aliasing nil)

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
