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

Right now to use program, you need to load it into the REPL:

.. code:: common-lisp

   (ql:quickload :resume)
   (resume/main:render #P"example.resume")

Roadmap
-------

* Add support for building binaries with ``https://shinmera.github.io/deploy/``.
* Add a recipe for Homebrew.
* Support themes.
* Support automatic PDF rendering, probably by using the Pandoc.

Credits
-------

* Be the first in this list!
