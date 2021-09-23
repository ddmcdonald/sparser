;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013-2021  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:names:"
;;;  version:  September 2021

;; initiated 5/28/93 v2.3. Broke name word routines out to their own file 4/20/95. 
;; 0.1 (5/2) added an explicit name-creator to hack "and".   5/12 remodularized
;;  the Find routine
;;  (9/13) added sort routine
;;  (2/4/05) Swapping in the new, psi-oriented, sequence functions. (3/14/05) let
;;  the simple version of Make/uncategorized-name go through. (7/5/07) removed a 
;;  break statement.
;;  (2/8/13) Added names built from no-space pattern. 2/13/13 Added a class
;;   for named-object. Could have been in upper-model, but didn't want
;;   a complication with the restriction of the name variable to name.
;;  (7/4/131) Marked named-object permanent. Put traces in its find/make functions
;;  (6/17/14) Folded in the has-name from C3. 
;;  (8/10/15) Moved it to kinds/upper-model since you can want it but
;;   not want the rest of the name machinery. Also moved name category for
;;   benefit of location. 


(in-package :sparser)

;; (trace-pnf)

;;;-----------------------------------------------
;;; common super-class for things that have names
;;;-----------------------------------------------

;; In Praxis, the NamedObject inherits from Thing (equivalent of
;; top here), and these have a Name (or several of them) which
;; inherits from Designator, which inherits from Information
;;   This is a mix-in class in my regular code
(define-category  named-object
  :instantiates :self
  :specializes endurant
  :binds ((name . name))
  :index (:permanent :apply :key name)) ;; instances field is now a table

