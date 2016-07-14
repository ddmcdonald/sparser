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
;; 6/5/2015 new utility function get-ref-subcategorization that gets the subcat frame for an individual or a category
;; 8/13/2015 -- make subcategorization information inheritable, so that we can get adjunctive like modifiers that 
;; are specific to particular higher level categories 
;; (like "in cell-line" and "in species" for almost all biological entities)

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
            ;; (lsp-break "stub")
            ))))))


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
      that apply to the word sense that this frame is for.")
   (control-relations :initarg :controls :initform nil :accessor control-relations))
  (:documentation "A single pattern among what may be several
    alternative subcategorization patterns for a given word."))

(defmethod print-object ((sc subcategorization-frame) stream)
  (print-unreadable-object (sc stream :type t)
    (format stream "for ~s"
            (cond
             ((and (slot-boundp sc 'word)
                   (for-word sc))
              (word-pname (for-word sc)))
             ((slot-boundp sc 'category)
              (cat-symbol (for-category sc)))
             ((slot-boundp sc 'form)
              `(for the form ,(applies-to sc)))
             (t
              "unknown sub-categorization source")))))

(defmethod control-relations ((cat category))
  (and (get-subcategorization cat)
       (control-relations (get-subcategorization cat))))

(defmethod control-relations ((i individual))
  (control-relations (itype-of i)))

    

(defun dsc (x)
  (display-subcategorization x))

(defmethod display-subcategorization ((category-name symbol))
  (display-subcategorization (category-named category-name :break)))

(defmethod display-subcategorization ((c category))
  (let ((sf (get-subcategorization c)))
    (if sf
      (display-subcategorization sf)
      (format t "The category ~a has no subcategorizations"
              (cat-symbol c)))))

(defmethod display-subcategorization ((sf subcategorization-frame))
  (let ((category (for-category sf))
        (patterns (subcat-patterns sf)))
    (format t "Subcategorization options for ~a" (cat-symbol category))
    (dolist (pattern patterns)
      (let ((trigger (subcat-label pattern))
            (v/r (subcat-restriction pattern))
            (var (subcat-variable pattern)))
        (etypecase trigger
          (keyword
           (format t "~&~4T:~a  v/r: ~a  var: ~a~%"
                   trigger
                   (v/r-symbol v/r)
                   (var-symbol var)))
          (word
           (format t "~&~4T:~s  v/r: ~a  var: ~a~%"
                   (word-pname trigger)
                   (v/r-symbol v/r)
                   (var-symbol var)))
          (polyword
           (format t "~&~4T:~s  v/r: ~a  var: ~a~%"
                   (pw-pname trigger)
                   (v/r-symbol v/r)
                   (var-symbol var))))))))

(defun var-symbol (var)
  (cond ((null var) nil)
        ((consp var) var)
        (t (var-name var))))

(defun v/r-symbol (v/r)
  (cond ((null v/r) nil)
        ((consp v/r) v/r)
        (t (cat-symbol v/r))))


;;;------------------------
;;; assignments and access
;;;------------------------

(defparameter *labels-to-their-subcategorization* (make-hash-table)
  "From words or categories to subcategorization objects")

(defmethod subcat-patterns ((sf null)))

(defmethod subcat-patterns ((sf symbol))
  (subcat-patterns (category-named sf)))
(defmethod subcat-patterns ((sf category))
  (subcat-patterns (get-subcategorization sf)))

(defun get-subcategorization (label)
  (gethash label *labels-to-their-subcategorization*))

(defun (setf get-subcategorization) (sf label)
  (setf (gethash label *labels-to-their-subcategorization*) sf))

(defgeneric get-ref-subcategorization (ref-object)
  (:method ((ref-object category))
    (get-subcategorization ref-object))
  (:method ((ref-object individual))
    (if (itypep ref-object 'collection)
      (let ((conj-type (value-of 'type ref-object)))
        (when conj-type
          ;; If there isn't a type, then this was either a badly
          ;; modeled collection (though all the ones created by
          ;; conjunction have been vetted), or it's an instance
          ;; of the actual word, e.g. "a specific phorphorylation 
          ;; sequence" in the ASPP January article. These need
          ;; proper models, but we can't block a type-check waiting
          ;; for them all to be done
          (get-subcategorization conj-type)))
      (get-subcategorization (first (indiv-type ref-object))))))

(defgeneric make-subcategorization (label &key)
  (:method ((label word) &key form)
    "Make and install a subcategorization frame for a word."
    (setf (get-subcategorization label)
          (make-instance 'subcategorization-frame :word label :form form)))
  (:method ((label category) &key &allow-other-keys)
    "Make and install a subcategorization frame for a category."
    (setf (get-subcategorization label)
          (make-instance 'subcategorization-frame :cat label)))
  (:method :after ((label category) &key)
    "Inherit subcategorization patterns from supercategories."
    (setf (subcat-patterns (get-subcategorization label))
          (loop with patterns = '()
            for sc in (immediate-supers label)
            as frame = (get-subcategorization sc)
            when frame
            do (loop for sp in (subcat-patterns frame)
                 do (pushnew sp patterns :test #'subcat-pattern-equal))
            finally (return (nreverse patterns))))))

(defun fom-subcategorization (label &key form category slots)
  (declare (special label form category s o slots))
  "Find or make a subcategorization frame for the given category."
  (let ((frame (or (get-subcategorization label)
                   (make-subcategorization label :form form))))
    (declare (special frame))
    (setf (subcat-patterns frame)
          (update-subcat-v/rs label (subcat-patterns frame)))

    (when category
      (when (or (member :s slots :test #'eq)
		(member :o slots :test #'eq))
	(setq slots
	      (subst :subject :s
		     (subst :object :o (copy-list slots)))))
      (setq slots (reverse slots))

      (let ((pats-to-remove (append (when (member :subject slots) '(:subject))
			       (when (member :object slots) '(:object)))))
	(when pats-to-remove
	  (remove-patterns pats-to-remove frame)))
      
      (loop for (var-name pname) on slots by #'cddr
	 as label = (case pname
		      ((:subject :object 
				 :premod :thatcomp :whethercomp
				 :to-comp :ifcomp :as-comp :m)
		       pname)
		      ;;(:alt-s :subject)
		      ;;(:alt-o :object)
		      (otherwise
		       (resolve (string-downcase pname))))
	 as var = (find-variable-for-category var-name category)
	 as v/r = (var-value-restriction var)
	 do (assign-subcategorization category label v/r var))
      
      (setf (subcat-patterns frame)
            (remove-duplicates (subcat-patterns frame) :test #'equal)))

    frame))

(defun remove-patterns (labels frame)
  (setf (subcat-patterns frame)
	(loop for sc in (subcat-patterns frame)
           unless (member (subcat-label sc) labels :test #'eq)
	   collect sc)))

(defun update-subcat-v/rs (category subcats)
  (declare (special category subcats))
  (if (not (category-p category))
   subcats
   (loop for pattern in subcats
      collect
	(let* ((*pat* pattern)
	       (label (subcat-label pattern))
	       (v/r (subcat-restriction pattern))
	       (var (subcat-variable pattern))
	       (local-var (find-variable-for-category (var-name var) category))
	       (local-v/r (var-value-restriction local-var)))
	  (declare (special *pat* label v/r var local-var local-v/r))
	       
	  (if (eq var local-var)
	    pattern ;; nothing has changed -- no RESTRICTION on var
            (make-subcat-pattern label local-v/r local-var category))))))

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

(defstruct (subcat-pattern
             (:constructor make-subcat-pattern
               (label restriction variable source))
             (:conc-name #:subcat-)
             (:print-function print-subcat-pattern))
  label restriction variable source)

(defun subcat-pattern-equal (x y)
  (and (equal (subcat-label x) (subcat-label y))
       (equal (subcat-restriction x) (subcat-restriction y))
       (equal (subcat-variable x) (subcat-variable y))))

(defun print-subcat-pattern (object stream depth)
  (declare (ignore depth))
  (print-unreadable-object (object stream :type nil :identity nil)
    (etypecase (subcat-label object)
      (keyword (princ (subcat-label object) stream))
      (word (princ-word (subcat-label object) stream))
      (polyword (princ-word (subcat-label object) stream)))
    (write-char #\Space stream)
    (princ-variable-value-restriction (subcat-restriction object) stream)
    (write-string " → " stream)
    (princ-variable (subcat-variable object) stream)
    (write-string " (from " stream)
    (princ-category (subcat-source object) stream)
    (write-char #\) stream)))

(defun find-subcat-pattern (label subcat-frame)
  (find label (subcat-patterns subcat-frame) :key #'subcat-label))

(defun find-subcat-variable (label subcat-frame)
  (let ((pattern (find-subcat-pattern label subcat-frame)))
    (and pattern (subcat-variable pattern))))

(defun add-subcat-pattern (pattern subcat-frame)
  (pushnew pattern (subcat-patterns subcat-frame) :test #'subcat-pattern-equal))

(defun replace-subcat-pattern (pattern subcat-frame)
  (setf (subcat-patterns subcat-frame)
        (cons pattern
              (delete (subcat-label pattern)
                      (subcat-patterns subcat-frame)
                      :key #'subcat-label))))

(defun assign-subcategorization (category label restriction variable &key
                                          replace)
  "Install a subcategorization pattern for a value-restriction/variable"
  (check-type category category)
  (check-type label (or category keyword word polyword))
  (check-type restriction (not null))
  (check-type variable (or null lambda-variable))
  (let ((variable (find-variable-for-category (var-name variable) category)))
    ;; if the variable has been restricted locally, then use the local version of the variable
    (funcall (if replace #'replace-subcat-pattern #'add-subcat-pattern)
             (make-subcat-pattern label restriction variable category)
             (get-subcategorization category))))

(defun assign-subject (category v/r variable)
  (assign-subcategorization category :subject v/r variable :replace t))

(defun assign-object (category v/r variable)
  (assign-subcategorization category :object v/r variable :replace t))

(defun assign-premod (category v/r variable)
  (assign-subcategorization category :premod v/r variable :replace nil))


;;;-----------
;;; predicate
;;;-----------

(defmethod known-subcategorization? ((e edge))
  (when (edge-category e)
    (known-subcategorization? (edge-category e))))

(defmethod known-subcategorization? ((i individual))
  (let ((sc (get-ref-subcategorization i)));; (known-subcategorization? (itype-of i))
    (when sc (subcat-patterns sc))))

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

(defparameter *subcat-info* nil
  "Where information collected about subcategorizations is stored.")

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
  (declare (optimize debug))
  (let* ((raw-item-edge (edge-for-referent raw-item))
         (head-edge (edge-for-referent head))
         (item
          (if (and (edge-p raw-item-edge)
                   (eq (edge-form raw-item-edge) category::pp)
                   (edge-p (edge-right-daughter raw-item-edge)))
            (edge-referent (edge-right-daughter raw-item-edge))
            raw-item))
         (head-cat 
          (if (individual-p head)
            (itype-of head)
            head))
         (head-name
          (if (edge-p head-edge)
            (edge-string head-edge)
            ""))
         (item-cat
          (if (individual-p item)
            (itype-of item)
            item))
         (item-name
          (if (edge-p raw-item-edge)
            (edge-string raw-item-edge)
            "")))
    (save-cat-string head-cat head-name)
    (save-cat-string item-cat item-name)
    (list
     (cat-name head-cat)
     subcat-label
     (var-name var)
     (cat-name item-cat)
     (retrieve-surface-string (left-edge-for-referent))
     (retrieve-surface-string (right-edge-for-referent)))))

(defun edge-for-referent (ref)
  ;;  (if
  ;;   (car (mention-history ref))
  ;; when we have completed edges, this works
  ;; but in the middle of interpretation, when we try to collect information with subcat-instance
  ;; we need to fall back on the old code below
  ;;   (mention-source (car (mention-history ref)))
  ;;   (else
  (let* ((left-edge (left-edge-for-referent))
         (left-ref (edge-referent left-edge))
         (right-edge (right-edge-for-referent))
         (right-ref (edge-referent right-edge)))
    (cond
      ((or (eq ref left-ref)
           (eq ref (value-of 'comp left-ref))
           (and (category-p left-ref)
                (itypep ref left-ref))) ;; (eq ref (individual-for-ref left-ref))
       left-edge)
      ((or (eq ref right-ref)
           (eq ref (value-of 'comp right-ref))
           (and (category-p right-ref) ;; (eq ref (individual-for-ref right-ref))
                (itypep ref right-ref)))
       right-edge)
      (t
       (break "edge-for-referent - new case?")))))

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



;;;---------------------------------------------
;;; track missing subcategorization information
;;;---------------------------------------------

(defun save-missing-subcats ()
  (declare (special category::pp))
  (when *missing-subcats*
    (let* ((ee (reverse (all-tts))) 
           (pp-pairs 
            (loop for e on ee by #'cddr 
              when 
              (and (edge-p (car e))
                   (eq category::pp (edge-form (car e)))
                   (cdr e) 
                   (edge-p (second e))
                   (or (vp-category? (second e) )(noun-category? (second e))))
              collect 
              (list (edge-category (second e))
                    (value-of 'prep (edge-referent (car e)))
                    (value-of 'pobj (edge-referent (car e)))
                    (actual-characters-of-word (pos-edge-starts-at (second e))
                                               (pos-edge-ends-at (second e)) nil)
                    (actual-characters-of-word (pos-edge-starts-at (car e))
                                               (pos-edge-ends-at (car e)) nil)))))
      (setq *missing-subcats*
            (nconc pp-pairs *missing-subcats*)))))

(defun write-missing-subcats (outfile)
  (let
      ((missing
        (loop for l in *missing-subcats* 
          when (consp l)
          collect 
          `(,(simple-label (car l)) ,(simple-label (second l)) ,@(cddr l)))))
    (with-open-file (s outfile
                       :direction :output
                       :if-exists :overwrite
                       :if-does-not-exist :create)
      (np missing s))))
  

  


