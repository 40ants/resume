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
  :defsystem-depends-on (:deploy)
  :build-operation "deploy-op"
  :build-pathname "resume"
  :entry-point "resume/main::main"

  :version (:read-file-line "ChangeLog.rst"
            :at search-version-in-changelog)
  :homepage "https://github.com/40ants/resume"
  :depends-on ("resume/main"))
