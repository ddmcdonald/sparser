;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011,2016 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "questions"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2016

;; Broken out from /grammar/model/sl/checkpoint/rules 6/17/09
;; Elaborated through 7/23/09. 9/28/11 removed spatial-orientation
;; and cleaned up. Completely redesigned 8/16.

(in-package :sparser)

(define-category question-core
  :specializes linguistic ;;/// tentative - whole area needs thought
  :instantiates nil 
  :documentation "Common base for questions of all sorts.
 The 'statement' variable holds the proposition or event that
 is being questioned. Think of it as the question restated in
 declarative form.
   Specializations elaborate this according to the kind of question
 being asked. The basic split is between polar questions and the
 diverse kinds of WH questions."
  :binds ((statement top)))

#| In biology/verbs
(define-category question :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "question" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))
|#

;;;--------------------------
;;; polar questions (yes/no)
;;;--------------------------

(define-category polar-question
  :specializes question-core
  :instantiates :self 
  :index (:temorary :key statement))
  :documentation "This is a labeling category in that it does
 not add any refinements or extensions to question-core. It just
 labels the statement as a question: 'is it the case that <statement>'."

(defun make-polar-question (statement)
  "Abstracted constructor so it will done the same way every time."
  (find-or-make-individual
   'polar-question :statement statement))
                           

(defun make-this-a-question-if-appropriate (sentence)
  "Called from post-analysis-operations after all parsing and
   contextual interpretation is finished."
  (declare (special category::question))
  (when (preposed-aux?)
    ;; span-covered-by-one-edge? -- won't work until we do
    ;; something with the deliberately unparse-able initial
    ;; aux (at least not syntactically).
    (let* ((start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (edge (span-covered-by-one-edge? 
                  (chart-position-after start-pos) ;; hack
                  end-pos))
           (edges (all-tts)))
      (cond
        (edge ;; single span after the aux
         (let ((q (make-polar-question (edge-referent edge))))
            (let ((spanning-edge
                   (make-edge-over-long-span
                    start-pos end-pos
                    (edge-category edge)
                    :rule 'make-this-a-question-if-appropriate
                    :form category::question
                    :referent q)))
              spanning-edge)))
        
        ((and (= 3 (length edges))
              (itypep (edge-referent (car edges)) 'be))                  
         (cond ((member (cat-name (edge-form (third edges)))
                        '(adjp adjective))
                (make-polar-adjective-question start-pos end-pos edges))
               ((member (cat-name (edge-form (third edges)))
                        '(pp))
                (make-polar-pp-question edges))))

        ;; the next option is to assume that the subject is the consistuent
        ;; just after the aux, to 'move' it there somehow, and try to
        ;; reparse the sentence as though it were declarative
        (t
         #+ignore (format t "~&Could not resolve to a question~%"))))))


(defun make-polar-adjective-question (start-pos end-pos edges)
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the ball
         (adj (edge-referent (third edges))) ;; red
         (copular-adj (make-copular-adjective be adj (car edges)))
         (copular-statement (when copular-adj
                              (assimilate-subject np copular-adj nil))))
    (when copular-statement
      (let ((q (make-polar-question copular-statement)))
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of copular-statement)
         :rule 'make-polar-adjective-question
         :form category::question
         :referent q)))))
        
    
    

;;;--------------
;;; WH questions
;;;--------------

(defun delimit-and-label-initial-wh-term (pos-before)
  "WH questions virtually always also include inverting subject
   and object, and the auxiliary will occur right after the
   possibly lengthy WH phrase has finished. E.g. 'How many
   people will be going to the party?'. So starting with the WH
   word, scan forward until you reach an aux. How to best
   divide up the region between the two largly depends on the
   identify of the WH and what its asking for."
  pos-before)
  


;;--- swallowing the inverted auxiliary into WH/be

(def-cfr WH/be (wh-pronoun be) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (wh-pronoun apostrophe-s) ;; gets all the WH pronouns
  :form question-marker
  :referent (:daughter left-edge))

(def-cfr WH/be (wh-pronoun do) ;; "where did you come from"
  :form question-marker
  :referent (:daughter left-edge))

;(def-cfr WH/be (WH/be pronoun/second)
;  :form question-marker ;; unless we want to strand the "you" ??
;  :referent (:daughter left-edge
;	          :bind (participant . right-edge)))

;; "will"
; CATEGORY           #<mixin WILL>
; FORM               #<ref-category MODAL>
; REFERENT           #<mixin FUTURE>


;;--- Explicit cases motivated by the checkpoint domain
;;  This almost certainly has a clean generalization that can be cast
;; as a form rule, but I'm not certain yet what that would be. Need more
;; cases
#|
(def-cfr event (WH/be location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
                    content right-edge)))

(def-cfr event (WH/be individual)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-form-rule (WH/be verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; I think these next two need to be scrapped (cfg 13 Jul 09)

(def-cfr event (WH/be "from")
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

(def-cfr event (WH/be with-np)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;; This is a rather important one right here...

(def-cfr event (WH/be event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))
|#
#|   Ignoring now (8/4/16) because it will likely succeed
     and distort things before they're done.
;; Handles commonly used (but not necessarily grammatical)
;; examples like "where you going" etc.

(def-form-rule (wh-pronoun verb+ing)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            content right-edge)))

;(def-cfr WH/be (wh-pronoun pronoun/second)
;  :form question-marker
;  :referent (:daughter left-edge
;	     :bind (participant . right-edge)))
|#


#|   Harvest for patterns
;; For "why are you out today" -- really smacks into the
;; sticky psi issue though...

(def-cfr WH/be/you (WH/be pronoun/second)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		            participant right-edge)))

;; (def-cfr event (WH/be/you spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (WH/be/you deictic-location)
  :form s
  :referent (:head left-edge
	         :bind (location . right-edge)))

(def-cfr event (WH/be/you prep-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

;; (def-cfr event (WH/be spatial-orientation) ;; flushed spatial-orientation 
;;   :form s
;;   :referent (:instantiate-individual question
;;              :with (type left-edge
;; 		    content right-edge)))

(def-cfr event (WH/be deictic-location)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
		    content right-edge)))
|#

#|   These don't belong here

;; odds and ends...

;; (def-cfr event (event spatial-orientation) ;; flushed spatial-orientation
;;   :form s
;;   :referent (:head left-edge
;; 	     :bind (location . right-edge)))

(def-cfr event (event deictic-location)
  :form s
  :referent (:head left-edge
	     :bind (location . right-edge)))

(def-cfr event (wh-pronoun event)
  :form s
  :referent (:instantiate-individual question
             :with (type left-edge
                         content right-edge)))
|#
