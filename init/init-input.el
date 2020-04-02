(defun tp-set-input-method-to-japanese ()
	"Set the current input method to `japanese`."
	(interactive)
	(set-input-method "japanese"))

(defun tp-set-input-method-to-japanese-katakana ()
	"Set the current input method to `japanese-katana`."
	(interactive)
	(set-input-method "japanese-katakana"))

(defun tp-set-input-method-to-ucs ()
	"Set the current input method to `ucs`."
	(interactive)
	(set-input-method "ucs"))

(defun tp-set-input-method-to-chinese ()
	"Set the current input method to `chinese-py`."
	(interactive)
	(set-input-method "c"))

(provide 'init-input)
