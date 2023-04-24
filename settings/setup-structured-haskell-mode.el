(straight-use-package
 '(structured-haskell-mode :host github :repo "projectional-haskell/structured-haskell-mode"
            :branch "master" :build nil))

(setq shm-program-name "/nix/store/w4dr8dwdv7xai65xbdjfj7vndvg7h7hc-structured-haskell-mode-20170205-git/bin/structured-haskell-mode")


(add-to-list 'load-path "~/.emacs.d/straight/repos/structured-haskell-mode/elisp")

(require 'shm)

;; (remove-hook 'haskell-mode-hook 'structured-haskell-mode)



(provide 'setup-structured-haskell-mode)


