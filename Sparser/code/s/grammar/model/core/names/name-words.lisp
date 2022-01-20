;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013-2021  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "name words"
;;;   Module:  "model;core:names:"
;;;  version:  September 2021

;; [object] initiated 5/28/93 v2.3
;; 0.1 (12/30) allowed the case of the name-word maker being passes an already
;;      converted name-word instead of a word
;; 0.2 (1/7/94) grossly simplified the indexing
;;     (1/31) added special print routine for name-words
;;     (4/5) added Name-word-for-word
;; 0.3 (10/3) redid the indexing of name-words. 10/12 added flag around the data checks
;; 0.4 (4/19/95) reworked name-word creation to use the actual uppercase instance
;;      rather than the lc-word it gets passed
;; [name word] broken out as its own file 4/20 as part of changing the design
;; to make these objects permanent
;;     (4/30) added sort routine, added another keyword to ../silent
;;     (5/22) added Make-name-word-silent
;;     (9/13) added sort routine
;; 0.5 (1/1/96) hacked the name-word creating routines to work with edges that
;;      span more than one word.
;;     (5/30/99) fixed format glitch in  Some-name-element-is-new?.
;; 0.6 (3/15/05) Sorted out issue ther about ordinals vs. positions in sequences.
;;     (1/6/07) +apple'd call to define-sort-function 3/8 added define-name-word.
;;     (8/29/09) Fixed some odd capitalizations.
;; 0.7 (2/13/13) Added a name-of variable to name word to allow acronyms to
;;      link to what they name since they're not one of the words in the
;;      original name, plus operations to manage that. 6/10/13 Got a polyword
;;      as a name-word, so generalized the predicates plist functions.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  name-word
  :instantiates name
  :specializes  name
  :binds ((name :primitive word)
          (name-of collection)) ;; the named-objects it names
  :index (:permanent :apply
          :special-case
          ;; needed because these are extensively cross-linked to the
          ;; words involved, and those links have to be taken off by hand
          :find find/name-word
          :index index/name-word
          :reclaim reclaim/name-word))


;;;---------------------
;;; indexing name words
;;;---------------------

