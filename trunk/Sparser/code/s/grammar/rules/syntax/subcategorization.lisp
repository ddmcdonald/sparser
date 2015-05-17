;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "subcategorization"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  November 2014

;; Initiated 9/11/14 to organize information about subcategorization patterns
;; Working on it through 9/15/14. 11/20/14 hacked up a treatment of multiple
;; subcat patterns based on hydrolysis. 
;; fixed print method for subcategorization-frame to handle cases without bound word or category slots...
;; 1/14/2015 Changes to put :subject and :object selectional restrictions in the subcat frame

(in-package :sparser)


;;;--------------------------------------
;;; Comlex subcategorization information
;;;--------------------------------------
#|
(:comlex "common" 
  (noun (:features ((countable :pval ("in")))))
  (adjective 
    (:subc ((adj-pp :pval ("for" "to"))
            (extrap-adj-for-to-inf))
     :features ((gradable))))) |#

(defmethod comlex-entry ((pname string))
  "Just return the subcagegorization expression if there is one.
   It will be an alist on part of speech."
  (declare (special *comlex-words-primed* *primed-words*))
  (when *comlex-words-primed*
    (let ((full-entry (gethash pname *primed-words*)))
      (when full-entry
        (cddr full-entry)))))

(defmethod comlex-subcategorization ((w word) (pos symbol))
  (comlex-subcategorization (word-pname w) pos))

(defmethod comlex-subcategorization ((pname string) (pos symbol))
  (when *comlex-words-primed*
    (let ((entry (comlex-entry pname)))
      (when entry
        (assq pos entry)))))


