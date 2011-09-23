;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "name words"
;;;   Module:  "model;core:names:"
;;;  version:  0.6 March 2005

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

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  name-word
  :instantiates name
  :specializes  name
  :binds ((name :primitive word))
  :index (:permanent
          :special-case
          ;; needed because these are extensively cross-linked to the
          ;; words involved, and those links have to be taken off by hand
          :find find/name-word
          :index index/name-word
          :reclaim reclaim/name-word))



;;--- sort routine

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
     




;;;------------
;;; predicates
;;;------------

(defun name-word? (obj)
  (and (individual-p obj)
       (eq category::name-word (car (indiv-type obj)))))

(defun name-word-for-word (word)
  (cadr (member :name-word (unit-plist word) :test #'eq)))


(defun only-known-as-a-name (word)
  ;; Called from Examine-capitalized-sequence when we're about to
  ;; fall through the known cases of words
  ;; /// this depends on a systematic appreciation of how words can be
  ;; bound, which has yet to be developed. It's been initiated to
  ;; handle "Alexander & Alexander"
  (let ((plist (unit-plist word)))
    (eq (first plist) :name-word)))


(defun name-words-for/silent (list-of-words)
  (let ( name-words  name-word  )
    (dolist (word list-of-words)
      (setq name-word (name-word-for-word word))
      (push (or name-word
                (make-name-word-for/silent word))
            name-words))
    (nreverse name-words)))


#+apple (define-sort-function 'name-word 'sort-name-words)
;; 1/6/07 didn't confirm that this is a MCL-specific routine

(defun sort-name-words (nw1 nw2)
  (let ((s1 (word-pname (value-of 'name nw1)))
        (s2 (word-pname (value-of 'name nw2))))
    (string< s1 s2)))


;;;---------
;;; drivers
;;;---------

(defun make-name-word-for-unknown-word-in-name (lc-word
                                                &optional position)

  ;; called from Examine-capitalized-sequence when the word is part
  ;; of a capitalized sequence and hasn't already been defined as
  ;; a name word and thence been spanned by an edge

  (unless (word-p lc-word)
    (if (and (individual-p lc-word)
             (indiv-typep lc-word 'name-word))
      ;; it was already converted
      (return-from make-name-word-for-unknown-word-in-name lc-word)
      (break "Threading bug: should have been passed a word but ~
              got:~%  ~A~%which is a ~A" lc-word (type-of lc-word))))

  (unless position
    (break "New caller -- see if it can be modified to also pass ~
            in the position~%where the word occurred."))


  (let* ((actual-word (find-or-make/capitalized-word-to-fit-position
                       lc-word position))
         (name
          (define-individual category::name-word
            :name actual-word)))

    (let ((rule (define-cfr category::name-word
                            (list actual-word)
                  :form category::proper-noun
                  :referent name )))

      (setf (unit-plist name)
            `(:rule ,rule ,@(unit-plist name)))
      (setf (unit-plist lc-word)
            `(:name-word ,name ,@(unit-plist lc-word)))
      (setf (unit-plist actual-word)
            `(:name-word ,name ,@(unit-plist actual-word)))
      name )))

(defun define-name-word (word)
  (let* ((nw (define-individual category::name-word
		:name word))
	 (rule (define-cfr category::name-word (list word)
                  :form category::proper-noun
                  :referent nw )))
    (setf (unit-plist nw)
	  `(:rule ,rule ,@(unit-plist nw)))
    (setf (unit-plist word)
            `(:name-word ,nw ,@(unit-plist word)))
    nw))


(defun make-name-word-silent (nw)
  ;; called by any routine that wants to flush the cfr for the nw
  ;; because it is going to supplant it with its own.
  (let ((cfr (get-tag-for :rule nw)))
    (delete/cfr cfr)
    (remove-property-from nw :rule)
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

    (setf (unit-plist lc-word)
          `(:name-word ,name ,@(unit-plist lc-word)))
    (unless use-lowercase-word
      (setf (unit-plist actual-word)
            `(:name-word ,name ,@(unit-plist actual-word))))
    name ))



(defun find/make-silent-nw-for-word-under-edge (edge)
  ;; called from Referents-of-list-of-edges when the referent of the
  ;; edge is a category.  Assuming that this edge covers only one
  ;; word (////) then we look up that word and find/make a silent
  ;; nw for it.
  (if (eq (pos-edge-ends-at edge)
          (chart-position-after (pos-edge-starts-at edge)))

    (let ((word (edge-left-daughter edge)))
      (or (name-word-for-word word)
          (make-name-word-for/silent word (pos-edge-starts-at edge))))

    ;; the edge spans more than one word (e.g. "Per Share")
    (let* ((word-list (words-between (pos-edge-starts-at edge)
                                     (pos-edge-ends-at edge)))
           (string (polyword-multiword-string-for-list-of-words word-list))
           (word (define-word/expr string)))
      (or (name-word-for-word word)
          (make-name-word-for/silent word (pos-edge-starts-at edge))))))





;;;---------------------
;;; indexing name words
;;;---------------------

(defun find/name-word (name-word-category binding-instructions)
  (let ((word (value-of-instr 'name binding-instructions))
        (table (cat-instances name-word-category)))
    (when table
      (gethash word table))))


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
  (let* ((word (value-of 'name nw))
         (nw-plist (unit-plist nw))
         (cfr (cadr (member :rule nw-plist))))

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

    (when (get-tag-for :name-word word)
      (remove-property-from word :name-word))

    (remhash word table)
    nw ))




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




;;;-------
;;; stubs
;;;-------

(defun make-pw-for-name-elements (elements
                                  &key category referent)
  elements category referent
  (break "stub"))
