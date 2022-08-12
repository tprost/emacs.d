;; https://github.com/jimeh/.emacs.d/blob/c845af831690d1ab575b691020fbe91ce6435647/modules/workspaces/siren-tab-bar.el#L119-L138
(defface my-tab-bar-tab
	`((t :inherit 'tab-bar-tab
			 :foreground ,(face-attribute 'font-lock-keyword-face :foreground nil t)))
	"Face for active tab in tab-bar."
	:group 'my-tab-bar)

(defface my-tab-bar-tab-hint
	`((t :inherit 'my-tab-bar-tab
			 :foreground ,(face-attribute 'tab-bar-tab-inactive :foreground nil t)))
	"Face for active tab hint in tab-bar."
	:group 'my-tab-bar)

(defface my-tab-bar-tab-inactive
	`((t :inherit 'tab-bar-tab-inactive
			 :foreground ,(face-attribute 'font-lock-comment-face :foreground nil t)))
	"Face for inactive tab in tab-bar."
	:group 'my-tab-bar)

(defface my-tab-bar-tab-hint-inactive
	`((t :inherit 'my-tab-bar-tab-inactive
				 :foreground ,(face-attribute 'tab-bar-tab-inactive :foreground nil t)))
		"Face for inactive tab hint in tab-bar."
		:group 'my-tab-bar)

(defun my-tab-bar-tab-name-format-default (tab i)
		(let* ((current-p (eq (car tab) 'current-tab))
					 (tab-face (if current-p
												 'my-tab-bar-tab
											 'my-tab-bar-tab-inactive))
					 (hint-face (if current-p
													'my-tab-bar-tab-hint
												'my-tab-bar-tab-hint-inactive)))
			(concat (propertize (if tab-bar-tab-hints (format " %d:" (- i 1)) " ")
													'face hint-face)
							(propertize
							 (concat
								(alist-get 'name tab) ""
								;; (or (and tab-bar-close-button-show
								;;          (not (eq tab-bar-close-button-show
								;;                   (if current-p 'non-selected 'selected)))
								;;          tab-bar-close-button)
								;;     "")
								" ")
							 'face tab-face))))

(setq tab-bar-show 1)
(setq tab-bar-tab-hints nil)
(setq tab-bar-tab-name-format-function 'my-tab-bar-tab-name-format-default)
(setq tabbar-use-images 1)
(tab-bar-mode nil)

(provide 'setup-tab-bar-mode)
