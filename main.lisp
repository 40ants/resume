(defpackage #:resume/main
  (:use #:cl)
  (:import-from #:lass)
  (:import-from #:spinneret
                #:with-html-string
                #:with-html)
  (:import-from #:spinneret/cl-markdown)
  (:import-from #:alexandria)
  (:import-from #:defmain
                #:defmain)
  (:import-from #:cl-info
                #:get-cl-info)
  (:export
   #:render))
(in-package resume/main)


(defgeneric render-contact-label (type)
  (:method ((type t))
    (string-capitalize (symbol-name type))))


(defun render-link (url-template value)
  (let ((url (format nil url-template value)))
    (with-html
      (:a :class "not-for-print"
          :href url
          value)
      (:a :class "for-print"
          :href url
          url))))


(defgeneric render-contact-value (type value)
  (:method ((type t) value)
    value)
  (:method ((type (eql :twitter)) value)
    (render-link "https://twitter.com/~A" value))
  (:method ((type (eql :skype)) value)
    (with-html
      (:a :href (format nil "skype:~A?chat" value)
          value)))
  (:method ((type (eql :github)) value)
    (render-link "https://github.com/~A" value))
  (:method ((type (eql :email)) value)
    (with-html
      (:a :href (format nil "mailto:~A" value)
          value)))
  (:method ((type (eql :linkedin)) value)
    (render-link "https://www.linkedin.com/in/~A/" value)))


(defgeneric render (type &rest args)
  (:method ((type t) &rest args)
    (with-html
      (:div :class "unhandled"
            (format nil "Unhandled ~A ~A" type args))))
  (:method ((type (eql :side-by-side)) &rest args)
    (with-html
      (:table :class "side-by-side"
              (:tr (loop for arg in args
                         do (:td (apply 'render arg)))))))
  (:method ((type (eql :subtitle)) &rest args)
    (with-html
      (:h2 :class "subtitle"
           (first args))))
  (:method ((type (eql :about)) &rest args)
    (with-html
      (:div :class "about"
            (loop for line in args
                  for rendered-line = (with-output-to-string (s)
                                        (cl-markdown:markdown line
                                                              :stream s))
                  do (:raw rendered-line)))))
  (:method ((type (eql :skills)) &rest args)
    (with-html
      (:h3 :class "list-header"
           "Skills")
      (:ul :class "skills"
           (loop for skill in args
                 for name = (first skill)
                 for exp-years = (third skill)
                 do (:li (format nil "~A (~A years)"
                                 name
                                 exp-years))))))
  (:method ((type (eql :contacts)) &rest args)
    (with-html
      (:table :class "contacts"
              (loop for contact in args
                    for contact-type = (first contact)
                    for contact-value = (second contact)
                    do (:tr (:td :class "label"
                                 (render-contact-label contact-type))
                            (:td :class "value"
                                 (render-contact-value contact-type
                                                       contact-value)))))))
  (:method ((type (eql :qualities)) &rest args)
    (with-html
      (:h3 :class "list-header"
           "Qualities")
      (:ul :class "qualities"
           (loop for arg in args
                 do (:li arg)))))
  
  (:method ((type (eql :centered)) &rest args)
    (with-html
      (:table :class "centered"
              (:tr (:td (loop for arg in args
                               do (apply 'render arg))))))))


(defun render-css ()
  (lass:compile-and-write
   '(body
     :padding-left 10em
     :padding-right 10em
     :font-size 1.5rem
     (.title
      :text-align center
      :font-size 3rem)
     (.subtitle
      :text-align center
      :font-size 2rem)
     (.list-header
      :margin-left 2.5rem
      :font-weight normal
      :text-transform uppercase
      :font-size 2rem)
     (.contacts
      :font-size 1.5rem
      (.label
       :text-align right
       :padding-right 1rem
       ;; :border-right 1px solid gray
       ))
     (.centered
      :width 30%
      :margin-left auto
      :margin-right auto)
     (.for-print
      :display none)
     (.not-for-print
      :display inline)
     (ul
      (li :font-size 2rem)))))


(defun render-printer-css ()
  (lass:compile-and-write
   '(:media "print"
     (body
      :padding-left 0em
      :padding-right 0em
      (.for-print
       :display inline)
      (.not-for-print
       :display none)))))


(defmacro defresume (name &body parts)
  `(with-html-string
     (:html
      (:head
       (:style (render-css))
       (:style (render-printer-css)))
      (:body
       (:h1 :class "title"
            ,name)
       (loop for part in ',parts
             do (apply 'render part))))))


(defun replace-type (path new-type)
  "Replaces extension of a file."
  (check-type path pathname)
  (merge-pathnames (make-pathname :type new-type) path))


(defmethod render ((filename pathname) &rest args)
  (declare (ignorable args))
  ;; Here we need to remember a package
  (let ((*package* (make-package :resume-template)))
    (import 'defresume)
    
    (unwind-protect
         (let* ((content (alexandria:with-input-from-file (s filename)
                           (read s)))
                (rendered (eval content)))
           (alexandria:write-string-into-file
            rendered
            (replace-type filename "html")
            :if-exists :supersede))
      (delete-package *package*))))


(defmain main ((version "Show version information and exit."
                        :flag t)
               &rest filenames)
  (when version
    (format t "App:  ~A~%"
            (asdf:component-version (asdf:find-system :resume))
            )
    (princ (get-cl-info))
    (uiop:quit))

  (loop for filename in filenames
        do (let ((real-filename (probe-file filename)))
             (cond
               (real-filename
                (format t "Rendering resume from ~A~%"
                        filename)
                (render real-filename))
               (t (format t "File ~A was not found."
                          filename)
                  (uiop:quit 1))))))
