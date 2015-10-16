;;; hz2py.el --- Convert Hanzi to Pinyin using quail.   -*- lexical-binding: t; -*-

;; Filename: hz2py.el
;; Description: Convert Hanzi to Pinyin using quail
;; Author: KAWABATA, Taichi <kawabata.taichi_at_gmail.com>
;; Created: 2014-03-10
;; Version: 1.140313
;; Keywords: i18n languages
;; Human-Keywords: Hanzi Pinyin
;; URL: https://github.com/kawabata/emacs-hz2py

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This library converts Hanzi character to Pinyin by using Emacs LEIM.

;;; Code:

(require 'quail)

(load-library "quail/py-punct")
(load-library "quail/pypunct-b5")

;;;###autoload
(defun hz2py-char (char)
  "Convert CHAR to a list of possible pinyins.  Return nil if not found."
  (let ((current-package quail-current-package)
        pys)
    (quail-select-package "chinese-tonepy-punct")
    (setq pys (quail-find-key char))
    (prog1
        (or pys
            (progn
              (quail-select-package "chinese-py-punct-b5")
              (quail-find-key char)))
      (setq quail-current-package current-package)
      (setq-default quail-current-package current-package))))

;;;###autoload
(defun hz2py-string (char)
  "Convert CHAR to pinyin string.  Return nil if not found.
If more than one is found, it will be described as `[PY1/PY2/...]'."
  (let* ((py (hz2py-char char))
         (py-len (length py)))
    (cond ((= py-len 0) nil)
          ((= py-len 1) (car py))
          (t (concat "[" (mapconcat 'identity py "/") "]")))))

;;;###autoload
(defun hz2py-region (from to &optional arg)
  "Convert hanzi in region FROM to TO to pinyin.
With prefix ARG, it will attach pinyin to hanzi."
  (interactive "r\nP")
  (save-excursion
    (save-restriction
      (narrow-to-region from to)
      (goto-char (point-min))
      (while (re-search-forward "\\cc" nil t)
        (let* ((char (string-to-char (match-string 0)))
               (py (hz2py-string char)))
          (when py
            (if (null arg) (delete-char -1))
            (insert py)))))))

(provide 'hz2py)

;;; hz2py.el ends here

;; Local Variables:
;; time-stamp-pattern: "10/Version:\\\\?[ \t]+1.%02y%02m%02d\\\\?\n"
;; End:
