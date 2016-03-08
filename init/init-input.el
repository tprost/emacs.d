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


(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z j") 'tp-set-input-method-to-japanese)
(global-set-key (kbd "C-z k") 'tp-set-input-method-to-japanese-katakana)
(global-set-key (kbd "C-z i") 'tp-set-input-method-to-ucs)
(global-set-key (kbd "C-z u") 'tp-set-input-method-to-ucs)
(global-set-key (kbd "C-z c") 'tp-set-input-method-to-chinese)
(global-set-key (kbd "C-z m") 'tp-set-input-method-to-chinese)

(provide 'init-input)
