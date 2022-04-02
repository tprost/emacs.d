(defun my-kill-to-end-of-buffer ()
  "Kill to end of buffer."
(interactive)
(set-mark (point))
(end-of-buffer)
(kill-region (region-beginning) (region-end)))

(defun my-kill-to-beginning-of-buffer ()
  "Kill to beginning of buffer."
(interactive)
(set-mark (point))
(beginning-of-buffer)
(kill-region (region-beginning) (region-end)))

(defun my-helm-for-dir (project-dir)
  (let ((default-directory project-dir))
    (helm-projectile-find-file)))

(defun my-open-snippets-dwim ()
    "Go to whatever snippets directory is most likely to be the one I want."
    (interactive)
    (let ((major-mode-snippet-directory (concat (file-name-directory "~/.emacs.d/snippets/") (symbol-name major-mode))))
      (if (file-directory-p major-mode-snippet-directory)
          (dired major-mode-snippet-directory)
        (dired (file-name-directory "~/.emacs.d/snippets/")))))

(defun my-init-file ()
    "Go straight to my init file."
    (interactive)
    (find-file "~/.emacs.d/init.el"))

(defun my-init-todo-file ()
    "Go straight to my init TODO file."
    (interactive)
    (find-file "~/.emacs.d/todo.org"))

(defun my-init-file-for-major-mode ()
  "Go to init file for current major mode."
  (interactive)
  (let ((major-mode-init-file (concat (file-name-directory "~/.emacs.d/init/") "init-" (symbol-name major-mode) ".el")))
    (find-file major-mode-init-file)))

(defun my-find-emacsd-file ()
  "Go to my .emacs.d and run helm-projectile-find-file."
  (interactive)
  (my-helm-for-dir "~/.emacs.d"))

(defun my-init-directory ()
  "Go to my ~/.emacs.d/init."
  (interactive)
  (dired (file-name-directory "~/.emacs.d/init/")))

;; https://www.emacswiki.org/emacs/FindBuffer
(defun my-find-pet-buffer (prompt match how do-this name)
  "find pet buffer or create it if not found.
    Looks for a buffer with name matching 'match'.
    If it can't find such a buffer, it asks the user for exact
    command line for command 'do-this', and then does that.

    If name is nil, ignore, else rename buffer to name."
  (if (null (find-my-lost-buffer match (buffer-list)))
      (let ((compilation-buffer-name-function (lambda (dummy) name)))
        (funcall do-this (ask-how prompt how)))
    (progn
      (switch-to-buffer (find-my-lost-buffer match (buffer-list)))
      (end-of-buffer))))

(defun my-find-compilation-buffer ()
  (interactive)
  (my-find-pet-buffer "compile" "\*compilation" "make" 'compile nil))



;;set frame full height and 86 columns wide
;;and position at screen right
(defun my-resize-frame-for-coding-layout ()
  "set frame full height and 86 columns wide and position at screen right"
  (interactive)
  (set-frame-width (selected-frame) (+ 96 76))
  ;; (maximize-frame-vertically)
  (set-frame-height (selected-frame) 50)
  
  ;; (maximize-frame-vertically)
  ;; (set-frame-position (selected-frame) (- (display-pixel-width) (frame-pixel-width)) 0)
  )

(defun my-project-term ()
  (interactive)
  (projectile-run-term nil)
  )

(defun my-project-layout ()
  "Set up frame size and windows for coding!"
  (interactive)
  (my-resize-frame-for-coding-layout)
  (delete-other-windows)
  (split-window-horizontally)
  (my-find-pet-buffer "compile" "\*compilation" "make" 'compile nil)
  (purpose-toggle-window-purpose-dedicated)
  (other-window 1)
  (enlarge-window-horizontally 12)
  (window-configuration-to-register ?c)
)

(defun my-open-my-emacs-file ()
  (interactive)
  ;;; Place your code below this line, but inside the bracket.
  (find-file "~/.emacs.d/init.el"))

(defun my-open-my-japanese-file ()
  (interactive)
  (find-file "~/org/drill/japanese/drill.org"))

(defun my-open-computer-science-drill-directory ()
  (interactive)  
  (dired "~/org/drill/computer-science"))

(defun find-next-file (&optional backward)
  "Find the next file (by name) in the current directory.

With prefix arg, find the previous file."
  (interactive "P")
  (when buffer-file-name
    (let* ((file (expand-file-name buffer-file-name))
           (files (cl-remove-if (lambda (file) (cl-first (file-attributes file)))
                                (sort (directory-files (file-name-directory file) t nil t) 'string<)))
           (pos (mod (+ (cl-position file files :test 'equal) (if backward -1 1))
                     (length files))))
      (find-file (nth pos files)))))

(defun my-drill-computer-science ()
  (interactive)
  (my-open-computer-science-drill-directory)
  (find-file "algorithms.org")
  (org-drill 'directory))

(defun my-org-drill ()
  (interactive)  
  (org-drill (file-expand-wildcards "~/org/drill/**/*.org")))

(defun my-org-drill-resume ()
  (interactive)  
  (org-drill-resume))

;; ;; (require 'ccls)
;; (put 'downcase-region 'disabled nil)

;; (straight-use-package 'xah-lookup)

;; (require 'xah-lookup)

;; (defun my-lookup-japanese-wiktionary (&optional @word)
;;   "Lookup definition of current word or text selection in URL `https://ja.wiktionary.org/'
;; Version 2017-02-09"
;;   (interactive)
;;   (xah-lookup-word-on-internet
;;    @word
;;    (get 'my-lookup-japanese-wiktionary 'xah-lookup-url )
;;    (get 'my-lookup-japanese-wiktionary 'xah-lookup-browser-function )))

;; (put 'my-lookup-japanese-wiktionary 'xah-lookup-url "https://ja.wiktionary.org/wiki/word02051")
;; (put 'my-lookup-japanese-wiktionary 'xah-lookup-browser-function xah-lookup-browser-function)

;; (defun my-parse-japanese-wiktionary (&optional @word)
;;   "Hit https://ja.wiktionary.org and parse the contents"
  
;; (with-current-buffer (url-retrieve-synchronously "https://ja.wiktionary.org/wiki/test")
;;   (prog1
;;       (buffer-string)
;;     (kill-buffer))))




;; (load "~/.emacs.d/my.el")
;; (load "~/.emacs.d/dictionary-api.el")
;; ;; GNU Emac

(provide 'my-functions)
