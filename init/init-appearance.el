(require 'dash)

(straight-use-package 'ansi-color)
(straight-use-package 'beacon)

(straight-use-package 'darktooth-theme)

(setq default-frame-alist
      (append (list
	           '(min-height . 1)
               '(height     . 45)
	           '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 1)
               '(right-fringe   . 1)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))


(setq-default fill-column 80)

(setq-default display-fill-column-indicator-character ?⬝)

(set-face-attribute 'default nil :font (reverse "81 agiL onoM orPatamgarP"))
(if (eq system-type 'darwin)
    (set-face-attribute 'default nil :font (reverse "61 agiL onoM orPatamgarP"))  
)


(require 'darktooth-theme)

(load-theme 'darktooth t)


(face-attribute 'mode-line :background)
(face-attribute 'mode-line :foreground)
(face-attribute 'default :background)

(setq window-header-line-height 40)
(setq window-divider-default-places 'right-only)

(setq scroll-margin 6)
;; (setq x-underline-at-descent-line t)

(setq window-divider-default-right-width 24)
(face-attribute 'default :background)

(window-divider-mode 1)

(set-face-attribute 'window-divider nil
                      :foreground "#282828" :background "#282828")
(set-face-attribute 'window-divider-first-pixel nil
                      :foreground "#282828")
(set-face-attribute 'window-divider-last-pixel nil
                      :foreground "#282828")

(set-face-attribute 'header-line nil                                        
                    :background "#1D2021"
                    ;; :foreground "white"
                    ;; :box '(:line-width 3)
                    :box nil
                    :box '( :line-width 4 :color "#1D2021")
                    :overline nil
                    :underline nil)

;; (set-face-attribute 'mode-line nil
;;                     ;; :background "#565063"
;;                     ;; :foreground "white"
;;                     :height 0.1
;;                     :box nil
;;                     :overline nil
;;                     :underline nil)
;; (set-face-attribute 'mode-line-inactive nil
;;                     ;; :background "#565063"
;;                     ;; :foreground "white"
;;                     :box '(:line-width 4 :color "#565063")
;;                     :overline nil
;;                     :underline nil)


(add-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

(custom-set-faces
 
'(fill-column-indicator ((t (:inherit shadow :stipple nil :foreground "gray40"
:inverse-video nil :box nil :strike-through nil :overline nil :underline nil
:slant normal :weight normal)))))

(defface echo-area
  '((t :foreground "white"
       :background "black"
       :inherit default       
       :overline nil
                    :underline nil
       ))
  "Face for function parameters."
  :group 'basic-faces )

;; (dolist
;;     (buf (list " *Minibuf-0*" " *Minibuf-1*" " *Echo Area 0*" " *Echo Area 1*" "*Quail Completions*"))
;;   (when (get-buffer buf)
;;     (with-current-buffer buf
      
;;       (setq-local face-remapping-alist '((default default))))))
                         

(menu-bar-mode -1)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)

(defconst pp-prettify-symbols-alist
  (mapcar (lambda (s)
            `(,(car s)
              .
              ,(vconcat
                (apply 'vconcat
                       (make-list
                        (- (length (car s)) 1)
                        (vector (decode-char 'ucs #X0020) '(Br . Bl))))
                (vector (decode-char 'ucs (cadr s))))))
          '(("[INFO ]"    #XE280)
            ("[WARN ]"    #XE281)
            ("[PASS ]"    #XE282)
            ("[VERBOSE]"  #XE283)
            ("[KO]"       #XE284)
            ("[OK]"       #XE285)
            ("[PASS]"     #XE286)
            ("[ERROR]"    #XE2C0)
            ("[DEBUG]"    #XE2C1)
            ("[INFO]"     #XE2C2)
            ("[WARN]"     #XE2C3)
            ("[WARNING]"  #XE2C4)
            ("[ERR]"      #XE2C5)
            ("[FATAL]"    #XE2C6)
            ("[TRACE]"    #XE2C7)
            ("[FIXME]"    #XE2C8)
            ("[TODO]"     #XE2C9)
            ("[BUG]"      #XE2CA)
            ("[NOTE]"     #XE2CB)
            ("[HACK]"     #XE2CC)
            ("[MARK]"     #XE2CD)
            ("[FAIL]"     #XE2CE)
            ("# ERROR"    #XE2F0)
            ("# DEBUG"    #XE2F1)
            ("# INFO"     #XE2F2)
            ("# WARN"     #XE2F3)
            ("# WARNING"  #XE2F4)
            ("# ERR"      #XE2F5)
            ("# FATAL"    #XE2F6)
            ("# TRACE"    #XE2F7)
            ("# FIXME"    #XE2F8)
            ("# TODO"     #XE2F9)
            ("# BUG"      #XE2FA)
            ("# NOTE"     #XE2FB)
            ("# HACK"     #XE2FC)
            ("# MARK"     #XE2FD)
            ("# FAIL"     #XE2FE)
            ("// ERROR"   #XE2E0)
            ("// DEBUG"   #XE2E1)
            ("// INFO"    #XE2E2)
            ("// WARN"    #XE2E3)
            ("// WARNING" #XE2E4)
            ("// ERR"     #XE2E5)
            ("// FATAL"   #XE2E6)
            ("// TRACE"   #XE2E7)
            ("// FIXME"   #XE2E8)
            ("// TODO"    #XE2E9)
            ("// BUG"     #XE2EA)
            ("// NOTE"    #XE2EB)
            ("// HACK"    #XE2EC)
            ("// MARK"    #XE2ED)
            ("// FAIL"    #XE2EE)
            ("!="         #XE900)
            ("!=="        #XE901)
            ("!=="        #XE902)
            ("!≡"         #XE903)
            ("!≡≡"        #XE904)
            ("#("         #XE90C)
            ("#_"         #XE90D)
            ("#{"         #XE90E)
            ("#?"         #XE90F)
            ("##"         #XE910)
            ("#_("        #XE911)
            ("#["         #XE912)
            ("%="         #XE920)
            ("&%"         #XE92C)
            ("&&"         #XE92D)
            ("&+"         #XE92E)
            ("&-"         #XE92F)
            ("&/"         #XE930)
            ("&="         #XE931)
            ("&&&"        #XE932)
            ("$>"         #XE93A)
            ("(|"         #XE940)
            ("*>"         #XE946)
            ("++"         #XE94C)
            ("+++"        #XE94D)
            ("+="         #XE94E)
            ("+>"         #XE94F)
            ("++="        #XE950)
            ("--"         #XE960)
            ("-<"         #XE961)
            ("-<<"        #XE962)
            ("-="         #XE963)
            ("->"         #XE964)
            ("->>"        #XE965)
            ("---"        #XE966)
            ("-->"        #XE967)
            ("-+-"        #XE968)
            ("-\\/"        #XE969)
            ("-|>"        #XE96A)
            ("-<|"        #XE96B)
            ("->-"        #XE96C)
            ("-<-"        #XE96D)
            ("-|"         #XE96E)
            ("-||"        #XE96F)
            ("-|:"        #XE970)
            (".="         #XE979)
            ("//="        #XE994)
            ("/="         #XE995)
            ("/=="        #XE996)
            ("/-\\"       #XE997)
            ("/-:"        #XE998)
            ("/->"        #XE999)
            ("/=>"        #XE99A)
            ("/-<"        #XE99B)
            ("/=<"        #XE99C)
            ("/=:"        #XE99D)
            (":="         #XE9AC)
            (":≡"         #XE9AD)
            (":=>"        #XE9AE)
            (":-\\"       #XE9AF)
            (":=\\"       #XE980)
            (":-/"        #XE981)
            (":=/"        #XE982)
            (":-|"        #XE983)
            (":=|"        #XE984)
            (":|-"        #XE985)
            (":|="        #XE986)
            ("<$>"        #XE9C0)
            ("<*"         #XE9C1)
            ("<*>"        #XE9C2)
            ("<+>"        #XE9C3)
            ("<-"         #XE9C4)
            ("<<="        #XE9C5)
            ("<=>"        #XE9C7)
            ("<>"         #XE9C8)
            ("<|>"        #XE9C9)
            ("<<-"        #XE9CA)
            ("<|"         #XE9CB)
            ("<=<"        #XE9CC)
            ("<~"         #XE9CD)
            ("<~~"        #XE9CE)
            ("<<~"        #XE9CF)
            ("<$"         #XE9D0)
            ("<+"         #XE9D1)
            ("<!>"        #XE9D2)
            ("<@>"        #XE9D3)
            ("<#>"        #XE9D4)
            ("<%>"        #XE9D5)
            ("<^>"        #XE9D6)
            ("<&>"        #XE9D7)
            ("<?>"        #XE9D8)
            ("<.>"        #XE9D9)
            ("</>"        #XE9DA)
            ("<\\>"       #XE9DB)
            ("<\">"       #XE9DC)
            ("<:>"        #XE9DD)
            ("<~>"        #XE9DE)
            ("<**>"       #XE9DF)
            ("<<^"        #XE9E0)
            ("<="         #XE9E1)
            ("<->"        #XE9E2)
            ("<!--"       #XE9E3)
            ("<--"        #XE9E4)
            ("<~<"        #XE9E5)
            ("<==>"       #XE9E6)
            ("<|-"        #XE9E7)
            ("<||"        #XE9E8)
            ("<<|"        #XE9E9)
            ("<-<"        #XE9EA)
            ("<-->"       #XE9EB)
            ("<<=="       #XE9EC)
            ("<=="        #XE9ED)
            ("<-\\"        #XE9EE)
            ("<-/"        #XE9EF)
            ("<=\\"        #XE9F0)
            ("<=/"        #XE9F1)
            ("=<<"        #XEA00)
            ("=="         #XEA01)
            ("==="        #XEA02)
            ("==>"        #XEA03)
            ("=>"         #XEA04)
            ("=~"         #XEA05)
            ("=>>"        #XEA06)
            ("=~="        #XEA07)
            ("==>>"       #XEA08)
            ("=>="        #XEA09)
            ("=<="        #XEA0A)
            ("=<"         #XEA0B)
            ("==<"        #XEA0C)
            ("=<|"        #XEA0D)
            ("=/="        #XEA0F)
            ("=/<"        #XEA10)
            ("=|"         #XEA11)
            ("=||"        #XEA12)
            ("=|:"        #XEA13)
            (">-"         #XEA20)
            (">>-"        #XEA22)
            (">>="        #XEA23)
            (">=>"        #XEA24)
            (">>^"        #XEA25)
            (">>|"        #XEA26)
            (">!="        #XEA27)
            (">->"        #XEA28)
            (">=="        #XEA29)            
            (">="         #XEA2A)
            (">/="        #XEA2B)
            (">-|"        #XEA2C)
            (">=|"        #XEA2D)
            (">-\\"        #XEA2E)
            (">=\\"        #XEA2F)
            (">-/"        #XEA30)
            (">=/"        #XEA31)
            (">λ="        #XEA32)
            ("?."         #XEA3F)
            ("^="         #XEA43)
            ("^<<"        #XEA48)
            ("^>>"        #XEA49)
            ("\\="         #XEA54)
            ("\\=="        #XEA55)
            ("\\/="        #XEA56)
            ("\\-/"        #XEA57)
            ("\\-:"        #XEA58)
            ("\\->"        #XEA59)
            ("\\=>"        #XEA5A)
            ("\\-<"        #XEA5B)
            ("\\=<"        #XEA5C)
            ("\\=:"        #XEA5D)
            ("|="         #XEA69)
            ("|>="        #XEA6A)
            ("|>"         #XEA6B)
            ("|+|"        #XEA6C)
            ("|->"        #XEA6D)
            ("|-->"       #XEA6E)
            ("|=>"        #XEA6F)
            ("|==>"       #XEA70)
            ("|>-"        #XEA71)
            ("|<<"        #XEA72)
            ("||>"        #XEA73)
            ("|>>"        #XEA74)
            ("|-"         #XEA75)
            ("||-"        #XEA76)
            ("||="        #XEA77)
            ("|)"         #XEA78)
            ("|]"         #XEA79)
            ("|-:"        #XEA7A)
            ("|=:"        #XEA7B)
            ("|-<"        #XEA7C)
            ("|=<"        #XEA7D)
            ("|--<"       #XEA7E)
            ("|==<"       #XEA7F)
            ("~="         #XEA8A)
            ("~>"         #XEA8B)
            ("~~>"        #XEA8C)
            ("~>>"        #XEA8D)
            ("[["         #XEA8F)
            ("[|"         #XEA90)
            ("_|_"        #XEA97)
            ("]]"         #XEAA0)
            ("≡≡"         #XEAB3)
            ("≡≡≡"        #XEAB4)
            ("≡:≡"        #XEAB5)
            ("≡/"         #XEAB6)
            ("≡/≡"        #XEAB7)
            )))

(setq sorted-ligatures (cl-sort (mapcar 'car pp-prettify-symbols-alist) 'string-lessp))
(setq partitioned-ligatures (-partition-by (lambda (x) (aref x 0)) sorted-ligatures))

(append partitioned-ligatures '(">>" ">>>" "<<" "<<<" ))



(defun tie (compositions)
  "Tie the characters of each item in COMPOSITIONS together.
Each item in COMPOSITIONS must start with the same first character.
Each composition must be supported by the font."  
  (let ((char (string-to-char (substring (car compositions) 0 1))))
    (set-char-table-range composition-function-table char
                        `([,(regexp-opt compositions) 0 font-shape-gstring]))))

(-each partitioned-ligatures (lambda (x) (tie x)))

;; Disable the splash screen (to enable it agin, replace the t with 0)
;; (setq inhibit-splash-screen 0)

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

;; (scroll-bar-mode 0)
;; (fringe-mode 0)

;; (set-face-background 'vertical-border nano-color-background)
;; (set-face-foreground 'vertical-border (face-background 'vertical-border))

(beacon-mode 1)

(set-face-attribute 'magit-header-line nil
                    :overline nil
                    :underline nil
                      :foreground "black" :background "dark orange"
                      :box nil
                      :box '( :line-width 4 :color "dark orange")
                      )


(setq-default mode-line-format nil)
(setq-default header-line-format (list "%e"  mode-line-modified " " "%l" " " mode-line-buffer-identification ))

(set-cursor-color "white")
;; ("%e" mode-line-front-space mode-line-mule-info mode-line-client mode-line-modified mode-line-remote mode-line-frame-identification mode-line-buffer-identification "   " mode-line-position
;;  (vc-mode vc-mode)
;;  "  " mode-line-modes mode-line-misc-info mode-line-end-spaces)

(provide 'init-appearance)

(setq split-height-threshold 30)
(setq split-width-threshold nil)
