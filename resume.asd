(defun search-version-in-changelog (lines)
  (let* ((line (nth 4 lines))
         (space-pos (position #\Space line)))
    (when space-pos
      (subseq line 0 space-pos))))


(defsystem "resume"
  :description "A datadriven resume builder for people who are looking for a new job."
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "BSD"
  :class :package-inferred-system
  :version (:read-file-line "ChangeLog.rst" :at search-version-in-changelog)
  :depends-on ("resume/main"))