(defun add-specific-subcategorization-facts (category word pos)
  ;; Called from define-function-term, where 'pos' is :adjective
  ;; and we're looking for bound prepositions for, e.g. "common"
  (when *comlex-words-primed* 
    (let ((pos-entry (comlex-subcategorization word pos)))
      (when pos-entry
        ;; this part of speech specific entry can have many
        ;; subentries, as described in the Comlex manual.
        ;; Here we're just looking a subcategorization
        (let ((subcat (cadr (assq :subc (cdr pos-entry)))))
          (when subcat
            (push-debug `(,category ,word ,subcat)) 
            (break "stub")))))))


;;;-----------------------------------
;;; class to organize the information
;;;-----------------------------------

(defclass subcategorization-frame ()
  ((word :initarg :word :accessor for-word
    :documentation "Backpointer to the word this applies to")
   (category :initarg :cat :accessor for-category
    :documentation "Alternatively, this frame may apply
     to a category rather than a word.")
   (form :initarg :form :accessor applies-to
    :documentation "The part of speech (form category) that 
      this frame applies to.")
   ;; We may want to factor the sets of classes according
   ;; to what form they apply to.
   (prepositions :initform nil :accessor bound-prepositions
    :documentation "Does this word take any prepositions,
      and if so, does the combination denote a different
      category?")
   (subcategorizations :initform nil :accessor subcat-patterns
    :documentation "A list of subcategorization specifications
      that apply to the word sense that this frame is for."))
  (:documentation "A single pattern among what may be several
    alternative subcategorization patterns for a given word."))

(defmethod print-object ((sc subcategorization-frame) stream)
  (print-unreadable-object (sc stream :type t)
    (format stream "~s" 
            (cond
             ((and (slot-boundp sc 'word)
                   (for-word sc))
              (word-pname (for-word sc)))
             ((slot-boundp sc 'category)
              (for-category sc))
             ((slot-boundp sc 'form)
              `(for the form ,(applies-to sc)))
             (t
              "unknown sub-categorization source")))))

(defmethod display-subcategorization ((category-name symbol))
  (display-subcategorization (category-named category-name :break)))

(defmethod display-subcategorization ((c category))
  (let ((sf (get-subcategorization c)))
    (if sf
      (display-subcategorization sf)
      (format t "The category ~a has no subcategorizations"
              (cat-symbol c)))))

(defmethod display-subcategorization ((sf subcategorization-frame))
  (declare (special sf))
  (let ((category (for-category sf))
        (patterns (subcat-patterns sf)))
    (declare (special category patterns))

    (format t "Subcategorization options for ~a"
            (if (consp category)
                category
                (cat-symbol category)))
    (push-debug `(,patterns)) ;;(break "patterns")
    (do* ((subcat-list (car patterns) (car rest))
          (trigger (car subcat-list) (car subcat-list))
          (v/r (cadr subcat-list) (cadr subcat-list))
          (var (caddr subcat-list) (caddr subcat-list))
          (rest (cdr patterns) (cdr rest)))
         ((null subcat-list))
      (declare (special subcat-list trigger v/r var rest))
      (cond
       ((keywordp trigger)
        (format t "~&~4T:~a  v/r: ~a  var: ~a~%"
                trigger 
                (if (consp v/r)
                    v/r
                    (cat-symbol v/r))               
                (var-name var)))
       ((word-p trigger)
        (format t "~&~4T:~s  v/r: ~a  var: ~a~%"
                (word-pname trigger) 
                (if (consp v/r)
                    v/r
                    (cat-symbol v/r))
                (var-name var)))
       (t (error "Unanticipated type of trigger in ~a" subcat-list))))))


;;;------------------------
;;; assignments and access
;;;------------------------

(defparameter *labels-to-their-subcategorization* (make-hash-table)
  "From words or categories to subcategorization objects")

(defun get-subcategorization (label &optional facet)
  (let ((entry (gethash label *labels-to-their-subcategorization*)))
    (when entry
      (if facet
        (funcall facet entry)
        entry))))

(defun fom-subcategorization (label &key form category)
  (let ((sf (get-subcategorization label)))
    (unless sf
      (setq sf 
            (if form
                (make-instance 'subcategorization-frame
                  :word label
                  :form form)
                (make-instance 'subcategorization-frame
                  :cat category)))
      (setf (gethash label *labels-to-their-subcategorization*) sf)
      (when category
        (setf (gethash category *labels-to-their-subcategorization*) sf)))
    sf))


(defmacro assign-subcat (label form category &rest parameter-plist) ;; :verb+prep)
  (let ((l (etypecase label
             (word label)
             (category label)
             (string (word-named label)))))
    ;;/// typecheck form
    `(assign-subcat/expr ,l ',form ',category ',parameter-plist)))

(defun assign-subcat/expr (word form category parameter-plist)
  "Form to find or make the appropriate subcategorization frame
   and then call the decoder to parse it."
  (let ((sf (fom-subcategorization word :form form)))
    (apply #'decode-subcategorization-parameter-list sf category parameter-plist)))


(defun decode-subcategorization-parameter-list (sf category &key prep)
  (declare (ignore category)) ;; switch category when prep used
  "Parse the content and stash it in the sf structure."
  (when prep
    (setf (bound-prepositions sf) `(,prep)))
  sf)


;;;------------------------------------------------
;;; 'owned' prepositions that are part of the verb
;;;------------------------------------------------
;; These are just part of the verb, e.g. "act as".
;; They don't mark arguments

;;--- create the record

; (assign-preposition "responsible" "for")
(defmethod assign-preposition ((word-pname string) (prep-pname string))
  (let ((word (resolve/make word-pname))
        (prep (word-named prep-pname)))
    (unless prep (error "Undefined preposition: ~a" prep-pname))
    (assign-preposition word prep)))

(defmethod assign-preposition ((verb word) (prep word))
  (assign-subcat/expr verb category::verb nil `(:prep ,prep)))

(defmethod assign-preposition ((verb word) (prep polyword))
  (assign-subcat/expr verb category::verb nil `(:prep ,prep)))


;;--- query the record


;; Strange case -- "treated with or without ..." in ASPP2
(defmethod takes-preposition? ((word word) (cat referential-category))
  nil)

(defmethod takes-preposition? ((e edge)(cat referential-category))
  nil)

(defmethod takes-preposition? ((e edge) (prep word))
  (let* ((label (edge-category e))
         (sc (get-subcategorization label)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((e edge) (prep polyword))
  (let* ((label (edge-category e))
         (sc (get-subcategorization label)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((word word) (prep word))
  (let ((sc (get-subcategorization word)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((word word) (prep polyword))
  (let ((sc (get-subcategorization word)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((sc subcategorization-frame) (prep polyword))
  (let ((preps (bound-prepositions sc)))
    (when preps
      (memq prep preps))))
(defmethod takes-preposition? ((sc subcategorization-frame) (prep word))
  (let ((preps (bound-prepositions sc)))
    (when preps
      (memq prep preps))))


;;;---------------------------------------------------
;;; subcategorization of marked or unmarked arguments
;;;--------------------------------------------------

(defun assign-subcategorization (category marker v/r variable)
  ;; called from subcategorize-for-slot (in shortcut
  ;; processing) to take the information and install it for
  ;; use at runtime. Note that the value restriction has to
  ;; be satisfied
  (when (null v/r) (break "null-v/r in assign-subcategorization"))
  (let ((sf (fom-subcategorization category :category category)))
    (let ((entry (subcat-patterns sf))
          (new-case `(,marker ,v/r ,variable)))
      (unless (member new-case entry :test #'equal)
        (setf (subcat-patterns sf) (cons new-case entry)))
      new-case)))

(defun assign-subject (category v/r variable)
  ;; called from decode-realization-parameter-list
  (assign-subcategorization category :subject v/r variable))

(defun assign-object (category v/r variable)
  ;; called from decode-realization-parameter-list
  (assign-subcategorization category :object v/r variable))


;;--- Syntactic sugar over the list 

(defun subcat-label (entry)
  (car entry))
(defun subcat-restriction (entry)
  (cadr entry))
(defun subcat-variable (entry)
  (caddr entry))


;;;-----------
;;; predicate
;;;-----------

(defmethod known-subcategorization? ((e edge))
  (known-subcategorization? (edge-category e)))

(defmethod known-subcategorization? ((i individual))
  (known-subcategorization? (itype-of i)))

(defmethod known-subcategorization? ((c category))
  (let ((sc (get-subcategorization c)))
    (when sc
      (subcat-patterns sc))))

(defmethod known-subcategorization? ((w word))
   (let ((sc (get-subcategorization w)))
    (when sc
      (subcat-patterns sc))))

(defmethod known-subcategorization? ((w polyword))
   (let ((sc (get-subcategorization w)))
    (when sc
      (subcat-patterns sc))))


;;;-------------------------------------
;;; Collecting instances and statistics
;;;-------------------------------------

(defparameter *collect-subcat-info* nil
  "A flag that governs whether we collect subcategorization
  statistics")

(defparameter *subcat-info* nil)
(defparameter *ref-cat-text* (make-hash-table))

(defun save-subcat-info (&optional filename)
  (if filename
    (with-open-file (stream filename
                            :direction :output
                            :if-exists :overwrite
                            :if-does-not-exist :create)
      (subcat-info stream))
    (subcat-info)))


(defun collect-subcat-statistics (head subcat-label variable-to-bind item)
  (when *collect-subcat-info* 
    (push (subcat-instance head subcat-label variable-to-bind item)
          *subcat-info*)))

(defun subcat-instance (head subcat-label var raw-item)
  ;; makes a record of the subcatgorization relationship
  (let* ((raw-item-edge (edge-for-referent raw-item))
         (item
          (if (eq (edge-form raw-item-edge) category::pp)
            (edge-referent (edge-right-daughter raw-item-edge))
            raw-item))
         (head-cat 
          (if (individual-p head)
            (itype-of head)
            head))
         (item-cat
          (if (individual-p item)
            (itype-of item)
            item)))
    (save-cat-string head-cat 
     (edge-string (edge-for-referent head)))
    (save-cat-string item-cat
     (edge-string (edge-for-referent raw-item)))
    (list
     (cat-name head-cat)
     subcat-label
     (var-name var)
     (cat-name item-cat)
     (edge-string (left-edge-for-referent))
     (edge-string (right-edge-for-referent)))))

(defun edge-for-referent (ref)
  (cond
   ((eq ref (edge-referent (left-edge-for-referent)))
    (left-edge-for-referent))
   ((eq ref (edge-referent (right-edge-for-referent)))
    (right-edge-for-referent))
   (t
    (break "edge-for-referent"))))

(defun save-cat-string (cat cat-string)
  (push cat-string (gethash cat *ref-cat-text*)))

(defun edge-string (edge)
  (terminals-in-segment/one-string (pos-edge-starts-at edge)
                                   (pos-edge-ends-at edge)))

(defun subcat-info (&optional (stream t))
  ;; Prints out the subcatgorization infomation collected by
  ;; subcat-instance
  (declare (special *collect-subcat-info* *ref-cat-text* *subcat-info*))
  (setq *collect-subcat-info* t)
  (clrhash *ref-cat-text*)
  (compare-to-snapshot 'dec-test)
  (compare-to-snapshot 'dry-run)
  (loop for x in *subcat-info*
    do
    (print x stream))
  (let ((cats nil))
    (maphash #'(lambda (cat strings) 
                 (declare (ignore strings))
                 (push cat cats))
             *ref-cat-text*)
    (setq cats (sort cats #'string< :key #'(lambda(cat) (cat-name cat))))
    (loop for cat in cats 
      do
      (format stream "~&(~A" cat)
      (loop for item in (gethash cat *ref-cat-text*)
        do
        (format stream "~&   ~S" item))
      (format stream ")"))
    ;;(format #'(lambda (cat strings)(pprint (list (cat-name cat) strings))) *ref-cat-text*)
    ))



