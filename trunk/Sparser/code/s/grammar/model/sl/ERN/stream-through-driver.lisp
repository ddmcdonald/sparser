;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "stream-through driver"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  January 1996

;; initiated 1/13/96. Elaborated through 1/16

(in-package :sparser)

;;;------------
;;; parameters
;;;------------

(defparameter *stream-to-use-for-streaming-through* *standard-output*)


(defparameter *categories-to-stream-through*
  `(,(category-named 'company)
    
    ,(category-named 'financial-data)
    
    ,(category-named 'ordinal-fraction)
    ,(category-named 'part-of-a-fiscal-year)
    ,(category-named 'fiscal-year)
    
    ,(category-named 'money)
    ,(category-named 'amount-per-share)

    ,(category-named 'announce-a-financial-datum-verb)
    ,(category-named 'verb-embodying-a-fin-dat)
    ,(category-named 'financial-datum-value-verb)
        ;; this pattern also includes "be", but how do we include it
        ;; without grossly overgenerating?

    ,(category-named 'hack-comparative-marker)

    ))


;(setup-ERN-stream-through)
;(turn-off-ERN-stream-through)

#| Tests
(f "KF clean #1;Bristol Myers")
(f "KF clean #1;Cabletron Systems")
(f "KF clean #1;Devtek")
(f "KF clean #1;Echlin")
(f "KF set#2;Brauns Fashions")
|#


;;;--------
;;; setups
;;;--------

(defun setup-ERN-stream-through ( &optional
                                  (categories *categories-to-stream-through*)
                                  (stream *standard-output*) )

  (setq *stream-to-use-for-streaming-through* stream)

  (dolist (c categories)
    (define-completion-action c :stream-through 'stream-through))
  categories )


(defun turn-off-ERN-stream-through ( &optional (categories *categories-to-stream-through*) )
  (dolist (c categories)
    (delete-completion-action c :stream-through)))



;;;--------------------------------------
;;; internal store for the object stream
;;;--------------------------------------

(defparameter *objects-streamed-out* nil)
(defparameter *edges-sent-to-be-streamed-out* nil)

(define-per-run-init-form '(setq *objects-streamed-out* nil
                                 *edges-sent-to-be-streamed-out* nil))




;;;-----------------------------
;;; reporting cleaned up stream
;;;-----------------------------

(define-after-analysis-action '(print-stream-of-objects))

(defun print-stream-of-objects ()
  (when *objects-streamed-out*
    (setq *objects-streamed-out* (nreverse *objects-streamed-out*))
    (print-list-of-streamed-objects :objects *objects-streamed-out*)))


(defun print-list-of-streamed-objects (&key (objects *objects-streamed-out*)
                                            (stream *standard-output*))
  (let ( obj token-index )
    (dolist (cons objects)
      (setq obj (car cons)
            token-index (cdr cons))
      (format stream
              "~&p~A~8,2T~A~20,5T~A~%"
              token-index
              (string-for obj)
              (itype-of obj)))))



;;;----------------
;;; action routine
;;;----------------

(defun stream-through (edge)
  (push edge *edges-sent-to-be-streamed-out*)

  (let ((obj (edge-referent edge)))

    (when (individual-p obj)
      ;; Nothing else is relevant. Given the initial set of categories
      ;; that are set to trigger this routine these are the only referents
      ;; we'll get, but this keeps it safe.

      ;; Filter-out cases that are refinements of their labeled categories
      ;; and so are redundant with objects that have already gone out
      ;; because they just combine them with other information.
      (let ((refined-category?
             (case (cat-symbol (edge-category edge))
               (category::money
                (case (cat-symbol (itype-of obj))
                  (category::augmented-money t)
                  (category::money nil)
                  (otherwise (format t "~&------- new case of money: ~A~%"
                                     obj))))
               (category::financial-data
                (case (cat-symbol (itype-of obj))
                  (category::financial-data nil)
                  (category::qualified-financial-data nil) ;; handled by subsumption
                  (category::financial-data-with-value t)
                  (category::time-anchored-financial-datum t)
                  (category::company-anchored-financial-datum t)
                  (category::collection t)
                  (otherwise (format t "~&------- new case of fin-dat: ~A~%"
                                     obj))))
               (otherwise nil))))


        ;; check for later edges subsuming earlier ones and prune
        ;; the list of objects accordingly.
        (case (cat-symbol (edge-category edge))

         (category::amount-per-share
          (so/pop-embedded-amount edge))

         (category::financial-data
          (so/prefer-qualified-fin-dat obj edge))

         (category::part-of-a-fiscal-year
          (so/pop-embedded-ordinal-fraction edge))

         (category::company
          (when (member obj ;*background-companies*
                        (list (company-named "Knowledge Factory Partners, L.L.C.")
                              (company-named "Business Factory")))
            (return-from Stream-through))))



        (unless refined-category?

          (unless (so/check-for-self-subsumption obj edge)
            
            (push (cons obj
                        (pos-token-index (pos-edge-starts-at edge)))
                  *objects-streamed-out*)
            
            (format *stream-to-use-for-streaming-through*
                    "~&~8,2T>>>  ~A    e~A~%"
                    obj (edge-position-in-resource-array edge))))))))


;;;-------------
;;; subroutines
;;;-------------

(defun so/Pop-embedded-amount (shr/edge)
  ;; Amt/shr's are composed over amount-of-money and subsume them.
  (let ((prior-edge (second *edges-sent-to-be-streamed-out*)))
    (when (edge-subsumes-edge? shr/edge prior-edge)
      (let ((removed-obj (pop *objects-streamed-out*)))
        (format t "~&~8,2T>>> embedded-amount:  removing ~A,e~A~%"
                removed-obj (edge-position-in-resource-array prior-edge))))))


(defun so/Prefer-qualified-fin-dat (obj edge)
  (when (itype obj (category-named 'qualified-financial-data))
    ;; Then it was presumably composed from a simple fin-dat that
    ;; was just pushed on.
    (let ((prior-edge (second *edges-sent-to-be-streamed-out*)))
      (when (edge-subsumes-edge? edge prior-edge)
        ;; this gets the head of the phrase
        (let ((removed-obj (pop *objects-streamed-out*)))
          (format t "~&~8,2T>>> pref-qual'fd: removing ~A,e~A~%"
                  removed-obj (edge-position-in-resource-array prior-edge)))
        ;; this gets the qualifier
        (let ((one-before-that (third *edges-sent-to-be-streamed-out*)))
          (when (edge-subsumes-edge? edge one-before-that)
            (let ((removed-obj (pop *objects-streamed-out*)))
              (format t "~&~8,2T>>> pref-qual'fd: removing ~A,e~A~%"
                      removed-obj (edge-position-in-resource-array
                                   one-before-that)))))))))


(defun so/Pop-embedded-ordinal-fraction (part-of-fiscal-year-edge)
  ;; ordinal-fractions are contextually reinterpreted as parts of 
  ;; fiscal years, which makes them redundant
  (let ((prior-edge (second *edges-sent-to-be-streamed-out*)))
    (when (itypep (edge-referent prior-edge)
                  (category-named 'ordinal-fraction))
      (when (edge-subsumes-edge? part-of-fiscal-year-edge prior-edge)
        (let ((removed-obj (pop *objects-streamed-out*)))
          (format t "~&~8,2T>>> Emb'd ord-fr: removing ~A, e~A~%"
                  removed-obj (edge-position-in-resource-array prior-edge)))))))


(defun so/Check-for-self-subsumption (obj latest-edge)
  (when (eq obj (caar *objects-streamed-out*))
    (let ((prior-edge (second *edges-sent-to-be-streamed-out*)))
      (when (edge-subsumes-edge? latest-edge prior-edge)
        (format t "~&~8,2T>>> Self-sub'n: e~A is another ~A~
                   ~&~8,2T                that spans the one with e~A~
                   ~&~8,2T                ignoring it~%"
                (edge-position-in-resource-array latest-edge)
                (itype-of obj)
                (edge-position-in-resource-array prior-edge))
        t ))))

