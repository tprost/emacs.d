(straight-use-package 'magit)

(require 'magit)

(set-face-attribute 'magit-header-line nil
										:inherit 'mode-line
										:extend t
										:background "#b04300"
										:foreground "black"
										:box '(:line-width (4 . 4) :color "#b04300")
										:weight 'bold)

(provide 'setup-magit)
