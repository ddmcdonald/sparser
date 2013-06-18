;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1999,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "reclaim"
;;;   Module:  "objects;model:individuals:"
;;;  version:  1.2 June 2013

;; initiated 7/21/92 v2.3. Fleshed out 8/8/94. 
;; 10/3 Added some useful collectors.  11/16 added Delete/individual
;; 0.1 (4/3/95) made Zero-category-index sensitive to hashtables
;;     (4/20) added Add-permanent-individual and cleaned up a little
;; 1.0 (5/13/95) Added notion of a permanent individual that appears on a separate
;;      list and isn't recycled.
;; 1.1 (7/7) put a patch in Additional-categories.. when the i-type-of returned nil.
;;     (9/30/99) Somewhen in the interim I null-ified declare-all-existing-individuals-
;;      permanent by doing a return-from before it had done anything. No record available
;;      of why. Put it all back today and nothing untoward happened when I ran it.
;;     (9/26/11) Fixed zero-category-index for the case of the category being
;;      a lattice-point.
;;     (2/7/13) Found case of a category assigned to lists having a hash-table. 
;;      Put in a catch in the iterator so reclamation can continue.
;; 1.2 (6/15/13) Fixed tricky bug in making objects permanent exposed by
;;      including instances from hashtables.

(in-package :sparser)


;;;-------------------------------
;;; marking permanent individuals
;;;-------------------------------

