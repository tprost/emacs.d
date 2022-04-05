;; (re-search-forward "exact")

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

(defun my-string-trim (str)
  (string-trim str))
  ;;(string-trim (string-trim str) " " " "))

(defun my-ja-dictionaryapi-retrieve-and-parse (word)
  (with-temp-buffer
  (url-insert-file-contents
   (concat "https://api.dictionaryapi.dev/api/v2/entries/ja/" word))
  (let ((json-false :false))
    (json-read-array))))

(defun my-process-meaning-definition (definition)
  (when definition
    (insert "+ ")
    (insert (my-string-trim (alist-get 'definition definition)))
    (when (alist-get 'example definition)
      (insert (my-string-trim (alist-get 'example definition))))
    (newline)))

(defun my-process-meaning (meaning)
  (mapcar 'my-process-meaning-definition (alist-get 'definitions meaning)))

(defun my-goto-definitions ()
  (interactive)
  (if (org-find-exact-headline-in-subtree "definitions")
      (goto-char (org-find-exact-headline-in-subtree "definitions"))
    ))

(defun my-process-entry (word entry)
  (org-insert-subheading "blah")
  (insert (concat word " " "·" " " (alist-get 'word entry)))
  (newline)
  (mapcar 'my-process-meaning (alist-get 'meanings entry)))


(defun my-jump-to-definition-tree ()
  (interactive)

  
  (if (org-find-exact-headline-in-subtree "definitions")
      (goto-char (org-find-exact-headline-in-subtree "definitions"))
      (org-insert-subheading "definitions"))
    ;; (org-goto-exact-headline-in-subtree "definitions"))
    ;; (org-insert-heading-respect-content "definitions"))
  )

(defun my-lookup-and-insert-definition-tree (x y)
  "Lookup the definition of the word in current region and create an org tree for the definition."
  (interactive  "r")
  (let* ((word (replace-regexp-in-string (rx (or "[" "]")) "" (buffer-substring (mark) (point))))
         (entry (my-ja-dictionaryapi-retrieve-and-parse word)))
    (my-jump-to-definition-tree)
    (mapcar (lambda (entry) (my-process-entry word entry)) entry)))

(global-set-key (kbd "C-x @ j") 'my-lookup-and-insert-definition-tree)

(provide 'my-dictionary-functions)
