(global-unset-key (kbd "M-SPC"))

(defun set-input-method-to-japanese ()
	"Set the current input method to `japanese`."
	(interactive)
	(set-input-method "japanese"))

(defun set-input-method-to-japanese-katakana ()
	"Set the current input method to `japanese-katana`."
	(interactive)
	(set-input-method "japanese-katakana"))

(defun set-input-method-to-ucs ()
	"Set the current input method to `ucs`."
	(interactive)
	(set-input-method "ucs"))

(global-set-key (kbd "M-SPC j") 'set-input-method-to-japanese)
(global-set-key (kbd "M-SPC k") 'set-input-method-to-japanese-katakana)
(global-set-key (kbd "M-SPC u") 'set-input-method-to-ucs)

(provide 'init-input)
