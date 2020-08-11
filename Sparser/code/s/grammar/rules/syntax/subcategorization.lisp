;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "subcategorization"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2018

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
  (declare (special *comlex-words-primed*))
  (when *comlex-words-primed*
    (let ((entry (comlex-entry pname)))
      (when entry
        (assq pos entry)))))


(defun add-specific-subcategorization-facts (category word pos)
  ;; Called from define-function-term, where 'pos' is :adjective
  ;; and we're looking for bound prepositions for, e.g. "common"
  (declare (special *comlex-words-primed*))
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
  ((category
    :initarg :category :accessor subcat-for
    :documentation "The category that is subcategorized.")
   (prepositions
    :initform nil :accessor bound-prepositions
    :documentation "Does this word take any prepositions, and if so,
      does the combination denote a different category?")
   (local-slots
    :initarg :slots :initform nil :accessor subcat-slots
    :documentation "Local patterns that augment or override inherited ones.")
   (subcategories
    :initarg :subcats :initform nil :accessor subcat-subcats
    :documentation "Categories that inherit this subcategorization frame.")
   (subcategorizations
    :initarg :patterns :initform nil :accessor subcat-patterns
    :documentation "A list of subcategorization patterns
      that apply to the word sense that this frame is for.")))

(defmethod print-object ((frame subcategorization-frame) stream)
  (print-unreadable-object (frame stream :type t)
    (format stream "for ~s" (subcat-for frame))))

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
  (flet ((var-symbol (var)
           (cond ((null var) nil)
                 ((consp var) var)
                 (t (var-name var))))
         (v/r-symbol (v/r)
           (cond ((null v/r) nil)
                 ((consp v/r) v/r)
                 (t (cat-symbol v/r))))
         (name-for (category)
           (etypecase category
             (null nil)
             (category (cat-symbol category)))))
    (let ((category (subcat-for sf))
          (patterns (subcat-patterns sf)))
      (format t "Subcategorization options for ~a" (cat-symbol category))
      (dolist (pattern patterns)
        (format t "~&~4T:~a  v/r: ~a  var: ~a~
                   ~%~10Tfrom ~a~%"
                (pname (subcat-label pattern))
                (v/r-symbol (subcat-restriction pattern))
                (var-symbol (subcat-variable pattern))
                (name-for (subcat-source pattern)))))))


;;;------------------------
;;; assignments and access
;;;------------------------

(defun filter-patterns (item &optional label)
  "Retrieve the subcategorization patterns of 'item', then filter them
 to collect all the patterns that have the same label as 'label'.
 If 'label' is nil return all the patterns
 The labels in subcat-patterns are either words or keywords (:subject)."
  (let ((patterns (subcat-patterns item)))
    (if label
      (loop for pat in patterns
         when (eq label (subcat-label pat))
         collect pat)
      patterns)))
  ;;/// the question is whether this ever gets called with uppercase words
#| older version -- the equalp is problematic in latest SBCL - loops on word structs
              when (equalp (subcat-label pat)
                           (if (keywordp label)
                               label
                               (resolve (string-downcase (pname label))))) |#


(defgeneric subcat-patterns (object)
  (:documentation "Look up and return all of the subcategorization
    frames associated with the object, if any.")
  (:method ((sf null)) nil)
  (:method ((sf symbol))
    (subcat-patterns (category-named sf)))
  (:method ((sf category))
    (subcat-patterns (get-subcategorization sf)))
  (:method ((i individual))
    (subcat-patterns (get-subcategorization (itype-of i)))))

(defvar *labels-to-their-subcategorization*)

(defun get-subcategorization (label)
  (gethash label *labels-to-their-subcategorization*))

(defun (setf get-subcategorization) (sf label)
  (setf (gethash label *labels-to-their-subcategorization*) sf))


(defgeneric get-ref-subcategorization (ref-object)
  (:method ((ref-object category))
    (get-subcategorization ref-object))
  (:method ((ref-object individual))
    (declare (special category::collection category::question))
    (cond 
      ((itypep ref-object category::question)
       (let ((stmt (value-of 'statement ref-object)))
         (when stmt ;; this was intended for a full question
           (get-ref-subcategorization stmt))))
      ;; question goes before collection -- aspp2 # 74
      ((collection-p ref-object)
       (let ((conj-type (value-of 'type ref-object)))
         (when conj-type
           ;; If there isn't a type, then this was either a badly
           ;; modeled collection (though all the ones created by
           ;; conjunction have been vetted), or it's an instance
           ;; of the actual word, e.g. "a specific phorphorylation 
           ;; sequence" in the ASPP January article. These need
           ;; proper models, but we can't block a type-check waiting
           ;; for them all to be done
           (get-subcategorization conj-type))))
      (t (get-subcategorization (itype-of ref-object))))))

(defvar *labels-to-their-subcategorization* nil)
(defvar *all-subcat-frames* nil)
(defvar *all-subcat-patterns* nil)

(unless (hash-table-p (symbol-value '*labels-to-their-subcategorization*))
  (setf *labels-to-their-subcategorization* (make-hash-table))
  ;;"From words or categories to subcategorization objects"
  (setf *all-subcat-frames* nil)
  (setf *all-subcat-patterns* (make-hash-table)))

(defun all-subcat-patterns ()
  (unless (> (hash-table-count *all-subcat-patterns*) 0)
    (loop for var-group
        in
          (group-by  (remove-duplicates
                      (loop for sc in *all-subcat-frames* append (subcat-patterns sc))
                      :test #'equalp)
                     #'subcat-label)
        do
          (setf (gethash (car var-group) *all-subcat-patterns*)
                (group-by (second var-group)
                          #'subcat-restriction
                          #'(lambda(sc)(list (subcat-source sc) (subcat-variable sc)))))))
  *all-subcat-patterns*)

(defun find-plausible-subcat-patterns (label val)
  (let ((subcat-patterns (gethash label (all-subcat-patterns))))
    (or #+ignore(loop for sp in subcat-patterns
              when
                (is-in-p (itype-of val) (car sp))
              collect sp)
        (loop for stype
              in
                (super-categories-of
                 (itype-of val))
              thereis
                (loop for sp in subcat-patterns
                      when (is-in-p stype (car sp))
                       collect sp))
        (loop for sp in subcat-patterns
              when
                (satisfies-subcat-restriction? val (car sp))
              collect sp))))
        

(defun make-subcategorization (category slots)
  "Make and install a subcategorization frame for a category."
  (setf (get-subcategorization category)
        (car
         (push
          (make-instance 'subcategorization-frame
                         :category category
                         :slots slots
                         :patterns (make-subcat-patterns category slots))
          *all-subcat-frames*))))

(defun fom-subcategorization (category &rest slots)
  "Find, make, or override a subcategorization frame for the given category."
  (let ((frame (get-subcategorization category)))
    (cond (frame
           (setf (subcat-patterns frame)
                 (make-subcat-patterns category
                                       (if slots
                                         (setf (subcat-slots frame) slots)
                                         (subcat-slots frame))))
           frame)
          (t (make-subcategorization category slots)))))

(defun make-subcat-patterns (category slots)
  (override-subcat-patterns
   category
   (inherit-subcat-patterns category)
   slots))

(defun inherit-subcat-patterns (category)
  "Inherit subcategorization patterns from supercategories."
  (declare (optimize debug))
  (loop with patterns = '()
        for super in (immediate-supers category)
        as frame = (get-subcategorization super)
        when frame
          do (pushnew category (subcat-subcats frame)) ; record inheritance
             (loop for pattern in (reverse (subcat-patterns frame))
                   as label = (subcat-label pattern)
                   as var = (subcat-variable pattern)
                   as local-var = (find-variable-for-category var category)
                   as local-v/r = (and local-var (var-value-restriction local-var))
                   when local-var ; replace inherited variable with category-local one
                   do (assert local-var (var category) "no ~a variable in ~a" var category)
                      (pushnew (if (eq var local-var)
                                 pattern ; no local restriction on var
                                 (make-subcat-pattern label
                                                      local-v/r
                                                      local-var
                                                      category))
                               patterns :test #'subcat-pattern-equal))
     finally (return patterns)))

(deftype literal-subcat-slot-label ()
  '(member
    :a ; attribute
    :ac ; adjective complement
    :as-comp
    :ifcomp
    :l
    :m
    :howcomp
    :indirect-object
    :object
    :premod
    :subject
    :thatcomp
    :s-comp ;; for verbs like "Let (me know ...)", "Make John ride the bike"
    :to-comp
    :oc ; object-complement
    :verb-premod
    :whethercomp
    ))


(defun override-subcat-patterns (category patterns slots)
  "Override or extend inherited subcategorization patterns from local slots.
 Note that the words that serve as pattern labels, e.g. 'with', will often
 be referenced before their rules have been defined. That is why the label
 constructor here uses resolve/make."
  (declare (optimize debug))
  (check-type category category)
  (assert (every #'subcat-pattern-p patterns))
  (loop initially (setq patterns (remove-if ; override subject & object
                                  (lambda (label)
                                    (and (memq label '(:subject :object))
                                         (getf slots label)))
                                  patterns :key #'subcat-label))
        for (pname var-name) on slots by #'cddr
        as label = (etypecase pname
                     ((or word polyword literal-subcat-slot-label)
                      pname)
                     ((or string symbol)
                      (resolve/make (string-downcase pname))))
        as var = (find-variable-for-category var-name category)
        as v/r = (when var (var-value-restriction var))
        do (when var
             (pushnew (make-subcat-pattern label v/r var category)
                      patterns :test #'subcat-pattern-equal))
        finally (return patterns)))

(defmethod (setf subcat-patterns) :after (new-patterns (frame subcategorization-frame))
  "Propagate updated patterns downwards through the category hierarchy."
  (declare (ignore new-patterns))
  (loop for subcategory in (subcat-subcats frame)
        as subframe = (get-subcategorization subcategory)
        do (apply #'fom-subcategorization subcategory (subcat-slots subframe))))

(defun assign-subcat/expr (word form category parameter-plist)
  "Form to find or make the appropriate subcategorization frame
   and then call the decoder to parse it."
  (let ((sf (fom-subcategorization word)))
    (apply #'decode-subcategorization-parameter-list sf category parameter-plist)))

(defun decode-subcategorization-parameter-list (sf category &key prep)
  "Parse the content and stash it in the subcat frame ('sf') structure."
  (declare (ignore category)) ;; switch category when prep used
  (when prep
    (setf (bound-prepositions sf) `(,prep)))
  sf)


;;;------------------------------------------------
;;; 'bound' prepositions that are part of the verb
;;;------------------------------------------------
#| These are just part of the verb, e.g. "act as".
   They don't mark arguments.
 They are setup during morphological processing of a head verb by
 adding a keyword argument analogous to the markers of irregular verb forms

     :realization (:verb ("work" :prep "on") ...)
 
 We implement the pair by recording the preposition on the subcategorization
 frame for the category of the verb

 That simple version is sufficient if the verb is uniquely used with
 the preposition. If the verb has a different meaning when it's used
 without the preposition (e.g. "put" vs. "put forward") then we need to
 provide the setup routine with more information so that it can write the
 correct rule and stash the sub-cat information correctly.

   (define-category put-forward
     ...
     :realization (:verb ("put" :prep ("forward" "put" put-forward)) ...))
|#

(defun setup-bound-preposition (prep verb-category referent)
  "Add the preposition, referent pair to the subcat record
   of the verb. Make a rewrite rule that composes them."
  ;; Called from make-rules-for head when the verb has a :prep value,
  ;; which should be a preposition or a list of the preposition, the verb,
  ;; and the target category
  (declare (special category::vg))
  (let ((verb-category-copy verb-category)
        (target-category verb-category))  ;; put-forward
    (when (consp prep)
      (setq target-category (third prep)) ;; put-forward
      (let* ((base-verb (second prep)) ;; #<word "put">
             (rs (rule-set-for base-verb))
             (bogus-rule (first (rs-single-term-rewrites rs)))
             (good-rule (second (rs-single-term-rewrites rs))))
        (setq verb-category (cfr-category good-rule))
        ;;(push-debug `(,rs ,verb-category-copy ,verb-category))
        (delete/cfr/rs bogus-rule rs))
      (setq prep (first prep)))
    (unless (word-p prep)
      (error "Prep isn't a word: ~a~%~a" prep (type-of prep)))
    (let* ((prep-label (cfr-category (find-single-unary-cfr prep)))         
           (sc (get-subcategorization verb-category)))
      (unless sc (error "No subcat frame on ~a" verb-category))
      (pushnew prep (bound-prepositions sc))
      (let ((rule (define-cfr target-category `(,verb-category ,prep-label)
                    :form category::vg
                    :referent referent)))
        (add-rule rule target-category)
        (values rule sc)))))


(defgeneric binds-preposition? (head preposition)
  (:documentation "Does this head category have an entry
    in its subcategorization from indicating its takes
    a preposition (particle). The particle can be a word
    or a polyword.")
  (:method ((word word) (cat referential-category)) nil)
  (:method ((e edge)(cat referential-category)) nil)

  (:method ((e edge) (prep word))
    (let* ((label (edge-category e))
           (sc (get-subcategorization label)))
      (when sc
        (binds-preposition? sc prep))))
  (:method ((e edge) (prep polyword))
    (let* ((label (edge-category e))
           (sc (get-subcategorization label)))
      (when sc
        (binds-preposition? sc prep))))
  (:method ((word word) (prep word))
    (let ((sc (get-subcategorization word)))
      (when sc
        (binds-preposition? sc prep))))
  (:method ((word word) (prep polyword))
    (let ((sc (get-subcategorization word)))
      (when sc
        (binds-preposition? sc prep))))
  (:method ((sc subcategorization-frame) (prep polyword))
    (let ((preps (bound-prepositions sc)))
      (when preps
        (memq prep preps))))
  (:method ((sc subcategorization-frame) (prep word))
    (let ((preps (bound-prepositions sc)))
      (when preps
        (memq prep preps)))))

;; Strange case -- "treated with or without ..." in ASPP2


;;;------------------
;;; tailored queries
;;;------------------

(defgeneric takes-preposition? (head preposition)
  (:documentation "Collect the subcat frames of the head for this
    preposition if there are any")
  (:method ((cat-name symbol) (pname string))
    (takes-preposition? (category-named cat-name :error) pname))
  (:method ((c category) (pname string))
    (filter-patterns c (resolve pname)))
  (:method ((c category) (w word))
    (filter-patterns c w))
  (:method ((c category) (pw polyword))
    (filter-patterns c pw))
  (:method ((i individual) (pname string))
    (filter-patterns i (resolve pname)))
  (:method ((i individual) (w word))
    (filter-patterns i w))
  (:method ((i individual) (pw polyword))
    (filter-patterns i pw))
  (:method ((head-edge edge) (prep-edge edge))
    (declare (special *prep-forms*))
    (assert (memq (form-cat-name prep-edge) *prep-forms*))
    (let ((prep (edge-left-daughter prep-edge)))
      (when (edge-p prep) (setq prep (edge-left-daughter prep)))
      (takes-preposition? (edge-referent head-edge) prep))))



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
    (write-string ")" stream)))

(defun find-subcat-pattern (label subcat-frame)
  (find label (subcat-patterns subcat-frame) :key #'subcat-label))

(defun find-subcat-patterns (label subcat-frame)
  ;; multiple patterns may share the same label
  ;;  find them all
  (loop for pat in  (subcat-patterns subcat-frame)
        when (eq label (subcat-label pat))
        collect pat))

(defun find-subcat-variable (label subcat-frame)
  (let ((pattern (find-subcat-pattern label subcat-frame)))
    (and pattern (subcat-variable pattern))))

(defun find-subcat-variables (label subcat-frame)
  ;; a single label may map to multiple variables -- find them all
  (let ((pattern (find-subcat-patterns label subcat-frame)))
    (and pattern (mapcar #'subcat-variable pattern))))

(defun add-subcat-pattern (pattern subcat-frame)
  (pushnew pattern (subcat-patterns subcat-frame) :test #'subcat-pattern-equal))

(defun replace-subcat-pattern (pattern subcat-frame)
  (setf (subcat-patterns subcat-frame)
        (cons pattern
              (delete (subcat-label pattern)
                      (subcat-patterns subcat-frame)
                      :key #'subcat-label))))

(defun assign-subcategorization (category label restriction variable &key replace)
  "Install a subcategorization pattern for a value-restriction/variable."
  (check-type category category)
  (check-type label (or category keyword word polyword))
  (check-type restriction (not null))
  (check-type variable (or null lambda-variable symbol))
  (let ((variable (find-variable-for-category variable category))
        (frame (get-subcategorization category)))
    (setf (getf (subcat-slots frame) label) (var-name variable))
    (funcall (if replace #'replace-subcat-pattern #'add-subcat-pattern)
             (make-subcat-pattern label restriction variable category)
             frame)))

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

(defmethod known-subcategorization? ((c cons))
  (declare (special *subcat-test* *sentence-in-core*))
  (unless *subcat-test*
    (warn "passing a list to known-subcategorization? -- ~s~% in sentence: ~s~%"
          c (current-string)))
  nil)


;;;------------------------------------------------
;;; Designated interesting variables in a category
;;;------------------------------------------------

(defgeneric register-variable (category grammatical-relation variable)
  (:argument-precedence-order grammatical-relation category variable)
  (:method ((category category) (grammatical-relation symbol) variable)
    (check-type grammatical-relation keyword "a valid grammatical relation")
    (when variable
      (setf (get-tag grammatical-relation category) variable)))
  (:method (category (grammatical-relation (eql :loc-pp-complement)) variable)
    (call-next-method category
                      grammatical-relation
                      (mapcar (lambda (prep)
                                (resolve (string-downcase prep)))
                              variable))))

(defgeneric subject-variable (label)
  (:method (label)
    (declare (ignore label)))
  (:method ((e edge))
    (subject-variable (edge-referent e)))
  (:method ((c category))
    (find-subcat-variable :subject (get-ref-subcategorization c)))
  (:method ((i individual))
    (find-subcat-variable :subject i)))

(defgeneric object-variable (label)
  (:method (label)
    (declare (ignore label)))
  (:method ((e edge))
    (object-variable (edge-referent e)))
  (:method ((c category))
    (find-subcat-variable :object (get-ref-subcategorization c)))
  (:method ((i individual))
    (find-subcat-variable :object (get-ref-subcategorization i))))


(defgeneric object-variables (label)
  (:method (label)
    (declare (ignore label)))
  (:method ((e edge))
    (object-variables (edge-referent e)))
  (:method ((c category))
    (find-subcat-variables :object (get-ref-subcategorization c)))
  (:method ((i individual))
    (find-subcat-variables :object (get-ref-subcategorization i))))

(defgeneric thatcomp-variable (label)
  (:method  (label)
    (declare (ignore label)))
  (:method ((e edge))
    (thatcomp-variable (edge-referent e)))
  (:method ((c category))
    (find-subcat-variable :thatcomp (get-ref-subcategorization c)))
  (:method ((i individual))
    (find-subcat-variable :thatcomp (get-ref-subcategorization i))))

(defmethod complement-variable ((c category))
  (get-tag :complement-variable c))


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
  (declare (optimize debug)
           (special category::pp))
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

(defun save-cat-string (cat cat-string)
  (push cat-string (gethash cat *ref-cat-text*)))


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

(defparameter *missing-subcats* '(())
  "When non-null, this causes the saving of all cases where a PP 
   is not absorbed by a preceding NP or VP")

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
                                               (pos-edge-ends-at (second e)))
                    (actual-characters-of-word (pos-edge-starts-at (car e))
                                               (pos-edge-ends-at (car e)))))))
      (setq *missing-subcats*
            (nconc pp-pairs *missing-subcats*)))))

(defun write-missing-subcats (outfile)
  (let ((missing
         (loop for l in *missing-subcats* 
            when (consp l)
            collect 
              `(,(simple-label (car l))
                 ,(simple-label (second l))
                 ,@(cddr l)))))
    (with-open-file (s outfile
                       :direction :output
                       :if-exists :overwrite
                       :if-does-not-exist :create)
      (np missing s))))
  


;;;-----------------------------------------------------------
;;; subcategorization tests / checks from syntactic functions
;;;-----------------------------------------------------------

(defun assimilate-subcat (head subcat-label item)
  "Entry point from syntactic functions. We want to bind the item to the
   appropriate variable on the head as determined by the subcat-label.
   The head and item will be individuals, the subcat-label is a keyword symbol.
   At this level we're distinguishing collections from other types of
   heads. The heavy lifting is done by subcategorized-variable and its
   subroutines."
  (declare (special *subcat-test*))
  (if (is-basic-collection? head)
      (assimilate-subcat-to-collection head subcat-label item)
      (let ((variable-to-bind
             ;; Is there a known interpretation of this combination
             ;; using that label
             (subcategorized-variable head subcat-label item)))
        (cond
          (*subcat-test* variable-to-bind)
          (variable-to-bind
           (collect-subcat-statistics head subcat-label variable-to-bind item)
           (setq head (individual-for-ref head))
           (when (is-pronoun? item)
             (unless (is-wh-pronoun? item)
               (tr :conditioning-anaphor-edge item variable-to-bind head)
               (setq item
                     (condition-anaphor-edge
                      head item subcat-label variable-to-bind))))
           (setq head (bind-variable variable-to-bind item head))
           head)))))


(defun assimilate-subcat-to-collection (head subcat-label item
                                        &aux
                                          (heads (value-of 'items head))
                                          (item-edge
                                           (constituent-edge-with-value item)))
  "Spread the assimilation operation (variable binding) across the
   items in the collection and make a new collection out of the result."
  (declare (special *subcat-test* head subcat-label item heads))
  (unless item-edge
    (warn "assimilate-subcat-to-collection: no referent edge for item ~a" item))
  (when item-edge
    ;; we use item-edge rather than item, since maximal projection of item
    ;;  triggered by assignment to earlier conjuncts can change the item
    ;;  before it is assigned to later conjuncts
    (if *subcat-test*
      (loop for head-elt in heads
         always (subcategorized-variable head-elt subcat-label item))
      (let ((interps
             (loop for head-elt in heads
                collect (assimilate-subcat head-elt subcat-label
                                           (edge-referent item-edge)))))
        (when (loop for i in interps always i)
          (create-collection
           interps
           (itype-of (car heads))))))))

(defparameter *show-one-anaphora* nil)

(defun pronominal-or-deictic? (item)
  (declare (special category::this category::that category::these category::those
                    category::quantifier category::pronoun
                    category::interlocutor category::name))
  (cond
    ((or
      (itypep item category::this)
      (itypep item category::that)
      (itypep item category::these)
      (itypep item category::those)
      ;;(itypep item category::numerated-anaphor) for "the seven" in DM&P
      (itypep item category::quantifier)) ;; as in "the other",
     t)
    ((itypep item category::pronoun) ;; of any sort
     t)
    ((itypep item category::name) ; interpreted later like a pronoun
     t)
    ((itypep item category::interlocutor)
     ;; replacement for forms of "I", "we", "you" 6/23/17
     t)))

(defun one-anaphor-item? (item)
  (declare (special category::number))
  (and (itypep item category::number)
       (not (is-basic-collection? item))
       (not (itypep item '(:or post-ordinal ordinal hyphenated-number n-fold)))
       (not (and (numberp (value-of 'value item))
                 (or (floatp (value-of 'value item))
                     (> (value-of 'value item) 10))))
       (not (itypep item 'ordinal ))))


(defun satisfies-subcat-restriction? (item pat-or-v/r)
  "Does the individual 'item' satisfy the type restriction specified in this
   subcat pattern. There are some general cases (e.g. pronouns) where we ignore
   the typecheck because we don't locally have enough information and the
   actual referent won't be known until later."
  (declare (special *trivial-subcat-test* *subcat-test*
                    *in-collect-no-space-segment-into-word*
                    category::pronoun/first/plural category::quantifier
                    category::this category::that category::these category::those
                    category::pronoun category::number category::ordinal))
  (let ((restriction
         (if (subcat-pattern-p pat-or-v/r)
             (subcat-restriction pat-or-v/r)
             pat-or-v/r))
        (source (when (subcat-pattern-p pat-or-v/r) (subcat-source pat-or-v/r)))
        (var (when (subcat-pattern-p pat-or-v/r) (subcat-variable pat-or-v/r)))
        (override-category (unless (symbolp item) ;; e.g. '*lambda-var*
                             (override-label (itype-of item)))))
    (when (and *trivial-subcat-test*
               (note-failed-tests item restriction))
      (return-from satisfies-subcat-restriction? t))

    (flet ((subcat-itypep (item category)
             ;; For protein-families and such that are re-written
             ;; as a more general catgory (e.g. protein). There's no
             ;; provision for inheritance, but if we need it because
             ;; of the reach of the override we should do something
             ;; different with it.
             (cond
               ((itypep item category)) ;; handles conjunctions
               (t (eq category override-category)))))
      (cond
        ((or (pronominal-or-deictic? item)
             (and (eq 'bio-entity (cat-name (itype-of item)))
                  (subcat-itypep 'bio-chemical-entity restriction)))
         t)
        ((and (one-anaphor-item? item)
              (not *in-collect-no-space-segment-into-word*)
              (not (member pat-or-v/r
                           '(blocked-category
                             (:or time-unit time amount-of-time))
                           :test #'equal)))
         (when (and *show-one-anaphora* (not *subcat-test*))
           (format t "~%one anaphora ~s in ~s~%"
                   (list item pat-or-v/r)
                   (current-string)))
         t) ;; this was done to handle one anaphora, but should be revisited
         
        ((consp restriction)
         (cond
           ((eq (car restriction) :or)
            (loop for type in (cdr restriction)
                  thereis (subcat-itypep item type)))
           ((eq (car restriction) :primitive)
            ;; this is usually meant for NAME (a WORD) or
            ;; other special cases
            nil)
           (t (error "subcat-restriction on is a cons but it ~
                      does not start with :or~%  ~a"
                     restriction))))
        ((category-p restriction)
         (subcat-itypep item restriction))
        ((null restriction)
         t)
        ((symbolp restriction) ;; this is the case for :prep subcat-patterns
         nil)
        (t (error "Unexpected type of subcat restriction: ~a"
                  restriction))))))

(defgeneric satisfies-variable-restriction? (item v/r)
  (:documentation "Simpest case. Caller is sure that they have a simple
 value for 'item' such as a individual and an uncomplicated basis for
 the value restriction such as a disambiguated variable")
  ;; This is roughly the last few cases in satisfies-subcat-restriction?, which
  ;; has too many contextual assumptions to use here.
  ;; Compare this to decode-exp-as-ref-category which does best job with primitives
  (:method ((i individual) (var lambda-variable))
    (let ((restriction (var-value-restriction var)))
      (etypecase restriction
        (NULL t)
        (category (itypep i restriction))
        (list
         (unless (eq (car restriction) :or)
           (error "list-restriction on ~a does not start with :or" var))
         (loop for type in (cdr restriction)
            thereis (itypep i type))))))
  (:method ((w word) (var lambda-variable)) nil)
  (:method ((pw polyword) (var lambda-variable)) nil))
           


(defparameter *label* nil)
;; temporary hack to get the label down to satisfies-subcat-restriction?
(defparameter *head* nil)

(defparameter *ambiguous-variables* (list nil))


(defun subcategorized-variable (head label item)
  "Returns the variable on the HEAD that is subcategorized for
   the ITEM when it has the grammatical relation LABEL to the head
   and the ITEM satisfies the value restriction on that variable.
   This layer just checks that the query is well-formed.
   It calls find-subcat-var to do the real work."
  (declare (special *pobj-edge* *subcat-test* *sentence-in-core*))
  (loop while (edge-p label)
     ;; can happen for edges over polywords like "such as"
     do (setq label (edge-left-daughter label)))
  (cond
    ((null head)
     (break "~&null head in call to subcategorized-variable in ~% ~s~%"
            (sentence-string *sentence-in-core*))
     nil)
    ((null item)
     (cond
       ((and (boundp '*pobj-edge*) *pobj-edge*)
	(warn "~&*** null item in subcategorized pobj for ~
                 edge ~s~&  in sentence: ~s~%" *pobj-edge*
                 (current-string)))
       ((eq label :subject)
        (warn "~&*** null item in subcategorized subject for ~
                 clause ~s~&  in sentence: ~s~%"
              (retrieve-surface-string head)
              (current-string)))
       ((eq label :object)
        (break "~&*** null item in subcategorized object for ~
                 clause ~s~&  in sentence: ~s~%"
              (retrieve-surface-string head)
              (current-string)))
       (t
        (warn "~&*** null item in subcategorized-variable~& ~
                 edge ~s~&  in sentence: ~s~%" *pobj-edge*
                 (current-string))))
     nil)
    ((consp item)
     (unless *subcat-test*
       (warn "what are you doing passing a CONS as an item, ~s~&" item))
     nil)
    (t
     (find-subcat-var item label head))))

(defun find-subcat-var (item label head)
  "Looks up the subcategorizations defined on this head.
   Considers special situations when the label is 'of' but should
   really be :object. Sorts out ambiguous variables and then looks
   through the subcat-patterns on this head. It looks for a pattern
   that uses this label, and invokes satisfies-subcat-restriction? to
   check that the v/r of that pattern is satisfied"
  (declare (special item label head *subcat-test* *subcat-use*
                    *left-edge-into-reference* *pat*))
  (let* ((category (itype-of head))
         (subcat-patterns (known-subcategorization? head))
         (of-object
          (and  (equalp (pname label) "of")
                *left-edge-into-reference* ;; it has a non-nil value
                (member (form-cat-name *left-edge-into-reference*)
                        '(np ng vg+ing))
                (loop for pat in subcat-patterns
                      when (and (pname (subcat-label pat))
                                (equalp (pname (subcat-label pat)) "of")
                                (equal (pname (subcat-variable pat)) "OBJECT")
                                (satisfies-subcat-restriction? item pat)
                                ;; n.b. look at "panel"
                                (not (itypep (subcat-restriction pat) 'over-ridden))
                                (not (itypep (subcat-restriction pat) 'blocked-category)))
                      return pat)))
         (ambiguous-of-object
          (when of-object
            (loop for pat in subcat-patterns
                  when (and (eq label (subcat-label pat))
                            (not (eq (pname (subcat-variable pat)) 'object))
                            (satisfies-subcat-restriction? item pat)
                            (not (itypep (subcat-restriction pat) 'over-ridden))
                            (not (itypep (subcat-restriction pat) 'blocked-category)))
                  do (return pat)))))
    (declare (special category subcat-patterns of-object ambiguous-of-object))
    (when ambiguous-of-object (warn "ambiguous-of-object is ~a" ambiguous-of-object))

    (when of-object
      (if ambiguous-of-object
          (if (itypep head 'effect)
              (setq label :object)
              (unless *subcat-test*
                ;;(lsp-break "of-object")
                (warn "ambiguous-of-object for ~s attaching to ~s in ~s"
                      item head (current-string))))
          (setq label :object)))
    
    (when subcat-patterns
      (setq *label* label ;; global scope to aid debugging
            *head* head)
      (let ((*trivial-subcat-test* nil)
            variable  over-ridden)
        (if (and *ambiguous-variables* (not *subcat-test*))
            (let ( pats )
              (loop for pat in subcat-patterns
                    ;;as scr = (subcat-restriction pat)
                    do (when (eq label (subcat-label pat))
                         (when (satisfies-subcat-restriction? item pat)
                           (push pat pats))))
              (setq over-ridden (check-overridden-vars pats item head))
              (setq pats (loop for p in pats unless (member p over-ridden) collect p))
              (setq variable (variable-from-pats item head label pats subcat-patterns)))
            
            (dolist (entry subcat-patterns)
              (when (eq label (subcat-label entry))
                (cond ((satisfies-subcat-restriction? item entry)
                       (setq variable (subcat-variable entry))
                       (return))
                      (t (tr :failed-subcat-restriction item entry))))))
        
        (when (and *ambiguous-variables* (consp variable))
          (setq variable
                (if over-ridden
                    (cond
                      ((or (equal '(agent object)
                                  (mapcar #'var-name variable))
                           (equal '(object agent)
                                  (mapcar #'var-name variable)))
                       (loop for v in variable
                             when (eq 'object (var-name v))
                             do (return v)))
                      (t
                       (announce-over-ridden-ambiguities item head label variable)
                       (define-disjunctive-lambda-variable variable category)))
                    ;; else
                    (define-disjunctive-lambda-variable variable category))))
        
        (when (and variable *subcat-use* (not *subcat-test*))
          (record-subcat-use label (itype-of head) variable item))
        
        variable ))))


(defun find-subcat-labels (item var head)
  "Return the syntactic labels associated with a variable bound to an item."
  (loop with subcat-patterns = (known-subcategorization? head)
        for pattern in subcat-patterns
        when (and (if (disjunctive-lambda-variable-p var)
                    (memq (subcat-variable pattern) (dvar-variables var))
                    (eq (subcat-variable pattern) var))
                  (satisfies-subcat-restriction? item pattern))
        collect (subcat-label pattern)))

(defun find-subcat-vars (label cat)
  (loop for pat in (subcat-patterns cat)
        when (eq label (subcat-label pat))
        collect (subcat-variable pat)))

(defun find-object-vars (cat)
  (when (not (word-p cat)) ;; bad morphology for "widening" and others
    (and (not (intransitive? cat))
         (find-subcat-vars :object cat))))

(defun find-subject-vars (cat)
  (when (not (word-p cat)) ;; bad morphology for "widening" and others
    (find-subcat-vars :subject cat)))

(defun binds-var-p (i var)
  (loop for b in (and (individual-p i) (indiv-binds i))
        as v = (binding-variable b)
        when (if (disjunctive-lambda-variable-p v)
               (memq var (dvar-variables v))
               (eq var v))
        return b))

(defun binds-some-var-p (i vars)
  (loop for v in vars as b = (binds-var-p i v)
        when b return (binding-variable b)))

(defun bound-object-var (i)
  (binds-some-var-p i (find-object-vars i)))

(defun bound-subject-var (i)
  (binds-some-var-p i (find-subject-vars i)))

(defun binds-no-vars-p (i vars)
  (and vars (not (binds-some-var-p i vars))))

(defun missing-object-vars (i)
  (cond
    ((itypep i 'control-verb)
     (and (binds-no-vars-p i (find-object-vars i)) ;; patient
         (binds-no-vars-p i (find-subcat-vars :to-comp i))))
    (t
     (and (not (get-tag :optional-object (itype-of i)))
          (binds-no-vars-p i (find-object-vars i))))))

(defun missing-subject-vars (i)
  (binds-no-vars-p i (find-subject-vars i)))


;;;----------------------------------------
;;; subcategorization checks and reporting
;;;----------------------------------------

(defparameter *show-over-ridden-ambiguities* nil)
(defparameter *trivial-subcat-test* nil)
(defparameter *tight-subcats* nil)
(defparameter *dups* nil)

(defun show-ambiguities ()
  (setq *ambiguous-variables* (list nil))
  (compare-to-snapshots)
  (display-subcat-ambiguities))

(defun display-subcat-ambiguities ()
  (np (setq *dups*
            (sort *ambiguous-variables* #'string<
                  :key #'(lambda(x)(if (individual-p (car x))(cat-name (itype-of (car x))) "")))))
  (loop for pat in
       (sort
	(loop for pat in 
	     (remove-duplicates (loop for x in *dups* collect (list (second x)(fifth x))) :test #'equal)
	   collect pat)
	#'string<
	:key
	#'(lambda (p)
	    (let ((key (car p)))
	      (etypecase key
		(word (word-pname key))
		(polyword (pw-pname key))
		(symbol key)))))
     do (terpri)(print pat)))

(defun announce-over-ridden-ambiguities (item head label variable)
  (when *show-over-ridden-ambiguities*
    (format t "~%over-ridden ambiguity now preserved~
               ~%  ambiguous subcats for attaching ~s to ~s ~
                 with ~s:~%  ~s~%   ~s~%"
            item head label variable (current-string))))

(defun variable-from-pats (item head label pats subcat-patterns)
  (declare (special category::number))
  (when (and (not (itypep item 'pronoun))
             (not (itypep item 'requires-context));; new, for "those", "these"
             (loop for pat in pats
                   thereis
                     (not (consp (subcat-restriction pat)))))
      (setq pats
            (loop for pat in pats
                  when
                    (not (consp (subcat-restriction pat)))
                    collect pat)))
      
  (let ( variable )
    (cond
      ((cdr pats)
       (setq variable (mapcar #'subcat-variable pats))
       (if (and (not (symbolp item))
                (itypep item category::number))
           (setq variable (car variable))
           ;; these are mostly bad parses with a dangling number -- we should collect them
           (push (list head label item
                       (current-string)
                       (loop for pat in pats collect
                            (list (subcat-variable pat)(subcat-source pat))))
                 *ambiguous-variables*)))
      (pats
       (setq variable (subcat-variable (car pats)))))
    (when *trivial-subcat-test* 
      (unless variable
        (dolist (entry subcat-patterns)
            (when (eq label (subcat-label entry))
              (when (satisfies-subcat-restriction? item entry)
                (setq variable (subcat-variable entry))
                (return))))))
    variable))



(defun check-overridden-vars (pats item head)
  ;; remove code for doing an immediate over-ride of premodifiers that
  ;;  are ambiguous between agent and object -- this is now done ONLY when
  ;;  the ambiguity is still present when the individual becomes a maximal
  ;;  projection -- i.e. it is bound to a variable inside another individual
  ;;  See code in bind-dli-variable
  (let (over-ridden)
    (loop for pat in pats
          do
            (loop for p in pats
                  when
                    (and (not (eq (subcat-restriction p) (subcat-restriction pat)))
                         (not (consp (subcat-restriction p)))
                         (if (consp (subcat-restriction pat))
                             (loop for i in (cdr (subcat-restriction pat))
                                   thereis (itypep i (subcat-restriction p)))
                             (itypep (subcat-restriction pat) (subcat-restriction p))))
                  do (push p over-ridden)))
    over-ridden))

(defun note-failed-tests (item restriction)
  ;; return non-null when tests failed
  (declare (special *left-edge-into-reference* *right-edge-into-reference*))
  (let ((*trivial-subcat-test* nil))
    (labels ((scat-symbol (c)
               (typecase c
                 (referential-category (simple-label c))
                 (cons (loop for s in c collect (scat-symbol s)))
                 (symbol c))))
      (when (not (satisfies-subcat-restriction? item restriction))
        ;; test would have failed -- collect it
        (pushnew `(,(scat-symbol (itype-of *head*))
                    ,*label*
                    ,(scat-symbol restriction)
                    ,(scat-symbol (itype-of item))
                    ,(list 
                      (when *left-edge-into-reference*
                        (actual-characters-of-word
                         (pos-edge-starts-at *left-edge-into-reference*)
                         (pos-edge-ends-at *left-edge-into-reference*)))
                      (when *right-edge-into-reference*
                        (actual-characters-of-word
                         (pos-edge-starts-at *right-edge-into-reference*)
                         (pos-edge-ends-at *right-edge-into-reference*)))))
                 *tight-subcats*
                 :test #'equal)))))
    
  
(defparameter *subcat-use*   nil ;;(make-hash-table :size 2000)
  )

(defparameter *record-subcat-types* t)

(defun record-subcats (&optional record-subcat-types)
  (if *subcat-use* (clrhash *subcat-use*)
      (setq *subcat-use* (make-hash-table :size 2000)))
  (setq *record-subcat-types* record-subcat-types))

(defun arg-type (arg)
  (etypecase arg
    (referential-category (itype-of arg))
    (individual (itype-of arg))
    (string 'string)
    (number 'number)
    (word 'word)
    (polyword 'word)
    (cons 'cons)
    (null 'null)))
    

(defun record-subcat-use (l category variable item)
  (let* ((label
          (if *record-subcat-types*
              (arg-type item)
              (pname l)))
         (c-name (cat-name category))
         (v-name (var-name variable))
         (var-alist (or
                     (assoc v-name (gethash category *subcat-use*) :test #'equalp)
                     (car (push (list v-name (list label 0))
                                (gethash category *subcat-use*)))))
         (l-val (assoc label (cdr var-alist) :test #'equal)))
    (declare (special label l-val))
    (if l-val
        (incf (second l-val))       
        (nconc var-alist (list (list label 1))))))

(defun show-subcat-use (&optional filter-cat)
  (let ((hh (hal *subcat-use*)))
    (loop for h in hh
       do
         (setf (cdr h)
               (sort (cdr h) #'string< :key #'car)))
    (np (sort (loop for h in hh
                 when (or (not filter-cat)
                          (itypep (car h) filter-cat))
                 collect h)
              #'string< :key #'(lambda (s)(cat-name (car s)))))))

;;;-----------------
;;; debugging tools
;;;-----------------

(defun applicable-sc-patterns (head label)
  "From the subcategization of the head individual return the patterns
   that are for this label"
  (let ((category (itype-of head))
        (subcat-patterns (known-subcategorization? head)))
    (if (null subcat-patterns)
      (format nil "~a has no subcategorizations" head)
      (sc-pat-matching-label label subcat-patterns))))
      
(defun sc-pat-matching-label (label subcat-patterns)
  "Given a label and a list of subcategorization patterns, return the
   patterns that go with that label. Good for feeding alternative
   list of patterns directly."
  (let ((matched (loop for pat in subcat-patterns
                    when (eq label (subcat-label pat))
                    collect pat)))
    matched))

(defun satisfies-sc-pattern (pat label item)
  "Assuming this pattern (pat) goet with this label, does this item
   pass its value restriction?"
  (when (eq label (subcat-label pat))
    (when (satisfies-subcat-restriction? item pat)
      (subcat-variable pat))))

(defun assess-possible-subcat-options (head label item)
  "For debugging the simple case. Looks at each subcategorization pattern
   on this head for this label, and reports whether the variable restrictions
   are met."
  (let ((subcat-patterns (known-subcategorization? head)))
    (if (null subcat-patterns)
      (format t "~&~a has no subcategorization patterns" head)
      (let ((matched-patterns (applicable-sc-patterns head label)))
        (if (null matched-patterns)
          (format t "~&~a does not subcategorize for ~a" head label)
          (dolist (pat matched-patterns)
            (if (satisfies-subcat-restriction? item pat)
              (format t "~&~a satisfied v/r on ~a"
                      item (subcat-variable pat))
              (format t "~&~a did not fit v/r on ~a:~%  ~a"
                      item (subcat-variable pat) (subcat-restriction pat)))))))))
