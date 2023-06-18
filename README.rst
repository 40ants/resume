Resume Builder
--------------

This is a program which allows you to use special language, to
describe your resume parts and to compile it into nice HTML page.

Here how resume's source can look like:

.. code:: lisp

   (defresume "Alexander Artemenko"
     (:subtitle "Senior Software Developer")
     
     (:about "A senior developer looking for a crew of inspired and skillful engineers to build great products.")
     
     (:side-by-side
      (:qualities
       "Self-motivated"
       "Product-oriented"
       "Eager for new knowledge")
      (:skills
       ("C++" :years 5)
       ("Python" :years 11)
       ("Common Lisp" :years 5)))
     
     (:about
      "Please contact me:")
     
     (:centered
      (:contacts
       (:email "job@svetlyak.ru")
       (:github "svetlyak40wt"))))

Installation
------------

On OSX you can install from the Homebrew::

  brew tap 40ants/soft

or::

  brew tap 40ants/resume https://github.com/40ants/resume

next::

  brew install resume

Also, you can build it using Qlot and Roswell::

  qlot exec ros run --eval '(ql:quickload :resume)' --eval '(asdf:make :resume)'
  
  bin/resume --help

Or plain SBCL::

  sbcl --eval '(ql:quickload :resume)' --eval '(asdf:make :resume)'

And of cause you can load and use it in the REPL:

.. code:: common-lisp

   (ql:quickload :resume)
   (resume/main:render #P"example.resume")

How to update Homebrew formula
-----------------------------------------------------

Update version in the changelog, add version tag like v0.1.8, push changes to GitHub: ``git push && git push --tags``.

.. code:: bash

   qlot exec .qlot/bin/cl-brewer resume

Then copy brewer.rb formula to https://github.com/40ants/homebrew-soft repository.
   
Roadmap
-------

* Support themes.
* Support automatic PDF rendering, probably by using the Pandoc.

Credits
-------

* Be the first in this list!