(define-category name-component
  :instantiates nil
  :specializes name
  :documentation "Used for parts of names ('el', 'Ms.', 'junior')
    that don't stand by themselves and don't refer. They can frequently
    be separated from the rest of the name with it remaining recognizable")

;;--- find/make

(defun find/named-object-with-name (name)
  (let* ((table (cat-instances (category-named 'named-object)))
         (object (gethash name table)))
    ;; place for tests
    (if object
      (tr :found-named-obj-with-name name object)
      (tr :did-not-find-named-object-for-name name))
    object))

(defun make/named-object-with-name (name)
  (let ((i (define-individual 'named-object :name name)))
    (tr :made-named-object-with-name i name)
    i))

(defun disconnect-named-object (named-object name)
  ;; called from interpret-name-as-person
  ;; We want to remove the binding that links the
  ;; named-object to its name. The objects are permanent,
  ;; but the bindings are not. 
  (let ((b (binds-variable named-object 'name)))
    (unless b
      (push-debug `(,named-object ,name))
      (error "The name variable isn't bound on the NE we're disconnecting"))
    (let ((variable (binding-variable b))
          (value (binding-value b)))
      (unindex-binding b variable value)
      (remove-binding-from-binds-field b named-object)
      (remove-binding-from-bound-in-field b name)
      named-object)))
  

;;;-----------------------------------
;;; making names from diverse sources
;;;-----------------------------------

(defparameter *break-on-new-name-converter-cases* nil
  "Flag that makes convert-to-canonical-name-form always
   return something even in new cases it doesn't understand.")

(defun convert-to-canonical-name-form (raw-name)
  "Because they have different sources, a referent of an edge
 that denotes a name might be a real type of name, or it might
 be one of the constituents of a name such as a name word or more.
 This code tracks those cases and takes them all to
 an uncategorized-name object. ///Might want another argument
 to be more specific about the name's type and organization."
  ;; problem with ignoring the new cases is that it could blow
  ;; updownstream when the slot is bound and the type is wrong.
  (typecase raw-name
    (referential-category
     (when *break-on-new-name-converter-cases*
       (push-debug `(,raw-name))
       (break "Got a category rather than an individual"))
     raw-name)
    (individual
     (let ((category (itype-of raw-name)))
       (case (cat-symbol category)
         (category::uncategorized-name 
          raw-name) ;; already came in corrently
         (category::name-word
          (make-uncategorized-name-from-items `(,raw-name)))
         (otherwise
          (format t "~%~%New case for convert-to-canonical-~
                     name-form: ~a" raw-name)
          (when *break-on-new-name-converter-cases*
            (push-debug `(,raw-name))
            (break "new type of name"))
          raw-name))))
    (word
     (push-debug `(,raw-name))
     (break "raw-name is a word"))
    (cons
     (push-debug `(,raw-name))
     (break "raw-name is a cons"))
    (otherwise
     (push-debug `(,raw-name))
     (break "raw-name is of an unexpected type: ~a"
            (type-of raw-name)))))
     



;;;--------------
;;; sort routine
;;;--------------

(defun sort-individuals-by-their-name (i1 i2)
  (let ((name1 (value-of 'name i1))
        (name2 (value-of 'name i2)))

    (unless (and name1 name2)
      ;; the caller, Sort-individuals-alphabetically, has tested
      ;; that i1 has a name, so these both can't come up nil
      (return-from sort-individuals-by-their-name
        (cond (name1 t)
              (name2 nil))))

    (when (eq name1 name2)
      ;; wouldn't expect this to happen, but if we don't check for it
      ;; then the later stages will be harder to guarentee
      (return-from sort-individuals-by-their-name t))

    (cond
     ((and (individual-p name1) (individual-p name2))
      (if (and (itype name1 'name) (itype name2 'name))
        (let ((sequence1 (value-of 'sequence name1))
              (sequence2 (value-of 'sequence name2)))
          
          (unless (and sequence1 sequence2)
            (return-from sort-individuals-by-their-name
              (cond (sequence1 t)
                    (sequence2 nil)
                    (t nil))))
          
          (when (eq sequence1 sequence2)
            (return-from sort-individuals-by-their-name t))
          
          (let ((length1 (value-of 'number sequence1))
                (length2 (value-of 'number sequence2)))
            
            (cond
             ((> length1 length2) t)
             ((< length1 length2) nil)
             
             (t (let ((item-list1 (value-of 'items sequence1))
                      (item-list2 (value-of 'items sequence1)))
                  
                  (sort-lists-of-name-items item-list1
                                            item-list2))))))

        (sort-individuals-alphabetically name1 name2)))

     ;; two name-fields that aren't individuals
     ((and (word-p name1) (word-p name2))
      (string> (word-pname name1) (word-pname name2)))

     (t t))))
         



;;;--------------------------------------------------------
;;; unclassified names -- context should enrich them later
;;;--------------------------------------------------------

(define-category  uncategorized-name
  :instantiates name
  :specializes name
  :binds ((name/s sequence))
  :index (:permanent :special-case))


(defun make-uncategorized-name-from-items (items &key and )
  "Called from Categorize-and-form-name when there isn't enough
   internal evidence to make any judgement about the category.
   It returns the name object that it creates."
  (if and
    (make-collection-of-uncategorized-names items and)
    (or (find/uncategorized-name items)
        (make/uncategorized-name items))))



;;--- Capitalized sequences divided by "and"

(defun make-collection-of-uncategorized-names (items and-index)
  ;; The 'and' argument records the value of the item 'count'
  ;; at the point in the sequence when "and" was seen.
  ;; We split the items there and make two name objects, then
  ;; we package them into a collection and return it.
  (declare (special *pnf-scan-starts-here*))
  (let* ((2d-half (copy-list (nthcdr and-index items)))
         (1st-half (nreverse
                    (nthcdr (1+ (length 2d-half))
                            (nreverse items)))))
    (let ((1st-name
           (or (find/uncategorized-name 1st-half)
               (make/uncategorized-name 1st-half)))
          (2d-name
           (or (find/uncategorized-name 2d-half)
               (make/uncategorized-name 2d-half))))

       (if (comma-just-before-position? *pnf-scan-starts-here*)
         (pnf/check-if-conjunction-is-a-list
          1st-name 2d-name (category-named 'uncategorized-name))
        
         (let ((collection
                (define-individual 'collection
                  :items (list 1st-name 2d-name)
                  :number 2
                  :type (category-named 'uncategorized-name))))
           collection )))))


(defun collection-is-compound-name (collection)
  (let ((type (value-of 'type collection)))
    (if (eq 'named-object (cat-name type))
      t
      (else (when *debug-pnf*
              (break "is ~a a collection of names?" collection))
            nil))))


(defun convert-collection-of-names-to-single-name (compound-name)
  ;; This name was build by Make-collection-of-uncategorized-names
  ;; and now somebody has a rationale for seeing it as a single name.
  ;;   We remake it as an uncategorized name based on a sequence.

  (let ( all-items  item-sets  sequence )
    (dolist (element (reverse (value-of 'items compound-name)))
      (case (cat-symbol (itype-of element))

        (category::uncategorized-name
         (setq sequence (value-of 'name/s element))
         (push (value-of 'items sequence)
               item-sets))

        (otherwise
         (break "New case of the type of elements in a name based ~
               ~%on a collection.~
               ~%  element: ~A~
               ~%     name: ~A~%" element compound-name))))

    (if (= 2 (length item-sets))
      (then
        (setq all-items
              (append (first item-sets)
                      (cons (name-word-for-word word::|and|)
                            (second item-sets)))))
      (break "New case: converting a collection with more than 2 ~
              elements"))

    (make/uncategorized-name all-items)))
      



;;;---------------------------------------------
;;; indexing operations for uncategorized names
;;;---------------------------------------------

(defun make/uncategorized-name (list-of-name-words)
  "Make an unindexed uncategorized name, and bind its name/s
   variable to a sequence make from the list of name words.
   The link the individual name-word individuals directly
   to the name. We don't index the name per se since it can
   be recovered from the sequence or accessed from one of
   its name words"
  (let ((sequence (define-sequence list-of-name-words))
        (obj (make-unindexed-individual category::uncategorized-name)))
    (setq obj (bind-variable :name/s sequence obj))
    (tr :make-uncategorized-name obj sequence)
    (loop for nw in list-of-name-words
       do (set-name-of nw obj))
    obj))

    
(defun index/uncategorized-name (name-obj name-word-sequence)
  ;; it's a no-op since we can recover the name object directly
  ;; from the name-word-sequence since the sequence is bound-in
  ;; the name/s variable of the name object --> all the work
  ;; can be done in find/uncategorized-name.
  (declare (ignore name-obj name-word-sequence))
  :no-op )


(defun find/uncategorized-name (list-of-name-words)
  ;; called from a name-creator. The sequence of name words
  ;; has to exist, and then it has to have been bound as the
  ;; name/s of some uncategorized-name
  (let ((sequence (find-sequence list-of-name-words)))
    (if sequence
      (let ((i (name-based-on-sequence/uncategorized sequence)))
        (if i
          (tr :found-uncategoried-name i sequence)
          (tr :no-uncategorized-name-for sequence))
        i)
      (else
       (tr :no-sequence-for-nws list-of-name-words)
       nil))))

(defun disconnect-uncategorized-name (name)
  ;; called from interpret-name-as-person
  ;; We want names to be permanent, and it's a complicated matter
  ;; to reclaim them. We can, however, remove the binding
  ;; that links the sequence to the name so it can't be followed
  ;; up when we have the sequence in hand later.
  (let ((binding (binding-of-individual 'name/s name)))
    (unless binding
      (push-debug `(,name))
      (error "Expected a name/s binding on ~a" name))
    (unindex/binding binding)))

(defun name-based-on-sequence/uncategorized (seq)
  "Called from functions that have the sequence and want any associated names:
   names-based-on-sequence, find/uncategorized-name find/person-name"
  (let ((links-to-name-objects
         (all-bindings-such-that
          (indiv-bound-in seq)
          :variable-is (variable/category 'name/s
                                          'uncategorized-name))))
    (when links-to-name-objects
      (if (null (cdr links-to-name-objects))
        (let ((name (binding-body (car links-to-name-objects))))
          name )
        (else
          (when *debug-pnf*
            (break "The sequence ~A~%is part of more than one ~
                    uncategorized name:~%~A"
                   seq links-to-name-objects))
          (binding-body (car links-to-name-objects)))))))



;;;-----------------------------------------------------
;;; Uncategorized names created from no-space sequences
;;;-----------------------------------------------------
#|
   These are for names that are read-out letter (number) by letter
when you say them. In other respects they are normal, sequence-based
names. Protypical examples are H5N1 (virus) or M1A1 (Abrams tank).
Those do not have corresponding spelled out forms, as compared with
a reasonable subtype of this category -- Acronyms -- such as ACLU or
WHO. Given issues in the no-space handler we can also get here
with sequences we'd prefer that PNF handled directly.
|#

;; Use-case in analysers/psp/patterns/uniform-scan.lisp
;; for e.g. H5N1
(define-category spelled-name
  :instantiates name
  :specializes uncategorized-name
  :binds ((name/s sequence))
  :index (:special-case))


(defparameter *announce-new-spelled-names* nil
  "Useful to turn this on some times to see what's being turned up
   since there may be more patterns we can be systematic about")


(defun reify-spelled-name (pos-before pos-after)
  "Presently only called from reify-ns-name-and-make-edge when no specific
   pattern has been found for this set of tokens (and we're -not- in big-
   mechanism mode which has a comparable call).
   For any name we need a sequence of name-words. Spelled names will always
   have no spaces between the words so we use the polyword machinery to
   get words with the correct capitalization. 
      There are some pathological cases that the no-space machinery
   gets (e.g. 'Wise Men's/King') where a smarter ns handler would have
   rejected the sequence and deliberated, but instead we end up here.
   This example involves treetop edge over 'Wise Men's' that was created by
   PNF and yields a polyword. This function operates at the word level
   so it misses the polyword (or any other sort of multi-word edge).
   We look for evidence that a polyword is involved."
  (let* ((words (words-between pos-before pos-after))
         (string (extract-characters-between-positions pos-before pos-after)))

    (when (position #\space string) ;; hit a polyword
      ;; The catch is in collect-no-space-segment-into-word
      (throw :punt-on-nospace-without-resolution nil))

    (cond
      ((string-is-probably-partial-url string)
       (probably-partial-url string))
      ((eq #\# (aref string 0))
       (probably-a-hashtag string))
      (t
        (let* ((pnames (actual-strings-for-list-of-words words string))
               (name-words (loop for p in pnames
                              collect (define-name-word/actual p))))
          ;;(push-debug `(,words ,string ,pnames ,name-words))
          (when *announce-new-spelled-names*
            (format t "~&Spelled-name reifying ~s" string))
    
          (let ((sequence (define-sequence name-words))
                (name (make-unindexed-individual category::spelled-name)))
            (setq name (bind-variable :name/s sequence name category::spelled-name))

            ;; This part is taken from make/uncategorized-name
            ;; Return value designed to feed edge creation in 
            ;; reify-ns-name-and-make-edge
            (let* ((polyword (resolve/make string))
                   (concatenated-name (intern string *category-package*))
                   (category (find-or-make-category-object
                              concatenated-name :referential))
                   (proper? (capitalized-instance pos-before))
                   (rule (define-cfr category `(,polyword)
                           :form (if proper?
                                   category::proper-name
                                   category::common-noun)
                           :referent name
                           ;; If we include a :source we can assign it
                           ;; to a particular grammar module, but default
                           ;; is ok.
                           :schema (if proper?
                                     (get-schematic-word-rule :proper-noun)
                                     (get-schematic-word-rule :common-noun)))))
              (values category rule name))))))))


(defun actual-strings-for-list-of-words (words string)
  "Return a list of substring of the string, one for each word"
  ;; This assumes simple words with no odd characters.
  ;; If words = (#<word "wise"> #<word "men"> #<word SINGLE-QUOTE> #<word "s"> #<word FORWARD-SLASH> #<word "kings">)
  ;; on the string "Wise Men's/Kings "
  ;; the result is ("Wise" " Me" "n" "'" "s" "/King")
  (let ((start 0)
        (pnames nil))
    (dolist (word words)
      (push (subseq string start (+ start (length (pname word)))) pnames)
      (setq start (+ start (length (pname word)))))
    (nreverse pnames)))
 