(defun find/name-word (name-word-category binding-instructions)
  (let ((word (value-of-instr 'name binding-instructions))
        (table (cat-instances name-word-category)))
    (when table
      (gethash word table))))

(note-permanence-of-categorys-individuals
 ;; otherwise the hash-table could be reaped
 (category-named 'name-word))

;; For debugging
;(setf (cat-instances (category-named 'name-word)) nil)

(defun index/name-word (nw name-word-category bindings)
  (let ((word (value-of/binding 'name bindings name-word-category))
        (table (cat-instances name-word-category)))
    (unless word
      (break "no word binding supplied with definition"))
    (unless (or (word-p word)
                (polyword-p word))
      (break "The object bound to 'name' should be a 'word'~
              ~%but is isn't:  ~A" word))
    (unless table
      (setq table (setf (cat-instances name-word-category)
                        (make-hash-table))))
    (setf (gethash word table) nw)))


(defun reclaim/name-word (nw table name-word-category)
  (declare (ignore name-word-category)
           (special *break-on-pattern-outside-coverage?*))
  (unless (permanent-individual? nw)
    (let ((word (value-of 'name nw))
          (cfr (get-tag :rule nw)))
      (block delete-nw-cfr
        (unless cfr
          (when *break-on-pattern-outside-coverage?*
            (break "Data check: no cfr listed with the name word~
              ~%  ~A~%" nw))
          (return-from delete-nw-cfr))
        (unless (cfr-p cfr)
          (when *break-on-pattern-outside-coverage?*
            (break "Object listed as the cfr for ~A~%isn't: ~A" nw cfr))
          (return-from delete-nw-cfr))
        (delete/cfr cfr))

      (remove-tag :name-word word)
      (remhash word table)
      nw)))


;;;--------------------
;;; linking -- name-of
;;;--------------------

#| The name-of variable, which was designed to link a name-word to
 a collection of all the names it is part of, is problematic when
 we are using the description-lattice to manage individuals.
   This is because the lattice mechanics arrange that every new binding
 creates a new, more specific, individual. This is at odds with the
 original design where individuals were rigid. 

 I'm emulating the effect of the name-of variable by using a function
 of the same name that's based on a table. The table has to be managed,
 which right now (9/15/21) is still being worked out.
|#

(defparameter *nw-to-names* (make-hash-table)) ;/// size?

(defun name-of (nw)
  "Return the probably single object that this nw has been linked to.
   If more than one link has been made return the whole list"
  (let ((value (gethash nw *nw-to-names*)))
    (when value
      (cond
        ((itypep value 'collection)
         (let ((items (value-of 'items value)))
           (if (null (cdr items)) ; just one
             (car items)
             items))) ; caller could get a list
        ((itypep value 'name)
         value)
        ((itypep value 'named-object) ; e.g. company
         value)
        ((itypep value 'person)
         value)
        ((itypep value 'company)
         value)
        (t (break "name-of  value= ~a~%    of new type ~a" value (itype-of value)))))))

(defun set-name-of (nw item &optional type)
  "Record that the name-word 'nw' is part of the name 'name'.
   Applies generally to link short form names such as company acronyms
   to their full form"
  (let ((prior-value (gethash nw *nw-to-names*)))
    (if prior-value
      (if (eq prior-value item)
        item
        (else ;; make a collection -  nw 'books' in #1
          (let* ((items (list item prior-value))
                 (c (define-collection items (itype-of item))))
            (setf (gethash nw *nw-to-names*) c))))
      (else ; first time
        (setf (gethash nw *nw-to-names*) item)))))


;;;--------------
;;; sort routine
;;;--------------

(defun sort-lists-of-name-items (l1 l2)
  ;; called from Sort-individuals-by-their-name.
  ;; The two lists are the same length.
  (mapc #'(lambda (item1 item2)
            (unless (eq item1 item2)
              (return-from sort-lists-of-name-items
                (sort-name-items item1 item2))))
        l1 l2))

(defun sort-name-items (item1 item2)
  ;; This sorts the things that can appear in the list of a
  ;; 'sequence' binding of some #<name>.
  (if (and (name-word? item1)
           (name-word? item2))
    (string< (word-pname (value-of 'name item1))
             (word-pname (value-of 'name item2)))

    (let ((name1 (value-of 'name item1))
          (name2 (value-of 'name item2)))

      (if (and name1 name2)
        (sort-names name1 name2)
        t ))))

(defun sort-names (n1 n2)
  ;; this sorts things that can appear in the 'name' binding
  ;; of some individual.
  (if (and (word-p n1)
           (word-p n2))
    (string> (word-pname n1) (word-pname n2))
    t ))
     

#+apple (define-sort-function 'name-word 'sort-name-words)

(defun sort-name-words (nw1 nw2)
  (let ((s1 (word-pname (value-of 'name nw1)))
        (s2 (word-pname (value-of 'name nw2))))
    (string< s1 s2)))


;;;------------
;;; predicates
;;;------------

(defun name-word? (obj)
  (and (individual-p obj)
       (eq category::name-word (car (indiv-type obj)))))

(defun name-word-for-word (word)
  (get-tag :name-word word))


(defun only-known-as-a-name (word)
  ;; Called from Examine-capitalized-sequence when we're about to
  ;; fall through the known cases of words
  ;; /// this depends on a systematic appreciation of how words can be
  ;; bound, which has yet to be developed. It's been initiated to
  ;; handle "Alexander & Alexander"
  (let ((plist (plist-for word))) ;; if it's not first there are other properties
    (eq (first plist) :name-word)))


(defun name-words-for/silent (list-of-words)
  (let ( name-words  name-word  )
    (dolist (word list-of-words)
      (setq name-word (name-word-for-word word))
      (push (or name-word
                (make-name-word-for/silent word))
            name-words))
    (nreverse name-words)))



;;;-------------------
;;; making name-words
;;;-------------------

(defun make-name-word-for-unknown-word-in-name (lc-word
                                                &optional position)
  ;; called from Examine-capitalized-sequence when the word is part
  ;; of a capitalized sequence and hasn't already been defined as
  ;; a name word and thence been spanned by an edge
  (declare (special *lc-person-words*))

  (unless (word-p lc-word)
    (if (and (individual-p lc-word)
             (itypep lc-word 'name-word))
      ;; it was already converted
      (return-from make-name-word-for-unknown-word-in-name lc-word)
      (break "Threading bug: should have been passed a word but ~
              got:~%  ~A~%which is a ~A" lc-word (type-of lc-word))))
  (unless position
    (break "New caller -- see if it can be modified to also pass ~
            in the position~%where the word occurred."))

  (let* ((actual-word (or (car (memq lc-word *lc-person-words*))
                          (find-or-make/capitalized-word-to-fit-position
                           lc-word position)))
         (name
          (define-individual category::name-word
            :name actual-word)))

    (let ((rule (define-cfr category::name-word
                            (list actual-word)
                  :form category::proper-noun
                  :referent name )))
      (setf (get-tag :rule name) rule
            (get-tag :name-word lc-word) name
            (get-tag :name-word actual-word) name)
      name )))


(defun define-name-word (word)
  (let* ((nw (define-individual category::name-word
		:name word))
	 (rule (define-cfr category::name-word (list word)
                  :form category::proper-noun
                  :referent nw )))
    (setf (get-tag :rule nw) rule
          (get-tag :name-word word) nw)
    nw))


(defgeneric define-name-word/actual (word)
  (:documentation "Find or make a name-word for the specific
    capitalization in this word, which the caller has worked out.
    Only makes the individual, not the potentially associated rule.")
  (:method ((pname string))
    (let ((word (resolve/make pname)))
      (when (polyword-p word)
        (error "This function is only for words.~%The string ~a ~
                returned a polyword" pname))
      (define-name-word/actual word)))
  (:method ((w word))
    (or (get-tag :name-word w)
        (let ((nw (define-individual category::name-word
                      :name w)))
          (setf (get-tag :name-word w) nw)))))


(defun make-name-word-silent (nw)
  ;; called by any routine that wants to flush the cfr for the nw
  ;; because it is going to supplant it with its own.
  (let ((cfr (get-tag :rule nw)))
    (delete/cfr cfr)
    (remove-tag :rule nw)
    (let ((word (value-of 'name nw)))
      (when (trivial-rule-set (rule-set-for word))
        (remove-rule-set-from word))
      nw )))


(defun make-name-word-for/silent (lc-word
                                  &optional position
                                  &key use-lowercase-word
                                       string-is-uppercase )

  ;; makes the object but not the cfr. This is needed when
  ;; we need the name-word in order to manipulate the word
  ;; in certain ways, but the actual parsing of the word is
  ;; going to be handled by other rules. E.g. "bank"
  
  (unless (or use-lowercase-word     ;; e.g. "of" or "&"
              string-is-uppercase )  ;; e.g. part of the definition
                                     ;; of a model type
    (unless position
      (break "New caller -- see if it can be modified to also pass ~
              in the position~%where the word occurred.")))

  (let* ((actual-word 
          (cond (use-lowercase-word
                 lc-word)
                (string-is-uppercase
                 lc-word )
                (t 
                 (find-or-make/capitalized-word-to-fit-position
                  lc-word position))))

         (name (define-individual category::name-word
                 :name actual-word)))

    (setf (get-tag :name-word lc-word) name)
    (unless use-lowercase-word
      (setf (get-tag :name-word actual-word) name))
    name ))


(defun find/make-silent-nw-for-word-under-edge (edge)
  "Called from categorize-and-form-name when it has an uncategorized
   name that includes a known category (the 'other' case). This makes
   a name-word object for what might otherwise be a normal word
   (e.g. the 'ball' in 'George K. Ball')"
  (if (one-word-long? edge)
    (let* ((daughter (edge-left-daughter edge)) ; "Market News Publishing Inc."
           (word (typecase daughter
                   (word daughter)
                   (edge (find-word-under daughter)))))
      (if (memq word *lc-person-words*)
        (make-name-word-for/silent word (pos-edge-starts-at edge)
                                   :use-lowercase-word t)
        (else
          (or (name-word-for-word word)
              (make-name-word-for/silent word (pos-edge-starts-at edge))))))

    ;; more than one word (e.g. "Per Share")
    (let* ((pw-string (polyword-multiword-string-for-list-of-words
                       (words-between (pos-edge-starts-at edge)
                                      (pos-edge-ends-at edge))))
           (word (or (resolve pw-string)
                     ;; Regular resolve/make would create a polyword
                     (define-word/expr pw-string)))) ;; "of Gwynedd"
      (typecase word
        (word
         (or (name-word-for-word word)
             (make-name-word-for/silent word (pos-edge-starts-at edge))))
        (otherwise
         (when *debug-pnf*
           (push-debug `(,edge ,pw-string))
           (break "How do we make a name-word for a polyword?")))))))





;;;---------------------------------------------
;;; Operations and predicates for dereferencing
;;;---------------------------------------------

(defun some-name-element-is-new? (name)
  ;; Called from Establish-referent-of-PN when it is passed an
  ;; uncategorized name. If the name is new then it wants to just
  ;; pass it back as the referent of the edge being built, otherwise
  ;; the assumption is that it may be possible to establish its
  ;; referent from the discourse history and a search is undertaken.
  ;;    An uncategorized name is represented as a sequence of
  ;; name elements. These elements are almost certainly all just
  ;; name words, otherwise we would have likely had some internal
  ;; evidence that we could have used and we wouldn't be in this
  ;; situation.
  (let* ((sequence (value-of 'name/s name))
         (name-items (value-of 'items sequence))
         names )

    (dolist (item name-items  nil)
      (when (individual-p item)
        (when (itypep item 'name-word)
          (setq names (names-including-name-word item))

          (when (null names)
            (break "Data construction bug: The name element ~
                    ~%     ~A~
                    ~%is part of the sequence of items in the name ~
                    ~%     ~A~
                    ~%but that is not recorded."
                   item name ))

          ;; A name element is new if it only ever occurs in the
          ;; uncategorized name that we've been passed in.
          ;; Of course, this may be a subsequent reference to 
          ;; that name, but then we still want the same operational
          ;; behavior by Establish-referent-of-PN, so we'll still
          ;; return t.
          (when (null (cdr names))  ;; there's only one
            (when (eq (car names) name)
              (return-from some-name-element-is-new? t))))))))


(defun names-including-name-word (nw)
  ;; Retrieve a list of all the names, regardless of their type,
  ;; that include this name-word.
  (let ((bindings
         (bound-in nw :super-category 'position-in-a-sequence
                   :all t))
        names  sequence name-bindings )

    (dolist (b bindings)
      (setq sequence (value-of 'sequence (binding-body b)))
      (setq name-bindings
            (bound-in sequence :super-category 'name
                      :all t))
      (dolist (nb name-bindings)
        (push (binding-body nb) names)))

    (nreverse names)))


