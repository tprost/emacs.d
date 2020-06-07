(re-search-forward "exact")

(defun org-find-exact-headline-in-subtree (headline)
  ;; (org-narrow-to-subtree)
  (re-search-forward headline) ;; TODO regex?
  (deactivate-mark)
  )


(defun org-goto-exact-headline-in-subtree (headline)
  ;; (org-narrow-to-subtree)
  (re-search-forward headline) ;; TODO regex
(deactivate-mark)
  )

(defun tprost-string-trim (str)
  (string-trim str))
  ;;(string-trim (string-trim str) " " " "))

(defun tprost-ja-dictionaryapi-retrieve-and-parse (word)
  (with-temp-buffer
  (url-insert-file-contents
   (concat "https://api.dictionaryapi.dev/api/v2/entries/ja/" word))
  (let ((json-false :false))
    (json-read-array))))

(defun tprost-process-meaning-definition (definition)
  (when definition
    (insert "+ ")
    (insert (tprost-string-trim (alist-get 'definition definition)))
    (when (alist-get 'example definition)
      (insert (tprost-string-trim (alist-get 'example definition))))
    (newline)))

(defun tprost-process-meaning (meaning)
  (mapcar 'tprost-process-meaning-definition (alist-get 'definitions meaning)))

(defun tprost-goto-definitions ()
  (interactive)
  (if (org-find-exact-headline-in-subtree "definitions")
      (goto-char (org-find-exact-headline-in-subtree "definitions"))
    ))

(defun tprost-process-entry (word entry)
  (org-insert-subheading "blah")
  (insert (concat word " " "·" " " (alist-get 'word entry)))
  (newline)
  (mapcar 'tprost-process-meaning (alist-get 'meanings entry)))


(defun tprost-jump-to-definition-tree ()
  (interactive)

  
  (if (org-find-exact-headline-in-subtree "definitions")
      (goto-char (org-find-exact-headline-in-subtree "definitions"))
      (org-insert-subheading "definitions"))
    ;; (org-goto-exact-headline-in-subtree "definitions"))
    ;; (org-insert-heading-respect-content "definitions"))
  )

(defun tprost-lookup-and-insert-definition-tree (x y)
  "Lookup the definition of the word in current region and create an org tree for the definition."
  (interactive  "r")
  (let* ((word (replace-regexp-in-string (rx (or "[" "]")) "" (buffer-substring (mark) (point))))
         (entry (tprost-ja-dictionaryapi-retrieve-and-parse word)))
    (tprost-jump-to-definition-tree)
    (mapcar (lambda (entry) (tprost-process-entry word entry)) entry)))

