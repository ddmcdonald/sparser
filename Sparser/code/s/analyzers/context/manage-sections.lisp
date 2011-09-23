;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id: manage-sections.lisp 356 2010-05-13 19:54:30Z dmcdonal $
;;; 
;;;     File:  "manage sections"
;;;   Module:  "analyzers;context:"
;;;  Version:  March 2010

;; initiated 8/17/94 v2.3.  8/29 extended close../initiate.. to appreciate
;; that they're not all at the same level; fixed count problem.  Stubbed problem
;; with the ongoing section being nil'ed after it's initialized and before
;; it gets here 9/1.  Tweeking ...9/14   9/22 got the one case (pop) that
;; didn't return the section object being manipulated.
;; 11/30 Added indexing into the discourse history and binding a token-start index
;; 9/18/95 futzing to hack delimited but not paired paragraphs
;; 3/16/10 put a guard on pop-ongoing-section for when there isn't an
;;  ongoing section.

(in-package :sparser)

;;;---------------------------------------------
;;; Driver -- unpaired markup section start/end
;;;---------------------------------------------

(defun close-pending/initiate-new-section (edge name-of-parent-type/s)
  (let ((sm (edge-referent edge))
        (ongoing *ongoing-section-object*)
        parent-type )

    (tr :closing-pending/initiating-new sm name-of-parent-type/s)

    (unless ongoing
      (setq ongoing *root-section-object*))
    #|(if (eq name-of-parent-type/s :root)
        (setq ongoing *root-section-object*)
        (break "New case of initialization bug. Parent-type is not root"))|#

    (unless (or (stringp name-of-parent-type/s)
                (eq name-of-parent-type/s :root)
                (and (listp name-of-parent-type/s)
                     (every #'stringp name-of-parent-type/s)))
      (break "Ill-formed markup data:~
              ~%The argument to Close-pending/initiate-new-section~
              ~%must be a string or list of strings, but a ~A was passed in:~
              ~%~A~%~%" (type-of name-of-parent-type/s) name-of-parent-type/s))

    (setq parent-type
          (or (when (stringp name-of-parent-type/s)
                (section-marker-named name-of-parent-type/s))
              (when (eq name-of-parent-type/s :root)
                *root-section-object*)
              (mapcar #'section-marker-named
                      name-of-parent-type/s)))
    (unless parent-type
      (break "There is no section named ~A" name-of-parent-type/s))

    (unless sm
      (break "Threading bug: there should have been a section-~
              marker in the~% referent field of ~A" edge))

    (cond ((eq sm (value-of 'type ongoing))
           ;(format t "~&~%same as ongoing~%~%")
           (setup-sibling-to-ongoing-section sm))

          ((eq ongoing *root-section-object*)
           ;(format t "~&~%root is ongoing~%~%")
           (instantiate-section edge))

          ((eq (value-of 'type ongoing) parent-type)
           ;(format t "~&~%parent is ongoing~%~%")
           (instantiate-section edge))

          ((and (consp parent-type)
                (member (value-of 'type ongoing) parent-type
                        :test #'eq))
           ;(format t "~&~%one of the parents is ongoing~%~%")
           (instantiate-section edge))

          (t ;; we're a higher section start-marker that has to now
             ;; pop off the interveening lower pending section objects
             ;; until we get back up to the level of our peers
           ;(break "other")
           (pop-back-to-siblings-or-parent sm parent-type)
           (instantiate-section edge)))))



#|  (if (eq sm (value-of 'type ongoing))
      (setup-sibling-to-ongoing-section sm)
      (else
        (unless (or (eq ongoing *root-section-object*)
                    (eq (value-of 'type ongoing)
                        parent-type))
          (pop-ongoing-section))
        (instantiate-section edge)))  |#





;;;------------------
;;; sibling sections
;;;------------------

(defun setup-sibling-to-ongoing-section (sm)
  (let* ((ongoing *ongoing-section-object*)
         (parent (value-of 'parent ongoing)))

    (unless (value-of 'daughters parent)
      ;; this would be a mistake made on the first call to start one
      ;; of these sections
      (break "Threading bug: parent to ongoing section object ~
              has no daughters~%  ~A" ongoing))

    (let ((so (define-individual 'section-object
                :type sm
                :parent parent
                :prior-sibling ongoing
                :count (1+ (value-of 'count ongoing)))))

      (tr :section-is-sibling so ongoing)

      ;; a sibling to the ongoing section is another daughter
      ;; of its parent
      (add-item-to-list-value so 'daughters parent)

      ;; ///setup the sibling links

      (setq *ongoing-section-object* so)
      so )))


;; /// this won't be called until a style like DNJS is run
(defun flesh-out-paragraph/sibling (pso ongoing)
  (let ((parent (value-of 'parent ongoing))
        (most-recent-sibling
         (first (value-of 'daughters ongoing))))

    (bind-variable 'type *paragraph-start* pso)
    (bind-variable 'parent parent pso)

    (if most-recent-sibling
      (then
        (bind-variable 'prior-sibling most-recent-sibling pso)
        (bind-variable 'count (1+ (value-of 'count most-recent-sibling)) pso))
      (else
        (when (style-includes-feature :sections-cover-whole-document)
          ;; There has to be a prior sibling in some documents
          ;; so there's probably been some kind of threading error
          ;; if this is that kind of document
          (when *break-on-unexpected-cases*
            (break "Threading bug: ongoing section object has no daughters~
                    ~%  ~A" ongoing)))
        (bind-variable 'count 1 pso)))
    
    (tr :section-is-sibling pso most-recent-sibling)

    ;; a sibling to the ongoing section is another daughter
    ;; of its parent
    (add-item-to-list-value pso 'daughters parent)

    ;; ///setup the sibling links
    pso ))

  

;;;--------------------------------------
;;; Driver --  paired markup section end
;;;--------------------------------------

(defun pop-ongoing-section ()
  (when *ongoing-section-object*
    ;; When we're not doing a full section treatment, e.g. just
    ;; paragraphs, then this won't have a value
    (let* ((so *ongoing-section-object*)
	   (parent (value-of 'parent so)))
      (unless (and parent
		   (or (eq parent :root)
		       (itypep parent 'section-object)))
	(break "Threading bug: No parent or wrong type of parent ~
                object~%when popping section object:~%  ~A" so))

      (when (eq parent :root)
	(setq parent *root-section-object*))

      (tr :finished-section-object so parent)
      (setq *ongoing-section-object* parent)
      so )))



(defun pop-back-to-siblings-or-parent (sm parent/s)
  ;; the ongoing section is presumed to be lower in the table
  ;; of contents hierarchy than the one that's just been signaled
  ;; so we need to walk up the parent link of the ongoing so
  ;; until we reach the right level

  (let* ((next-section-up (pop-ongoing-section))
         (type (value-of 'type next-section-up)))

    (when (eq next-section-up *root-section-object*)
      (break "Check call threading -- popped all the way back~
              ~%to the root.~%")
      (return-from pop-back-to-siblings-or-parent))

    ;(format t "~&~%Sibling trace: goal: ~A~
    ;           ~%   reached ~A" sm next-section-up)

    (cond ((eq sm type)
           ;(format t "~%     done.~%~%")
           ;; This routine is called from Close-pending/initiate-new-section
           ;; and just after this operation there is going to be a call to
           ;; Instantiate-section. Since that routine always thinks we've
           ;; popped to just -above- the section we're instantiating, we
           ;; have to indeed get that high.
           (pop-ongoing-section))

          ((etypecase parent/s
             (section-marker
              (eq type parent/s))
             (cons
              (member type parent/s :test #'eq))
             (individual
              ;; presumably a section-object
              (eq parent/s *root-section-object*)))

           ;; don't pop, this is where we need to be
           ;(format t "~%     reached parent/s")
           )

          (t
           ;(format t "~%     continuing")
           (pop-back-to-siblings-or-parent sm parent/s)))))



;;;----------------------------------------
;;; Driver --  paired markup section start 
;;;----------------------------------------

(defun instantiate-section (edge)
  ;; called as part of the 'initiation' actions of some section marker
  (let ((sm (edge-referent edge)))
    (unless sm
      (break "Threading bug: there should have been a section-~
              marker in the~% referent field of ~A" edge))
    (instantiate-section/sm sm edge)))


(defun instantiate-section/sm (sm edge)
  ;; alternative entry point if there no edge
  (tr :instantiating-section-object sm)
  (let ((ongoing *ongoing-section-object*)
        (start-index (pos-token-index
                      (pos-edge-starts-at edge))))

    (let ((so
           (if (null ongoing)
             (setup-first-section-of-document sm start-index)
             (setup-daughter-to-ongoing-section sm ongoing start-index))))
      (index-section-object-to-discourse-history so edge)
      so )))


(defun index-section-object-to-discourse-history (so edge)
  (update-discourse-history category::section-object
                            so
                            (pos-edge-starts-at edge)
                            (pos-edge-ends-at edge)))



;;;-------------------------------
;;; first section in the document
;;;-------------------------------

(defun setup-first-section-of-document (sm start-index)
  (cleanup-root-section-object)
  (let ((so (define-individual 'section-object
              :type  sm
              :parent  *root-section-object*
              :prior-sibling  *root-section-object*
              :count 1 )))
    (tr :first-section-object-in-document so)

    (bind-variable 'daughters (kcons so nil)
                    *root-section-object*)
    (bind-variable 'token-index start-index so)
    (setq *ongoing-section-object* so)
    so ))

(defun flesh-out-paragraph/first-section (pso)  ;; "paragraph section object"
  (cleanup-root-section-object)
  (bind-variable 'type *paragraph-start* pso)
  (bind-variable 'parent *root-section-object* pso)
  (bind-variable 'prior-sibling *root-section-object* pso)
  (bind-variable 'count 1 pso)
  (tr :first-section-object-in-document pso)
  (bind-variable 'daughters (kcons pso nil)
                 *root-section-object*)
  pso )



;;;-------------------
;;; daughter sections
;;;-------------------

(defun setup-daughter-to-ongoing-section (sm ongoing start-index)
  (let ((most-recent-daughter (first (value-of 'daughters ongoing))))
    (unless most-recent-daughter
      ;; this is the first daughter, so we have to set up a pro-forma
      ;; 0th daughter for the new so to take as its prior-sibling
      (let ((zeroth (define-individual 'section-object
                      :type :zeroth-daughter
                      :parent ongoing
                      :prior-sibling ongoing
                      :count 0 )))
        (bind-variable 'daughters (kcons zeroth nil) ongoing)
        (setq most-recent-daughter zeroth)))

    (let ((so (define-individual 'section-object
                :type sm
                :parent ongoing
                :prior-sibling most-recent-daughter)))

      (if (eq sm (value-of 'type most-recent-daughter))
        (bind-variable
         'count (1+ (value-of 'count most-recent-daughter)) so)
        (let ((prior-daughter/same-type
               (most-recent-daughter-of-type sm ongoing)))
          (if prior-daughter/same-type
            (bind-variable
             'count (1+ (value-of 'count prior-daughter/same-type)) so)
            (bind-variable 'count 1 so))))

      (bind-variable 'token-index start-index so)

      (tr :section-is-daughter so ongoing most-recent-daughter)

      ;; add this one to the daughters of the ongoing (the parent)
      (add-item-to-list-value so 'daughters ongoing)

      ;; make this the ongoing section
      (setq *ongoing-section-object* so)

      so )))

(defun flesh-out-paragraph/daughter (pso ongoing)
  (let ((most-recent-daughter (first (value-of 'daughters ongoing)))
        prior-paragraph )
    (unless most-recent-daughter
      ;; this is the first daughter, so we have to set up a pro-forma
      ;; 0th daughter for the new so to take as its prior-sibling
      (let ((zeroth (define-individual 'section-object
                      :type :zeroth-daughter
                      :parent ongoing
                      :prior-sibling ongoing
                      :count 0 )))
        (bind-variable 'daughters (kcons zeroth nil) ongoing)
        (setq most-recent-daughter zeroth)))

    (bind-variable 'type *paragraph-start* pso)
    (bind-variable 'parent ongoing pso)
    (bind-variable 'prior-sibling most-recent-daughter pso)

    (if (eq *paragraph-start*
            (value-of 'type most-recent-daughter))
      (bind-variable 'count (1+ (value-of 'count most-recent-daughter)) pso)
      (else
        (setq prior-paragraph
              (most-recent-daughter-of-type *paragraph-start* ongoing))
        (if prior-paragraph
          (bind-variable
           'count (1+ (value-of 'count prior-paragraph)) pso)
          (bind-variable 'count 1 pso))))
    
    (tr :section-is-daughter pso ongoing (or prior-paragraph
                                             most-recent-daughter))
    (add-item-to-list-value pso 'daughters ongoing)

    pso ))



;;;---------
;;; reclaim
;;;---------

(defun cleanup-root-section-object ()
  ;; stub in case we want to do something more clever than standard
  ;; reclaimation, and in any event we have to clean out the daughters
  ;; of the root.
  (let* ((root *root-section-object*)
         (daughters-binding (binds root 'daughters)))

    ;(unless daughters-binding
    ;  (break "There is no daughter binding on the root section object:~
    ;          ~%    ~A" root)
    ;  (return-from cleanup-root-section-object))

    (when daughters-binding
      (let ((daughter-list (binding-value daughters-binding)))
        (setf (binding-value daughters-binding) nil)
        daughter-list))))





;;;-------------
;;; subroutines
;;;-------------

(defun most-recent-daughter-of-type (sm parent)
  (let ((daughters (value-of 'daughters parent)))
    ;; they're 'pushed' on, so we go through them in list order
    (dolist (so daughters)
      (when (eq sm (value-of 'type so))
        (return-from most-recent-daughter-of-type so)))))




;;;--------
;;; traces
;;;--------

(defparameter *trace-section-objects* nil)

(defun trace-section-objects ()
  (setq  *trace-section-objects* t))

(defun unTrace-section-objects ()
  (setq  *trace-section-objects* nil))


(deftrace :instantiating-section-object (sm)
  (when *trace-section-objects*
    (trace-msg "Instantiating a ~A" sm)))

(deftrace :closing-pending/initiating-new (sm name-of-parent-type)
  (when *trace-section-objects*
    (trace-msg "Closing pending so ~A~
                ~%   initiating a ~A~
                ~%   underneath any ~A"
               *ongoing-section-object* sm name-of-parent-type)))

(deftrace :first-section-object-in-document (so)
  (when *trace-section-objects*
    (trace-msg "   it is the first: ~A" so)))

(deftrace :section-is-sibling (so prior-so)
  (when *trace-section-objects*
    (trace-msg "   it is a sibling to ~A~%      ~A" prior-so so)))

(deftrace :section-is-daughter (so parent sibling)
  (when *trace-section-objects*
    (trace-msg "   it is a daughter of ~A~
             ~%    with prior sibling ~A~
             ~%      ~A" parent sibling so)))

(deftrace :finished-section-object (so parent)
  (when *trace-section-objects*
    (trace-msg "Finished ~A~%  Reverting to its parent ~A"
               so parent)))

