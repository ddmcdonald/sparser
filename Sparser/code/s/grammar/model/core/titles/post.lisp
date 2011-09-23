;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "post"
;;;   Module:  "model forms;sl:whos news:posts:"
;;;  version:  1.1  February 1991    

;; begun in October
;; 1.1  (2/12 v1.8.1)  Extended the grammar

(in-package :CTI-source)


#|  This is a funny category because it's not instantiated so much as
used anaphorically: "the additional post of [title]" -- it's the
basis of an NPhead that is used to carry descriptive information that
titles can't, even though any meaning they might accrue in a specific
situation will come down to some title or another.  They don't refer
to titles apart from the title's (potential) assignment to a given
person/company however.

   The import of a "position" phrase is effectively to elaborate
the :status properties of the title-assignment.

   We make it a category because it has a common noun, and we can
thereby make more natural English phrases since we can follow the
regular patterns of syntactic composition.  We rework the information
(i.e. move the modifiers of the position onto the status fields of
the title-assignment) at the point when the information is readout
into the database.  |#

; "[title], a new post"
; "(was named to) the additional post (of [title])"
; "(was elected to) the additional position (of [title])
; "(was named to) the same position at [company]"
; "(was confirmed in) the posts"


;;;----------
;;; "object"
;;;----------

(define-category  position)  ;( (:defNP title)
                          ; :pluralizes
                          ; )
;  :name (("position" NPhead :plural "positions")
;         ("post"     NPhead :plural "posts"))
;  :slots  ((title   title)
;           (company company)
;           (status  //???///))
;  :index nil )


(define-category  position/plural)


;;;-----------------------------------------------------------
;;; hack to make the parser continue and look for complements
;;;-----------------------------------------------------------

(def-cfr position-head (position-head position-head)
  :referent (:daughter right-edge))


;;;-------------
;;; the NP head
;;;-------------

(def-cfr  position-head ("job")
  :form NPhead
  :referent  title)


(def-cfr  position-head ("post")
  :form NPhead
  :referent  title)

(def-cfr  position-head ("posts")
  :form NPhead
  :referent  plural-title)


(def-cfr  position-head ("position")
  :form NPhead
  :referent  title)

(def-cfr  position-head ("positions")
  :form NPhead
  :referent  plural-title)


(def-cfr  position-head ("title")
  :form NPhead
  :referent  title)

(def-cfr  position-head ("titles")
  :form NPhead
  :referent  plural-title)


;;;-----------
;;; modifiers
;;;-----------

(defun define-modifier-of-position-head (string)
  (let ((word (resolve/make string)))
    (define-cfr category::position-head `(,word ,category::position-head)
      :referent '(:daughter right-edge))))

(define-modifier-of-position-head "corporate")



;;;------------------------------------------
;;; modifiers that will modulate the meaning
;;;------------------------------------------

(define-category  additional-position)
(define-category  new-position)
(define-category  former-position)


#|  n.b. the modifiers are defined as self-referential-words |#

;;--- additional

(def-cfr position (additional position-head)
  :referent additional-position)


;;--- former

(def-cfr position ("former" position-head)
  :referent former-position)


;;--- new

(def-cfr position (new position-head)
  :referent new-position)

(def-cfr position (newly-created position-head)
  :referent new-position)


;;--- same

(def-cfr position (same position-head)
  :referent (:dereference-expression
             . (defNP edge)))


;;----- the 
;; (belmoral)
;; "[pers, acting [title]] was confirmed in the posts"
;;
(def-cfr  title  ("the" position-head)
  :form np
  :referent (:dereference-expression
             . (defNP edge)))

(def-cfr  title  ("that" position-head)
  :form np
  :referent (:dereference-expression
             . (defNP edge)))



;;;------------------------
;;; soaking up determiners
;;;------------------------

;;--- These shouldn't draw the DefNP dereferencing because that
;;    should be only by a distinguished labeling of the N-bar,
;;    Hence reading these just as [position]
;;
(def-cfr  position  ("a" position)
  :form np
  :referent (:daughter right-edge))

(def-cfr  position  ("the" position)
  :form np
  :referent (:daughter right-edge))



;;;----------------
;;; title adjuncts
;;;----------------

(def-cfr title (position title)
  ;; This pattern has not been seen in the text to date.
  ;; Instead it supplies a rule for the CA routine to use.
  :referent (:daughter right-edge))


;;--- These had been left for the "of" CA to do, but that work
;; wasn't finished by 3/11, and these rules might do it just
;; as well as long as they don't overgenerate into errors.

(def-cfr of-title ("of" title)
  :referent (:daughter right-edge))

(def-cfr title (title of-title)
  :referent (:daughter right-edge))

(def-cfr title (position of-title)
  :referent (:daughter right-edge))


;;;------------------
;;; company adjuncts
;;;------------------

(def-cfr title (position at-company)
  :referent (:composite title+company
                        left-edge right-edge))


;;;-----------------
;;; person adjuncts
;;;-----------------

(def-cfr position (person-possessive position)
  :referent (:composite  position+person
                         right-edge left-edge))


(def-cfr position (person-possessive position-head)
  :referent (:composite  position+person
                         right-edge left-edge))

