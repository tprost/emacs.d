;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))

(setq doom-font (font-spec :family "PragmataPro Mono" :size 16))


;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(use-package! eval-sexp-fu)
(use-package! slite)

;; (elpaca (elfmt :host github :repo "riscy/elfmt" :main "elfmt.el") (require 'elfmt))

(after! eval-sexp-fu
  (evil-define-key 'visual emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "C-<return>") 'eval-sexp-fu-eval-sexp-inner-list)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "M-<return>") 'eval-defun)
  (evil-define-key 'normal emacs-lisp-mode-map (kbd "<RET>") 'eval-sexp-fu-eval-sexp-inner-sexp)
  )

(map! :localleader
      :map (emacs-lisp-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("d" . "debug")
               "f" #'+emacs-lisp/edebug-instrument-defun-on
               "F" #'+emacs-lisp/edebug-instrument-defun-off)
      (:prefix ("e" . "eval")
               "b" #'eval-buffer
               "d" #'eval-defun
               "p" #'eval-sexp-fu-eval-sexp-inner-list
               "e" #'eval-sexp-fu-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'eval-region
               "l" #'load-library)
      (:prefix ("g" . "goto")
               "f" #'find-function
               "v" #'find-variable
               "l" #'find-library))

(after! evil
  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "t") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "s") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "S") nil)

  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "k") nil)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "K") nil)

  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
  (evil-define-key '(motion normal) evil-snipe-override-local-mode-map (kbd "f") nil)
  (define-key evil-motion-state-map (kbd "f") 'evil-previous-line)
  (define-key evil-motion-state-map (kbd "F") 'evil-lookup)
  (define-key evil-motion-state-map (kbd "s") 'evil-next-line)
  (define-key evil-normal-state-map (kbd "S") 'evil-join)
  ;; (evil-define-key 'normal 'global (kbd  "s") 'evil-next-line)
  (define-key evil-normal-state-map (kbd "J") nil)
  (define-key evil-normal-state-map (kbd "T") nil)
  (define-key evil-motion-state-map (kbd "T") nil)
  (define-key evil-normal-state-map (kbd "R") nil)
  (define-key evil-motion-state-map (kbd "R") nil)
  ;; T is a would-be motion-state window command
  (define-key evil-motion-state-map (kbd "t") 'evil-forward-char)
  ;; R is a would-be motion-state window command

  (define-key evil-motion-state-map (kbd "r") 'evil-backward-char)

  ;; t
  (define-key evil-motion-state-map (kbd "h") 'evil-find-char-to)
  (define-key evil-motion-state-map (kbd "H") 'evil-find-char-to-backward)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "h") 'evil-snipe-t)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "H") 'evil-snipe-T)

  ;; f
  (define-key evil-motion-state-map (kbd "j") 'evil-find-char)
  (define-key evil-motion-state-map (kbd "J") 'evil-find-char-backward)

  ;; s
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "j") 'evil-snipe-s)
  (evil-define-key '(motion normal) evil-snipe-local-mode-map (kbd "J") 'evil-snipe-S)
  (define-key evil-normal-state-map (kbd "k") 'evil-substitute)
  (define-key evil-normal-state-map (kbd "K") 'evil-change-whole-line)

  ;; r
  (define-key evil-normal-state-map (kbd "l") 'evil-replace)
  (define-key evil-normal-state-map (kbd "L") 'evil-enter-replace-state)
  (define-key evil-normal-state-map (kbd "r") nil)
  (define-key evil-normal-state-map (kbd "s") nil)
  (evil-define-key 'insert 'global (kbd "C-c") 'evil-normal-state)
  )

(setq major-mode-remap-alist '((clojure-mode . clojure-ts-mode)
                               (python-mode . python-ts-mode)))
(map! :localleader
      :map (clojure-lisp-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("d" . "debug")
               "f" #'+emacs-lisp/edebug-instrument-defun-on
               "F" #'+emacs-lisp/edebug-instrument-defun-off)
      (:prefix ("e" . "eval")
               "b" #'eval-buffer
               "d" #'eval-defun
               "p" #'eval-sexp-fu-eval-sexp-inner-list
               "e" #'eval-sexp-fu-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'eval-region
               "l" #'load-library)
      (:prefix ("g" . "goto")
               "f" #'find-function
               "v" #'find-variable
               "l" #'find-library))


;;
;; Setup my little "Evilisp" mode
;;
(defvar evilisp-mode-map (make-sparse-keymap))
(define-minor-mode evilisp-mode
  "A minor mode for custom Evil text objects specific to Lisp."
  :init-value nil
  :lighter " evilisp"
  :keymap evilisp-mode-map
  (when evilisp-mode (evil-normalize-keymaps)))

(use-package! evil-cleverparens)

(after! evil
  (defvar evilisp-outer-text-objects-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map evil-outer-text-objects-map)
      map)
    "Keymap for evilisp mode's outer text objects.")

  (defvar evilisp-inner-text-objects-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map evil-inner-text-objects-map)
      map)
    "Keymap for evilisp mode's outer text objects.")

  (define-key evilisp-outer-text-objects-map "f" #'evil-cp-a-form)
  (define-key evilisp-inner-text-objects-map "f" #'evil-cp-inner-form)
  (define-key evilisp-outer-text-objects-map "c" #'evil-cp-a-comment)
  (define-key evilisp-inner-text-objects-map "c" #'evil-cp-inner-comment)
  (define-key evilisp-outer-text-objects-map "d" #'evil-cp-a-defun)
  (define-key evilisp-inner-text-objects-map "d" #'evil-cp-inner-defun)
  (define-key evilisp-outer-text-objects-map "W" #'evil-cp-a-WORD)
  (define-key evilisp-inner-text-objects-map "W" #'evil-cp-inner-WORD)

  (evil-define-key 'visual evilisp-mode-map (kbd "a") evilisp-outer-text-objects-map)
  (evil-define-key nil evilisp-mode-map (kbd "H-f") 'beginning-of-defun)
  (evil-define-key nil evilisp-mode-map (kbd "<localleader>l") 'evil-evilisp-state)
  (map! :localleader :map evilisp-mode-map :n "l" 'evil-evilisp-state)
  (evil-define-key nil evilisp-mode-map (kbd "H-w") 'paredit-backward-up)
  (evil-define-key nil evilisp-mode-map (kbd "H-s") 'end-of-defun)
  (evil-define-key nil evilisp-mode-map (kbd "H-p") 'paredit-forward-up)
  (evil-define-key nil evilisp-mode-map (kbd "H-r") 'paredit-backward)
  (evil-define-key nil evilisp-mode-map (kbd "H-t") 'paredit-forward)
  (evil-define-key nil evilisp-mode-map (kbd "H-v") 'paredit-forward-down)
  (evil-define-key nil evilisp-mode-map (kbd "H-x") 'paredit-backward-down))

(add-hook 'emacs-lisp-mode-hook 'evilisp-mode)
(add-hook 'clojure-ts-mode-hook 'evilisp-mode)
(add-hook 'lisp-mode-hook 'evilisp-mode)

(use-package! cider-eval-sexp-fu)
(map! :localleader
      :map (clojure-ts-mode-map lisp-interaction-mode-map)
      :desc "Expand macro" "m" #'macrostep-expand
      (:prefix ("e" . "eval")
               "b" #'cider-eval-buffer
               "d" #'cider-eval-defun-at-point
               "p" #'eval-sexp-fu-cider-eval-sexp-inner-list
               "e" #'eval-sexp-fu-cider-eval-sexp-inner-sexp
               "x" #'eval-expression
               "r" #'cider-eval-region
               "l" #'load-library)
      )


(after! cider-eval-sexp-fu
  (evil-define-key 'visual clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "<RET>") 'eval-sexp-fu-cider-eval-sexp-inner-sexp)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "C-<return>") 'eval-sexp-fu-cider-eval-sexp-inner-list)
  (evil-define-key 'normal clojure-ts-mode-map (kbd "M-<return>") 'cider-eval-defun-at-point)
  )

(after! smartparens
  (remove-hook 'doom-first-buffer-hook #'smartparens-global-mode)
  (remove-hook 'emacs-lisp-mode-hook #'smartparens-global-mode)
  (remove-hook 'lisp-mode-hook #'smartparens-global-mode)

  (smartparens-global-mode -1)
  )

(after! evil
  (evil-define-key 'visual 'global (kbd "<f1>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f1>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f1>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f1>") 'evil-normal-state)
  (evil-define-key 'visual 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'replace 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'insert 'global (kbd "<f3>") 'evil-normal-state))
(use-package! envrc)
(after! envrc
  (envrc-global-mode))
(after! exec-path-from-shell
  (when (memq window-system '(mac ns x)) (exec-path-from-shell-initialize)))

(after! popup
  (set-popup-rule! "^\\*cider-repl"
    :side 'top))

(after! sly

  (evil-define-key 'visual sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "<RET>") 'eval-sexp-fu-sly-eval-expression-inner-sexp)
  (evil-define-key 'normal sly-mode-map (kbd "C-<return>") 'eval-sexp-fu-sly-eval-expression-inner-list)
  (evil-define-key 'normal sly-mode-map (kbd "M-<return>") 'sly-eval-defun)
  (evil-define-key 'normal sly-mode-map (kbd "<localleader><return>") '+slite-run-at-point-dwim)
  (map! :localleader :n :map sly-mode-map
        :desc "My Custom Command" "<return>" #'+slite-run-at-point-dwim)
  )
(after! magit
  (set-popup-rule! "^magit"
    :size 0.25                 ;; Makes the Magit status window take up half the frame height
    :side 'bottom             ;; Opens the window at the bottom
    :select t                 ;; Automatically focus the Magit window
    ))
(setq doom-theme 'doom-vibrant)
(after! slite
  (require 'slite)

  (set-popup-rule! "^\\*Test Results\\*"
    :size '+popup-shrink-to-fit ;; Makes the buffer take up 25% of the frame height
    :side 'bottom              ;; Opens the window at the bottom
    :select nil                  ;; Automatically focus the buffer when it opens
    )

  )


(defun +slite-run-at-point (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (prin1-to-string
    `(parachute:test
      ,(let ((name (sly-parse-toplevel-form)))
         (if (symbolp name)
             `(quote ,(intern (sly-qualify-cl-symbol-name name)))
           name))))))
(defun +slite-run-at-point-dwim (&optional raw-prefix-arg)
  "See `sly-compile-defun' for RAW-PREFIX-ARG."
  (interactive "P")
  (call-interactively 'sly-compile-defun)
  (slite-run
   (cl-flet ((top-level-first-sexp
               ()
               (ignore-errors
                 (save-excursion
                   (goto-char (car (sly-region-for-defun-at-point)))
                   (down-list 1)
                   (car (last (sly-parse-context (read (current-buffer)))))))))
     (prin1-to-string
      `(,(cond
          ((let ((case-fold-search t))
             (string-match-p "define-test$" (symbol-name (top-level-first-sexp)) ))
           'parachute:test)
          (t
           'fiveam:run))
        ,(let ((name (sly-parse-toplevel-form)))
           (if (symbolp name)
               `',(intern (sly-qualify-cl-symbol-name name))
             name)))))))
(use-package! expand-region)




(after! evil (evil-define-state evilisp
               "basically paredit mode but as an evil state and i add more crap"
               :tag " )> "
               :suppress-keymap t
               )
  (evil-define-key 'evilisp 'global (kbd "f") 'beginning-of-defun)

  (evil-define-key 'evilisp 'global (kbd "w") 'paredit-backward-up)
  (evil-define-key 'evilisp 'global (kbd "f") 'beginning-of-defun)
  (evil-define-key 'evilisp 'global (kbd "s") 'end-of-defun)
  (evil-define-key 'evilisp 'global (kbd "p") 'paredit-forward-up)
  (evil-define-key 'evilisp 'global (kbd "r") 'paredit-backward)
  (evil-define-key 'evilisp 'global (kbd "t") 'paredit-forward)
  (evil-define-key 'evilisp 'global (kbd "v") 'paredit-forward-down)

  (evil-define-key 'evilisp 'global (kbd "x") 'paredit-backward-down)
  (evil-define-key 'evilisp 'global (kbd "<f3>") 'evil-normal-state)
  (evil-define-key 'evilisp 'global (kbd "d") 'paredit-kill-region)
  )
