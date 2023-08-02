;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2023 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "README"
;;;   Module:  /sparser/test/
;;;  Version:  July 2023

;; How to use the regression-testing system RT, and the tests already
;; in place for Sparser and Mumble.

(in-package :sparser)

We have a small set of regression tests for Sparser's engine and grammar
and need to make many more until we are in the habit of writing a test for
every feature we add or bug we fix.

In 2021 Alex Plotnick wrote a set of ASDF-driven regression tests.
He adopted the RT system for its simplicity. RT was created by
Richard (Dick) Waters in 1990 while he was at MIT. We have a copy
of his 1991 paper "Supporting the Regression Testing of Lisp Programs"
in our documentation directory. It describes the small set of operators
in RT and discusses its implementation. That code and all the  presently
implemented tests are in the directory ~/sparser/test/.


* Driving from ASDF

Like other lisp testing systems, RT tests are driven by specifications
in  defsystem forms. This is the defsystem for Sparser, in ~/sparser/sparser.asd.

(defsystem :sparser
  :depends-on (:cl-json :ddm-util :mumble :cl-ppcre)
  :components ((:file "Sparser/code/s/init/everything"))
  :perform (load-op :after (o c) (pushnew :sparser *features*))
  :in-order-to ((test-op (test-op :sparser/tests))))

The :in-order-to clause has the subclause for test-op. It points to
another defsystem form (in the same file).

(defsystem :sparser/tests
  :depends-on (:sparser)
  :components ((:file "test/rt")
               (:file "test/k-methods")
               (:file "test/subcategorization"))
  :perform (test-op (o c)
             (let ((*package* (find-package :sparser)))
               (uiop:symbol-call :rt :do-tests))))

Run (asdf:test-system :sparser) to invoke this.

That call loads the component files spelled out in the defsystem. These files
will define individual tests (deftest) along with any setup code. Finally the
perform clause calls rt:do-tests which executes each of those tests.

The are also RT tests for Mumble, also defined as ASDF test-op options
in ~/sparser/Mumble/mumble.asd

+ (asdf:test-system :mumble/tests)
 Defines setup functions, and tests Mumble's base level mechanics.
Creating different types of objects to make sure they are still functioning.
Also exercises the basic aspects of the grammar using only the basic machinery.

+ (asdf:test-system :mumble/biology-tests)
 Tests standard reference sentences for the biological domain.
Note that these tests presume you've loaded a version of Sparser
that includes the full set of biology code such as the sparser/biology.

+ (asdf:test-system :mumble/blocks-world-tests)
 Tests sentences and relationships for the blocks world. The default
sparser/fire happens to include the CwC-specific blocks world files. 


* Defining and running a test

In RT, tests are created with the form def-test.

(defmacro deftest (name form &rest values) ...)

The name can be a symbol or a list. Its value comes when you are
debugging individual tests using def-test, which looks up a test
with that name and executes it.

The form can be an arbitrary form that returns any number of values.
The values actually returned by passing the form to eval are compared
to the values given in the test. If they are equal the test passes,
otherwise the test failed. It it succeeded, def-test returns the name
of the test.

This is the result of running the Sparser test-system today (8/1/23).

--------------
sp> (asdf:test-system :sparser)
Doing 9 pending tests of 9 tests total.
 K-LOCATION-P K-MEMBER (SUBCAT SUBJECT OBJECT)
 (SUBCAT LOCAL-RESTRICTION) (SUBCAT INHERITANCE) (SUBCAT RE-INHERITANCE)[put ][B1 ]on [B2]
Test LOCATION-LIFT failed
Form: (p/sem "put B1 on B2")
Expected value: (put-something-somewhere
                 (location
                  (relative-location (ground (block (name "B2"))) (prep (on))))
                 (theme (block (name "B1"))) (present (category present)))
Actual value: (put-something-somewhere
               (location
                (on (word (wd "on")) (ground (block/object (name (wd "B2"))))))
               (theme (block/object (name (wd "B1"))))
               (present (category present))).
[the big red block] ADJECTIVE-ATTRIBUTION[The top block ][should be ][red]
 ADJ-FIX-FOR-COPULAR
1 out of 9 total tests failed: LOCATION-LIFT.
t
--------------

This is a common occurrence when it has been a while since you've run a
regression test. The test failed because situation has changed since it
was initially written and it has to be revised.

After doing that revision we can re-evaluate the test, and try it again.

warning: Redefining test LOCATION-LIFT
sp> (rt:do-test 'location-lift)
[put ][B1 ]on [B2]
location-lift


* Test design, packages

Except when the situation you want to test has a unique setup (such as the  
tests in test/mumble.lisp), the usual pattern is to package the setup in a
tailored function. For Mumble, this is the function mumble-says, for example
in tests/mumble.lisp

(deftest (say cat on mat)
  (let ((be (present-tense (be)))
        (on (on))
        (cat (always-definite (cat)))
        (mat (always-definite (mat))))
    (make-complement-node 's cat be)
    (make-complement-node 'o on be)
    (make-complement-node 'prep-object mat on)
    (mumble-says be))
  "the cat is on the mat")

Or from tests/mumble-blocks-world.lisp, where we are generating from Sparser's
analysis of the input text.

(deftest (say make row of two green blocks)
  (mumble-says "Make a row of two green blocks.")
  "make a row of two green blocks")


For testing the result of a parse, we have the sparser function p/sem.
This is a working test from tests/semantic-structure.

(rt:deftest adjective-attribution ;; fixed 4/19/23
    (p/sem "the big red block")
  (block/object
    (has-determiner (the (word (wd "the"))))
    (size (big (attribute (category size)) (name (wd "big"))))

Notice that for tests where the file is (in-package :sparser)
we have to explicitly says that deftest is in the rt package.