(defparameter *1st-permanent-individual/all-categories* nil
  "A pointer into the list of active individuals, i.e. it points
   to one of those individuals, that is used when reclaiming to
   indicate where to stop when cdr'ing down that list.")


;;--- Toplevel calls

(defun declare-all-existing-individuals-permanent ()
  ;; called from toplevel at strategic moments such as at the
  ;; end of loading the dossiers.
  ;(return-from declare-all-existing-individuals-permanent :no-op)
  (dolist (c *referential-categories*)
    (declare-category-instances-permanent c))
  (setq *1st-permanent-individual/all-categories*
        (first *active-individuals*)))


(defun declare-category-instances-permanent (c)
  ;; subroutine of Declare-all-existing-individuals-permanent
  (let ((instances (all-instances c)))
    (when instances
      (format t "~&~A has ~A instances"
              (cat-symbol c) (length instances))
      (setf (unit-plist c)
            `(:1st-permanent-individual ,(first instances)
              :permanent-individuals ,instances  ;; the sublist
              ,@(unit-plist c))))))


(defun declare-all-new-instances-permanent (c)
  "Move the permanent marker keyword up to the front of the 
   list on the category."
  (let* ((instances (all-instances c))
         (plist (unit-plist c))
         (cell/permanent-list (member :permanent-individuals plist
                                      :test #'eq))
         (cell/1st-permanent (member :1st-permanent-individual plist
                                     :test #'eq)))
    (rplacd cell/permanent-list
            `(,instances ,@(cddr cell/permanent-list)))
    (rplacd cell/1st-permanent
            `(,(car instances) ,@(cddr cell/1st-permanent)))
    (length instances)))


(defun collect-new-individuals ()
  (let ( list )
    (dolist (i *active-individuals*)
      (when (eq i *1st-permanent-individual/all-categories*)
        (return))
      (push i list))
    (nreverse list)))



;;--- Internal calls

(defun add-permanent-individual (individual category)

  ;; Called from index/individual via a couple of subroutines
  ;; whenever the category involved indicates that all its
  ;; instances are to be permanent. The individual gets put
  ;; on the permanent list, and, if the category has some 
  ;; temporary instances, gets moved on the category's list of
  ;; individuals so that all the temporaries are in front of it.

  ;; If called directly from index-to-category then the
  ;; individual ("instance") has just been cons'd onto the
  ;; front of the instances list. 

  (unless (permanent-individual? individual)
    (push-debug `(,individual ,category ,(unit-plist category)))
    (error "Threading bug: expected ~a~
          ~%to be a permanent individual but it's not."
           individual))

  (note-permanence-of-categorys-individuals category)
  ;; This isn't the same as "all of its individuals are permanent",
  ;; but it suffices to keep reclaim from zero'ing its instance
  ;; field.

  (let* ((plist (unit-plist category))
         (cell/permanent-list (member :permanent-individuals plist
                                      :test #'eq))
         (cell/1st-permanent (member :1st-permanent-individual plist
                                     :test #'eq))
         (cell/instances (member :instances plist :test #'eq))
         (instances (second cell/instances)))

;    (push-debug `(,individual ,category))
;    (format t "individual = ~a" individual) (break "break?")
;    (setq individual (car *) category (cadr *))

    (cond
     ((null (cdr instances))
      ;; this individual is the only instance in this category so
      ;; there's not much to do.
      (setf (unit-plist category)
            `( :1st-permanent-individual
              ,individual
              :permanent-individuals
              ,(list individual)
              ,@plist )))


     ((null cell/1st-permanent)
      ;; none of the instances on the list are permanent
      (break "look around and confirm assumptions")
      ;; The other instances are temporary, so the permanent marker
      ;; and this instance go below them -- see reclaimation code
      (when (eq individual (car instances)) ;; trust but verify
        (setq instances (cdr instances)))
      (let* ((instances-cell
              (member instances plist :test #'eq))
             (rest-of-the-plist (cddr instances-cell)))
        ;; replace its list of instances with the shorter list
        (rplacd instances-cell
                (cons instances rest-of-the-plist))
        (break "that look right?")
        ;; add the permanent marker on the front
        (setf (unit-plist category)
              `( :1st-permanent-individual
                 ,individual
                 :permanent-individuals
                 ,(list individual)
                ,@plist))
        (break "still look right?")))          
   


     ((eq (second cell/1st-permanent)
          (second instances))
      ;; There is at least one other instance.
      ;; The individual has just been put at the front of the
      ;; instances list. If the 1st permanent individual is second 
      ;; on that list then we don't have to do any moving
      (rplacd cell/permanent-list
              ;; the permanent list should be identical to the
              ;; instances list
              `(,(second cell/instances)
                ,@(cddr cell/permanent-list) ))
      (rplacd cell/1st-permanent
              `( ,individual
                ,@(cddr cell/1st-permanent) )))



     ((eq individual (car instances))
      ;; As expected, it's at the front of the list
      ;; (push-debug `(,individual ,category))
      ;; (setq individual (car *) category (cadr *))
      ;; (add-permanent-individual individual category)

      ;; make it the 1st-permanent
      (rplaca (cdr cell/1st-permanent)
              individual)

      ;; put it on the fron t of the permanent individuals list
      (rplaca (cdr cell/permanent-list)
              (cons individual (cadr cell/permanent-list))))

      

     (t ;; It isn't at the front of the list, so it has to be moved
      (push-debug `(,(copy-list instances) ,(copy-list cell/instances)
                  ,(copy-list cell/1st-permanent)
                  ,(copy-list cell/permanent-list)))
 #|     (setq copies (peek-debug))
      (setq instances (nth 0 copies)
            cell/instances (nth 1 copies)
            cell/1st-permanent (nth 2 copies)
            cell/permanent-list (nth 3 copies))  |#
      (push-debug `(,individual ,category))
      (break "Make permanent: something else is going on")
 
      ;;----------------- this is all suspect 6/14/13
      ;; pop it off the top of the instances list
      (rplacd cell/instances (cddr cell/instances))

      (let ((cell/1st-perm-indiv-in-instances
             (member (first cell/1st-permanent)
                     instances :test #'eq)))
        (unless cell/1st-perm-indiv-in-instances
          (error "Can't identify the first permanent individual ~
                  when trying to make ~a~
                ~%permanent in the instances of ~a"
                 individual category))

        ;; Shift its location in the list of allocated 
        ;; individuals to just behind the presently first
        ;; permanent object.  Nothing else has to change
        (rplacd cell/1st-perm-indiv-in-instances
                `( ,individual ,@(cddr cell/permanent-list)))
        (pop-debug))))
            
    plist ))


;;;---------------------------------------------------
;;; driver -- point of entry for per-run reclaimation
;;;---------------------------------------------------

(defparameter *trace-reclaimation* nil)
(defun trace-reclaimation ()
  (setq *trace-reclaimation* t))
(defun untrace-reclaimation ()
  (setq *trace-reclaimation* nil))

(defparameter *reclaimation-pauses* nil)
(defun step-reclaimation ()
  (setq *reclaimation-pauses* t))
(defun unstep-reclaimation ()
  (setq *reclaimation-pauses* nil))



(defun reclaim-temporary-individuals ()  ;;is this name easier to remember ??
  (reap-individuals))

(defun reap-individuals ()
  ;; called from Per-article-initializations -- it zeros
  ;; everything that was instantiated in the last run
  (declare (special *objects-in-the-discourse*))
  (let ( type-list )
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key type-list))
             *objects-in-the-discourse*)

    (when *trace-reclaimation*
      (if type-list
        (format t "~&Categories to reap:  ~A~%~%" type-list)
        (format t "~&Nothing in the discourse history~%~%")))

    (setq type-list
          (additional-categories-of-active-individuals type-list))

    (when *trace-reclaimation*
      (push-debug `(,type-list))
      (break "Reap: ~a categories" (length type-list)))

    (let ( individuals-touched )
      (dolist (category type-list)
        (unless (individuals-of-this-category-are-permanent category)
          (setq individuals-touched
                (nconc individuals-touched
                       (reclaim-all-instances category)))))

      (when *trace-reclaimation*
        (push-debug `(,individuals-touched))
        (break "Reap: touched ~a individuals" (length individuals-touched)))

      (cleanup-bindings-fields individuals-touched))

    (did-we-forget-any-unreaped-individuals?)

    (when *trace-reclaimation*
      (format t "~%----- reclaimation finished ------~%~%"))
    (when *reclaimation-pauses* (break))))


(defparameter *interesting-categories*
  '( term  segment
     paired-in-long-segment  pair-term
     genitive  subject-verb
     ))

(defun report-active-count/interesting-categories ()
  (let ( category )
    (dolist (symbol *interesting-categories*)
      (setq category (category-named symbol))
      (format t "~&  ~A active in ~A"
              (length (all-instances category))
              category))
    (terpri)))


(defun did-we-forget-any-unreaped-individuals? ()
  ;; called from Reap-individuals as a debugging aid
  (let ((count 0)
        missed-by-category-driven-reap )
    (do* ((list *active-individuals* (cdr list))
          (i (car list) (car list)))
        ((eq i *1st-permanent-individual/all-categories*)
         (setq *active-individuals* list))
      (incf count)
      (push i missed-by-category-driven-reap))
    (when *trace-reclaimation*
      (format t "~%-------------------------------~
                 ~% ~A individuals missed:~%" count)
      (pl missed-by-category-driven-reap))
    count ))





(defun additional-categories-of-active-individuals (original-list)
  (let ((augmented-list original-list)
        (count 0)
        type )
    (dolist (i *active-individuals*)
      (when (eq i *1st-permanent-individual/all-categories*)
        (when *trace-reclaimation*
          (format t "~&Scanned ~A individuals before reaching ~
                     permanents~%~%" count))
        (return))
      (incf count)
      (setq type (i-type-of i))
      (when type  ;; 7/7/95 a nil is turning up on the last indiv.
        (unless (member type augmented-list :test #'eq)
          (when *trace-reclaimation*
            (format t "~&Adding ~A to type list~%" type))
          (push type augmented-list))))

    augmented-list ))
  


;;;--------------------------
;;; per-category entry point
;;;--------------------------

(defun reclaim-all-instances (category)
  ;; Called from reap-individuals.
  ;; deallocates all of the non-permanent individuals
  (let ((list-of-individuals (all-instances category))
        (1st-permanent-individual
         (cadr (member :1st-permanent-individual (unit-plist category))))
        now-looking-at-permanent-indiv
        all-values  all-bodies
        values  bodies )

    (when *trace-reclaimation*
      (format t "~&~%------------------------------~
                 ~%Reclaiming ~A  (~A)~%"
              category (length list-of-individuals)))

    (dolist (individual list-of-individuals)
      (when (eq individual 1st-permanent-individual)
        (setq now-looking-at-permanent-indiv t))

      (catch :reclaim-of-individual-failed 
        ;; indexing scheme mismatch happens with numbers somehow

        (if now-looking-at-permanent-indiv
          ;; permanent individuals keep their own bindings but may
          ;; have had some of those that they're bound-in deallocated
          ;; and so need to be cleaned up
          (push individual all-bodies)
          
          (else ;; relaim the individual
           (multiple-value-setq (values bodies)
             ;; these locals point to the units referenced in the
             ;; course of zeroing this individual
             (zero-out-individual individual
                                  category))
           (dolist (i values)
             (unless (member i all-values :test #'eq)
               (push i all-values)))
           (dolist (i bodies)
             (unless (member i all-values :test #'eq)
               (push i all-bodies)))))))

    (cond
     ((individuals-of-this-category-are-permanent category)
      (when *trace-reclaimation*
        (format t "~&~%Retaining instances of ~a" category)))
     (t
      (when *trace-reclaimation*
        (format t "~&~%Zero'ing instances of ~a" category))
      (zero-category-index category 1st-permanent-individual)))

    (nconc all-values all-bodies)))




;;;----------------------------
;;; per-individual entry point
;;;----------------------------

(defun zero-out-individual (i c)
  ;; called from reclaim-all-instances
  (when (permanent-individual? i)
    (format t "~&trying to trash a permanent individual: ~A~%" i)
    (push-debug `(,i ,c)) (break)
    (return-from zero-out-individual nil))

  (unless (eq (indiv-type i) :deallocated)
    (when *trace-reclaimation*
      (format t "~&~%Zeroing ~A~%" i))
    (unindex-individual i c)
    (multiple-value-bind (values bodies)
                         (zero-individuals-bindings
                          :binds (indiv-binds i)
                          :bound-in (indiv-bound-in i))
      
      (deallocate-individual i)
      (values values bodies))))


(defun delete/individual (i)
  ;; generic call for doing it by hand
  (zero-out-individual i (itype-of i)))


(defun zero-category-index (category 1st-permanent
                            &optional do-permanent-too? )
  ;; called from reclaim-all-instances after instances are zero'd
  (cond (do-permanent-too?
         (reset-category-count category))
        (1st-permanent
         (reset-category-count category (indiv-id 1st-permanent)))
        (t (reset-category-count category)))

  (setf (getf (unit-plist category) :instances)
        (cond (do-permanent-too?
               nil )
              (1st-permanent
               (cadr (member :permanent-individuals
                             (unit-plist category))))
              (t nil)))

  (when do-permanent-too?
    (setf (getf (unit-plist category) :1st-permanent-individual)
          nil)
    (setf (getf (unit-plist category) :permanent-individuals)
          nil))

  (unless 1st-permanent
    (typecase category
      (referential-category
       (if (hash-table-p (cat-instances category))
         (clrhash (cat-instances category))
         (setf (cat-instances category) nil)))
      (lattice-point
       ;; appear to only use their plist
       (change-plist-value category :instances nil))
      (otherwise
       (push-debug `(,category))
       (error "Unexpected type of 'category': ~a~%  ~a"
              (type-of category) category))))       

    category )




;;;------------------------------------------------------
;;; cleaning up individuals affected by the reclaimation
;;;------------------------------------------------------

(defun cleanup-bindings-fields (list-of-individuals)
  ;; Called from Reap-individuals
  (dolist (i list-of-individuals)
    (clean-binds-field i)
    (clean-bound-in-field i)))


(defun clean-binds-field (i)
  (let ( still-viable-bindings )
    (dolist (b (indiv-binds i))
      (if (deallocated-binding? b)
        (when *trace-reclaimation*
          (format t "~&Dead binds #~A on ~A~%"
                  (binding-id b) i))
        (push b still-viable-bindings)))
    (setf (indiv-binds i) still-viable-bindings)))


(defun clean-bound-in-field (i)
  (let ( still-viable-bindings )
    (dolist (b (indiv-bound-in i))
      (if (deallocated-binding? b)
        (when *trace-reclaimation*
          (format t "~&Dead bound-in #~A on ~A~%"
                  (binding-id b) i))
        (push b still-viable-bindings)))
    (setf (indiv-bound-in i) still-viable-bindings)))

