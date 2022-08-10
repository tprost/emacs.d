(straight-use-package 'magit)

(require 'magit)

(set-face-attribute 'magit-header-line nil
                    :overline nil
                    :underline nil
                      :foreground "black" :background "dark orange"
                      :box nil
                      :box '( :line-width 4 :color "dark orange")
                      )

(provide 'setup-magit)
