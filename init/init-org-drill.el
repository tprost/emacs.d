(require 'org-drill)

(setq org-drill-spaced-repetition-algorithm 'sm2)

(defun org-drill-present-imagecloze (session)
  "Present a drill entry whose card type is 'imagecloze'"
  (org-drill-with-hidden-comments
   (org-drill-with-hidden-cloze-hints
    (org-drill-with-hidden-cloze-text
     (org-drill-hide-all-subheadings-except nil)
     (org-drill--show-latex-fragments)  ; overlay all LaTeX fragments with images
     (ignore-errors
       (org-display-inline-images t))
     (org-cycle-hide-drawers 'all)
     (prog1 (org-drill-presentation-prompt session)
       (org-drill-hide-subheadings-if 'org-drill-entry-p)))))
  )

(defun org-drill-show-answer-imagecloze (session reschedule-fn)
  "Show the answer for a drill item whose card type is 'imagecloze'.
RESCHEDULE-FN must be a function that calls `org-drill-reschedule' and
returns its return value."
    (org-drill-with-replaced-entry-text
     ""
     (org-cycle-hide-drawers 'all)
     (funcall reschedule-fn session)))


(map-put org-drill-card-type-alist "imagecloze"
     '(org-drill-present-imagecloze
     org-drill-show-answer-imagecloze))


(provide 'init-org-drill)
