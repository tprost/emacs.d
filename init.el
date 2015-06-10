(load "~/.emacs.d/settings/package")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(auto-save-timeout 3000)
 '(custom-enabled-themes (quote (wombat)))
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil)
 '(json-reformat:indent-width 3)
 '(json-reformat:pretty-string\? t)
 '(org-agenda-files (quote ("~/org/agenda.org")))
 '(org-agenda-span (quote fortnight))
 '(org-drill-optimal-factor-matrix
	 (quote
		((4
			(2.08 . 2.08)
			(2.46 . 2.46)
			(2.36 . 2.36)
			(2.22 . 2.22))
		 (3
			(1.9000000000000001 . 2.065)
			(2.1799999999999997 . 2.325)
			(2.22 . 2.22)
			(2.04 . 2.243)
			(2.5 . 2.5)
			(2.08 . 2.142)
			(2.2800000000000002 . 2.418)
			(2.1399999999999997 . 2.288)
			(2.8000000000000003 . 2.785)
			(2.56 . 2.583)
			(2.6 . 2.588)
			(2.7 . 2.679)
			(2.2199999999999998 . 2.328)
			(2.36 . 2.412)
			(2.46 . 2.496))
		 (2
			(2.08 . 2.142)
			(2.32 . 2.41)
			(1.92 . 2.234)
			(2.22 . 2.22)
			(2.1799999999999997 . 2.325)
			(2.2199999999999998 . 2.328)
			(2.5 . 2.5)
			(2.36 . 2.412)
			(1.8199999999999998 . 2.159)
			(2.04 . 2.243)
			(2.7 . 2.679)
			(1.96 . 2.238)
			(2.46 . 2.496)
			(2.6 . 2.588))
		 (1
			(2.3200000000000003 . 4.14)
			(1.9000000000000001 . 3.72)
			(1.8199999999999998 . 3.455)
			(1.92 . 3.58)
			(2.46 . 4.0)
			(2.1399999999999997 . 3.72)
			(2.04 . 3.59)
			(2.2199999999999998 . 3.725)
			(1.96 . 3.58)
			(2.1799999999999997 . 3.72)
			(2.6 . 4.14)
			(2.5 . 4.0)
			(2.36 . 3.86)
			(1.7000000000000002 . 3.44)))))
 '(org-modules
	 (quote
		(org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-drill)))
 '(tool-bar-mode nil))



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Monaco")))))

(setq org-capture-templates
			'(		;; ... other templates

				("o" "Journal Entry"
				 entry (file+datetree "~/org/journal.org")
				 "* %?"
				 :empty-lines 1)

				("j" "Japanese Drill"
				 entry (file "~/org/drill/japanese.org")
				 (file "~/.emacs.d/org/capture-templates/japanese-drill.org")
				 :empty-lines 1)

				("w" "Do The Work"
				 entry (file+datetree "~/org/the-work.org")
				 (file "~/.emacs.d/org/capture-templates/do-the-work.org")
				 :empty-lines 1)

				))

(defun tabify-buffer ()
	(interactive)
	(tabify (point-min) (point-max)))

(defun untabify-buffer ()
	(interactive)
	(untabify (point-min) (point-max)))

(defun indent-buffer ()
	(interactive)
	(indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
	"Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
	(interactive)
	(if indent-tabs-mode (tabify-buffer) (untabify-buffer))
	(delete-trailing-whitespace)
	(indent-buffer))

;; appearance
(load "~/.emacs.d/settings/appearance")

;; mac
(load "~/.emacs.d/settings/mac")

;; global key bindings
(load "~/.emacs.d/settings/bindings")

;; variables
(load "~/.emacs.d/settings/variables")

;; mode setup
(load "~/.emacs.d/settings/autocomplete.mode")
(load "~/.emacs.d/settings/js2.mode")
(load "~/.emacs.d/settings/org.mode")
(load "~/.emacs.d/settings/projectile.mode")
(load "~/.emacs.d/settings/yasnippet.mode")

(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-mode))

;; disable auto-save and auto-backup
(setq auto-save-default nil)

;; because apparently setting auto-save-default just isn't enough
(setq auto-save-interval 0)

(setq make-backup-files nil)
;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(scroll-bar-mode -1)

(rvm-use-default)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq ido-create-new-buffer 'always)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.swig?\\'" . web-mode))

(defun my-web-mode-hook ()
	"Hooks for Web mode."
	(setq web-mode-markup-indent-offset 2)
	(define-key web-mode-map (kbd "s-e") 'emmet-expand-line)
	(define-key web-mode-map (kbd "C-c t s") 'tagedit-forward-slurp-tag)
	(define-key web-mode-map (kbd "C-c t b") 'tagedit-forward-barf-tag)
	(define-key web-mode-map (kbd "M-r") 'tagedit-raise-tag)
	(define-key web-mode-map (kbd "M-s") 'tagedit-splice-tag)
	(define-key web-mode-map (kbd "M-J") 'tagedit-join-tags)
	(define-key web-mode-map (kbd "M-S") 'tagedit-split-tag)
	(define-key web-mode-map (kbd "M-?") 'tagedit-convolute-tags)
	(define-key web-mode-map (kbd "C-c t k") 'tagedit-kill)
	(define-key web-mode-map (kbd "s-k") 'tagedit-kill-attribute))

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'my-web-mode-hook)


;; TODO defun go-to-next-empty-line
;; TODO defun iy-go-to-char M-m (remap M-m to M-i)
;; TODO somehow make the bower lib directory accessible through projectile
;; TODO ace jump mode
;; TODO make some yasnippets for swig blocks
;; TODO kill current element but not contents
;; TODO unbind all the useless hotkeys

(defun my-electric-brace (arg)
  "Automatically add a closing '}' for every '{' inserted."
  (interactive "*P")
  (let ((count (prefix-numeric-value arg)))
    (self-insert-command count)
    (save-excursion
      (insert-char ?} count))))

(defun my-css-mode-hook ()
  (local-set-key (kbd "{") 'my-electric-brace))

(add-hook 'css-mode-hook 'my-css-mode-hook)
