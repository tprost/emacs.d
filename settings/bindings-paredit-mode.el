;;;
;;;
;;;

;;; (require 'paredit)

(setcdr paredit-mode-map (cdr (make-keymap)))

(define-key paredit-mode-map "(" 'paredit-open-round)
(define-key paredit-mode-map ")" 'paredit-close-round)
(define-key paredit-mode-map "[" 'paredit-open-square)
(define-key paredit-mode-map "\]" 'paredit-close-square)
(define-key paredit-mode-map "{" 'paredit-open-curly)
(define-key paredit-mode-map "}" 'paredit-close-curly)

(define-key paredit-mode-map "\\" 'paredit-backslash)
(define-key paredit-mode-map ";" 'paredit-semicolon)
(define-key paredit-mode-map "\"" 'paredit-doublequote)

(define-key paredit-mode-map (kbd "H-\(") 'paredit-wrap-round)
(define-key paredit-mode-map (kbd "H-\[") 'paredit-wrap-square)
(define-key paredit-mode-map (kbd "H-\{") 'paredit-wrap-curly)
(define-key paredit-mode-map (kbd "H-\"") 'paredit-meta-doublequote)

;; (define-key paredit-mode-map (kbd "C-d") 'paredit-delete-char)
;; (define-key paredit-mode-map (kbd "M-d") 'paredit-forward-kill-word)
;; (define-key paredit-mode-map (kbd "d") 'paredit-delete-char)
(define-key paredit-mode-map (kbd "H-C-d") 'paredit-delete-char)
(define-key paredit-mode-map (kbd "H-M-d") 'paredit-forward-kill-word)
(define-key paredit-mode-map (kbd "H-M-D") 'paredit-backward-kill-word)

(define-key paredit-mode-map (kbd "H-<backspace>") 'backward-kill-sexp)
(define-key paredit-mode-map (kbd "H-S-<backspace>") 'paredit-splice-sexp-killing-backward)
(define-key paredit-mode-map (kbd "H-D") 'paredit-splice-sexp-killing-forward)
(define-key paredit-mode-map (kbd "H-d") 'kill-sexp)

;; backward-kill-sexp
;; kill-sexp

;; (define-key paredit-mode-map (kbd "D") 'paredit-backward-delete)
(define-key paredit-mode-map (kbd "DEL") 'paredit-backward-delete)

(define-key paredit-mode-map (kbd "H-l") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "H-S-l") 'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "H-u") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "H-S-u") 'paredit-backward-barf-sexp)
(define-key paredit-mode-map (kbd "H-.") 'paredit-forward-slurp-sexp)
(define-key paredit-mode-map (kbd "H-,") 'paredit-backward-slurp-sexp)
(define-key paredit-mode-map (kbd "H->") 'paredit-forward-barf-sexp)
(define-key paredit-mode-map (kbd "H-<") 'paredit-backward-barf-sexp)

(define-key paredit-mode-map (kbd "H-C-f") 'paredit-forward)
(define-key paredit-mode-map (kbd "H-f") 'paredit-forward)
(define-key paredit-mode-map (kbd "H-C-f") 'paredit-forward-down)
(define-key paredit-mode-map (kbd "H-M-f") 'paredit-forward-up)

(define-key paredit-mode-map (kbd "H-C-b") 'paredit-backward)
(define-key paredit-mode-map (kbd "H-b") 'paredit-backward)
(define-key paredit-mode-map (kbd "H-C-b") 'paredit-backward-down)
(define-key paredit-mode-map (kbd "H-M-b") 'paredit-backward-up)

(define-key paredit-mode-map (kbd "H-k") 'paredit-kill)

(define-key paredit-mode-map (kbd "<insert>") 'paredit-mode)
(define-key emacs-lisp-mode-map (kbd "<insert>") 'paredit-mode)
(define-key clojure-mode-map (kbd "<insert>") 'paredit-mode)

;; (deftest happy-path-test 
;;   (let [response (hato/get (str guestlogix-portal-url "/legacy/po/offerings") { :body "" :throw-exceptions? false})]
;;     (testing "rstrstrst"
;;       (is (= 200 (:status response))))))

;; (nrs rnsite nrsetinsr i (sretnsrientier ( rstisrne f)) nst nsrte rnstie nrsi)

;; (set-key "C-c             Prefix Command
;; (define-key paredit-mode-map "H-d"             'paredit-delete-char)
;; (define-key paredit-mode-map "C-j"             'paredit-C-j)
;; (define-key paredit-mode-map "C-k"             'paredit-kill)
;; (define-key paredit-mode-map "RET"             'paredit-RET)

;; (define-key paredit-mode-map "ESC"
;; (set-key ""               "'paredit-doublequote)
;; (define-key paredit-mode-map "DEL"'paredit-backward-delete)
;; (define-key paredit-mode-map "C-('paredit-backward-slurp-sexp)
;; (define-key paredit-mode-map "C-)"'paredit-forward-slurp-sexp)
;; (define-key paredit-mode-map "C-{"'paredit-backward-barf-sexp)
;; (define-key paredit-mode-map "C-}"'paredit-forward-barf-sexp)
;; (define-key paredit-mode-map "C-M-<left>"'paredit-backward-slurp-sexp)
;; (define-key paredit-mode-map "C-M-<right>"'paredit-backward-barf-sexp)
;; (define-key paredit-mode-map "C-<left>"'paredit-forward-barf-sexp)
;; (define-key paredit-mode-map "C-<right>"'paredit-forward-slurp-sexp)
;; (define-key paredit-mode-map "M-<down>"'paredit-splice-sexp-killing-forward)
;; (define-key paredit-mode-map "M-<u"p>          'paredit-splice-sexp-killing-backward)
;; (define-key paredit-mode-map "<delete>"'paredit-forward-delete)
;; (define-key paredit-mode-map "<deletechar>"'paredit-forward-delete)

;; (define-key paredit-mode-map "C-c ESC"Prefix Command)

;; (define-key paredit-mode-map "C-M-b"''paredit-backward)
;; (define-key paredit-mode-map "C-M-d"'paredit-forward-down)
;; (define-key paredit-mode-map "C-M-f"'paredit-forward)
;; (define-key paredit-mode-map "C-M-n"'paredit-forward-up)
;; (define-key paredit-mode-map "C-M-"p           'paredit-backward-down)
;; (define-key paredit-mode-map "C-M-u"'paredit-backward-up)
;; (define-key paredit-mode-map "M-"             "'paredit-meta-doublequote)

;; (define-key paredit-mode-map "M-)"'paredit-close-round-and-newline)
;; (define-key paredit-mode-map "M-;"'paredit-comment-dwim)
;; (define-key paredit-mode-map "M-?"'paredit-convolute-sexp)
;; (define-key paredit-mode-map "M-J"'paredit-join-sexps)
;; (define-key paredit-mode-map "M-S"'paredit-split-sexp)
;; (define-key paredit-mode-map "M-d"'paredit-forward-kill-word)
;; (define-key paredit-mode-map "M-q"'paredit-reindent-defun)
;; (define-key paredit-mode-map "M-r"'paredit-raise-sexp)
;; (define-key paredit-mode-map "M-s"'paredit-splice-sexp)
;; (define-key paredit-mode-map "M-DEL"'paredit-backward-kill-word)
;; (define-key paredit-mode-map "ESC C-<left>"'paredit-backward-slurp-sexp)
;; (define-key paredit-mode-map "ESC C-<right>"'paredit-backward-barf-sexp)
;; (define-key paredit-mode-map "ESC <down>"'paredit-splice-sexp-killing-forward)
;; (define-key paredit-mode-map "ESC <u"p>        'paredit-splice-sexp-killing-backward)

;; (define-key paredit-mode-map "C-c C-M-l"'paredit-recenter-on-sexp)
 
(provide 'bindings-paredit-mode)
