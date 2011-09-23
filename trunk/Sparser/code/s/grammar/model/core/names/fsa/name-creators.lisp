;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "name creators"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  March 1994

;; broken out from [names:fsa:transitions] 6/8/93 v2.3
;; fleshed out through 6/18, continued 8/23, fixed a miss-naming of a
;; variable 10/29, wrote generic routine for companies 10/30-11/1
;; moved words+inc-term into new regime 12/16. 12/29-30 added some cases
;; 1/10/94 improving treatment of sequences and uncategorized names
;; 0.1 (3/8) Letting the specific cases be ignored and beginning general
;;      extensions to the general routines. ... through 3/24

(in-package :sparser)


;;---------- :words

(define-name-creator  :words
  (let ((obj
         (make-throw-away-individual category::uncategorized-name))
        name-word-sequence )
    (dolist (pair item-list)
      (push (make-name-word-for-unknown-word-in-name (cdr pair))
            name-word-sequence))
    (let ((sequence
           (def-individual category::sequence
             :items (nreverse name-word-sequence)
             :number (length name-word-sequence)
             :type category::name-word)))

      (bind-variable 'name/s sequence obj)
      (index/uncategorized-name obj name-word-sequence)
      obj )))


;;---------- :names

(define-name-creator  :names
  (let ( name-word-list )
    (dolist (pair item-list)
      (push (cdr pair) name-word-list))
    (setq name-word-list (nreverse name-word-list))

    (let ((name (find/uncategorized-name name-word-list)))
      (if name
        name
        (let ((obj (make-throw-away-individual
                    category::uncategorized-name))
              (sequence (define-sequence name-word-list)))

          (bind-variable 'name/s sequence obj)
          (index/uncategorized-name obj sequence)
          obj )))))



;;---------- :initial+words

(define-name-creator  :initial+words
  (let ((obj
         (make-throw-away-individual category::person-name)))

    (if (= 3 (length item-list))
      ;; "J. Gordon Strasser", "E. Jeffery Conklin"
      (let ((2d-first-name
             (make-name-word-for-unknown-word-in-name
              (cdr (second item-list))))
            (last-name
             (make-name-word-for-unknown-word-in-name
              (cdr (third item-list)))))

        (let ((sequence
               (def-individual category::sequence
                 :items (list (cdr (first item-list)) ;; initial
                              2d-first-name)
                 :number 3
                 :type :mixed)))

          (bind-variable 'first-name/s sequence obj)
          (bind-variable 'last-name last-name obj)
          obj ))
      (else "write code for :initial+words of > length 3"))))


;;;--------- :initial+names

(define-name-creator  :initial+names
  (let* ((initial (cdr (pop item-list)))
         (last-name (cdr (car (last item-list))))
         (middle-names 
          (let ( acc )
            (dolist (pair (cdr (nreverse item-list)))
              (push (cdr pair) acc))
            acc)))

    (let* ((prefix (define-sequence (cons initial middle-names)))
           (persons-name (find/person-name
                         category::person-name
                         `((,(variable/category 'last-name 'person-name)
                            ,last-name)
                           (,(variable/category 'first-name/s 'person-name)
                            ,prefix)))))
      (unless persons-name
        (setq persons-name
              (def-individual 'person-name
                :last-name last-name
                :first-name/s prefix)))
      persons-name )))
         
#|
  (let* ((initial (cdr (first item-list)))
         (names (let ( acc )
                  (dolist (pair (rest item-list))
                    (push (cdr pair) acc))
                  (nreverse acc)))
         (whole-name (cons initial names))
         (temp (reverse whole-name)))

    (let ((name (find/person-name whole-name)))
      (if name
        name
        (let ((obj (make-throw-away-individual category::person-name))
              (last-name (pop temp))
              (first-names
               (def-individual category::sequence
                 :items (nreverse temp)
                 :number (1- (length whole-name))
                 :type :mixed )))
          
          (bind-variable 'first-name/s first-names obj)
          (bind-variable 'last-name last-name obj)
          (index/person-name obj whole-name)
          obj ))))) |#



;;;--------- :word+initial+word

(define-name-creator  :word+initial+word
  (let* ((name1 (make-name-word-for-unknown-word-in-name
                 (cdr (first item-list))))
         (initial (cdr (second item-list)))
         (last-name (make-name-word-for-unknown-word-in-name
                     (cdr (third item-list))))
         (name-list (list name1 initial last-name))
         (obj (make-throw-away-individual category::person-name))
         (sequence (def-individual category::sequence
                     :items (list name1 initial)
                     :number 2
                     :type :mixed)))

    (bind-variable 'first-name/s sequence obj)
    (bind-variable 'last-name last-name obj)
    (index/person-name obj name-list)
    obj ))


;;;--------- :name+initial+name

(define-name-creator  :name+initial+name
  (let* ((name1 (cdr (first item-list)))
         (initial (cdr (second item-list)))
         (last-name (cdr (third item-list)))
         (name-list (list name1 initial last-name)))

    (or (find/person-name name-list)
        (let ((obj (make-throw-away-individual category::person-name))
              (first-names (def-individual category::sequence
                             :items (list name1 initial)
                             :number 2
                             :type :mixed )))
          (bind-variable 'first-name/s first-names obj)
          (bind-variable 'last-name last-name obj)
          (index/person-name obj name-list)
          obj ))))



;;;--------- :prefix+name

(define-name-creator  :person-prefix+name
  ;; this is likely to be a subsequent reference to this name
  ;; since they rarely start with an introductory reference that
  ;; just uses the person's last name by itself rather than
  ;; their longer form, probably without the prefix (except Dr. ??)
  (let ((prefix (cdr (first item-list)))
        (last-name (cdr (second item-list)))
        known-name )

    (let ((bindings (indiv-bound-in last-name)))
      (when bindings
        ;; it's been used in some name, so it's worth looking for
        ;; it.
        (multiple-value-bind (category person/s rule)
                             (last-name-of-a-person bindings)
          (declare (ignore category rule))
          (when person/s
            (when (consp person/s)
              ;; why we get a list is buried in default indexing under
              ;; slot-based keys -- see category::person code
              (if (null (cdr person/s))
                (setq person/s (car person/s))
                (break "More than one person with the same last name")))
            (setq known-name (value-of 'name person/s))))))

    (if known-name
      (then
        ;; //// does the wrong thing with "Messrs"
        (unless (value-of 'standard-prefix known-name)
          (bind-variable 'standard-prefix prefix known-name))
        known-name)
      (else
        (let ((obj (make-throw-away-individual category::person-name)))
          (bind-variable 'last-name last-name obj)
          (bind-variable 'standard-prefix prefix obj)
          obj )))))







;;;--------- :words+inc-term

(define-name-creator :words+inc-term
  ;; we know there won't be an already known company with this
  ;; name since otherwise we'd be seeing names instead of words

  (let ((name1 (make-name-word-for-unknown-word-in-name
                  (cdr (first item-list))))
        (inc-term (cdr (car (last item-list))))
        middle-name-words )

    ;; make name-elements for the second word and the rest
    ;; up to the inc term
    (dolist (pair (rest item-list))
      (when (not (word-p (cdr pair)))
        (when (indiv-typep (cdr pair) 'inc-term)
          (return)))
      (push (make-name-word-for-unknown-word-in-name (cdr pair))
            middle-name-words))

    (let ((middle
           (def-individual category::sequence
             :items (nreverse middle-name-words)
             :number (length middle-name-words)
             :type category::name-word ))
          name )
        
      (setq name (def-individual 'company-name
                   :first-word name1
                   :rest middle
                   :inc-term inc-term))
      name )))


;;;--------- :names+inc-term

(define-name-creator  :names+inc-term
  (let* ((temp (reverse item-list))
         (inc-term (cdr (pop temp)))
         (names (let ( ac )
                  (dolist (pair (nreverse temp))
                    (push (cdr pair) ac))
                  (nreverse ac))))

    (let ((co-name (find/company-name :first (first names)
                                      :rest (cdr names)
                                      :inc inc-term)))
      (if co-name
        co-name
        (let ((1st-name (car names))
              (rest
               (def-individual category::sequence
                 :items (cdr names)
                 :number (length (cdr names))
                 :type category::name-word ))
              new-co-name )

          (setq new-co-name
                (def-individual category::company-name
                  :first-word 1st-name
                  :rest rest
                  :inc-term inc-term))

          new-co-name )))))



;;;--------- :word+koc
#|  12/31 -- flushed "koc" to facilitate the generic routine
(define-name-creator  :word+koc
  (let ((obj
         (make-throw-away-individual category::company-name )))
    (let ((name1 (make-name-word-for-unknown-word-in-name
                  (cdr (first item-list)))))

      (bind-variable 'first-word name1 obj)

      (bind-variable 'inc-term (cdr (second item-list)) obj)
        ;; /// There will cases where there's also an inc term,
        ;; but it seems unlikely that in one article there would
        ;; be a subsequent reference that *expanded* the name
        ;; of this company to include it, so we simplify the 
        ;; packaging by overloading this slot

      (index/company-name obj (list (cdr (first item-list))
                                    (cdr (second item-list))))
      obj )))



;;;--------- :name+koc

(define-name-creator  :name+koc
  ;; this name may already exist, so we have to look for it
  ;; rather than just make another one.  Alternatively, while
  ;; the name-word definitely exists, this combination of words
  ;; may not.   If it does exist, we know it will name a company,
  ;; so we look for it in the index of company names

  (let ((name1 (cdr (first item-list)))
        (koc (cdr (second item-list))))

    (let ((name (find/company-name (list name1 koc))))
      (if name
        name
        (else
          (let ((obj (make-throw-away-individual
                      category::company-name)))
            (bind-variable 'first-word name1 obj)
            (bind-variable 'inc-term koc obj)
            (index/company-name obj (list name1 koc))
            obj ))))))
|#



;;;--------- :word+letter&letter+koc

(define-name-creator :word+letter&letter+koc
  (let ((obj
         (make-throw-away-individual
          ;; this keeps it from being automatically indexed
          ;; by the indexing routines associated with
          ;; the category
          category::company-name )))

    ;; package up the components of the name, 
    (let ((name1 (make-name-word-for-unknown-word-in-name
                  (cdr (first item-list))))
          (koc (cdr (fifth item-list))))

      (bind-variable 'first-word name1 obj)

      (let ((middle
             (def-individual category::sequence
               :items (list (cdr (second item-list))  ;; letter
                            (cdr (third  item-list))  ;; &
                            (cdr (fourth item-list))) ;; letter
               :number 4
               :type :mixed )))

        (bind-variable 'rest middle obj)
        (bind-variable 'inc-term koc obj)

        (index/company-name obj
                            (append (cons name1
                                          (value-of 'items middle))
                                    (list koc)))

        obj ))))



(define-name-creator  :name+letter&letter+koc
  (let* ((temp (reverse item-list))
         (koc (cdr (first item-list)))
         (item-sequence (items-from-item-list (nreverse temp))))

    (let ((name (find/company-name item-sequence)))
      (if name
        name
        (let ((new-name (make-throw-away-individual category::company-name)))

          (index/company-name new-name item-sequence)

          (let ((name1 (pop item-sequence))
                (l&l (def-individual category::sequence
                       :items (all-but-last! item-sequence) ;; distructive
                       :number 3
                       :type :mixed )))

            (bind-variable 'first-word name1 new-name)
            (bind-variable 'rest l&l new-name)
            (bind-variable 'inc-term koc new-name)

            new-name ))))))



;;;-----------------
;;; generic routine
;;;-----------------

(defun generic-name-creator (item-list final-state category)
  (let ((type-list (decompose-name-of-pnf-state final-state)))
    (ecase (cat-symbol category)
      (category::company
       (generic-company-name-creator item-list type-list))
      (category::name
       (make-an-uncategorized-name item-list type-list))
      (category::person
       (generic-person-name-creator item-list type-list))
      )))


;;---- vanila names

(defun make-an-uncategorized-name (item-list type-list)
  ;; only a few cases, so check out the type list just to be sure
  ;; a new pattern will be noticed and then always do the same thing
  (let ( items )
    (dolist (item type-list)
      (ecase (etypecase item
               ((or category referential-category) (cat-symbol item))
               (pnf-state (label-symbol item))
               (word (word-symbol item)))
        (:word
         (push (make-name-word-for-unknown-word-in-name 
                (cdr (pop item-list)))
               items))
        (:words
         ;; we're sure the first item is a word, we peek at the rest
         ;; before continuing
         (let* ((pair (pop item-list))
                (word  (cdr pair)))
           (push (make-name-word-for-unknown-word-in-name word)
                 items)
           (loop
             (if (and item-list
                      (word-p (cdr (first item-list))))
               (then
                 (setq pair (pop item-list)
                       word (cdr pair))
                 (push (make-name-word-for-unknown-word-in-name word)
                       items))
               (return)))))
        (category::name-word
         (push (cdr (pop item-list)) items))
        (:names
         ;; same design as :words
         (let* ((pair (pop item-list))
                (name-word (cdr pair)))
           (push name-word items)
           (loop
             (if (and item-list
                      (name-word? (cdr (first item-list))))
               (then
                 (setq pair (pop item-list)
                       name-word (cdr pair))
                 (push name-word items))
               (return)))))
        (category::unknown-word
         (push (make-name-word-for-unknown-word-in-name 
                (cdr (pop item-list)))
               items))
        ))

    (setq items (nreverse items))

    (or (find/uncategorized-name items)
        (make/uncategorized-name items))))



;;---- People

(defun generic-person-name-creator (item-list type-list)
  (multiple-value-bind (first-name/s last-name
                        prefix version)
                       (decode-person-items item-list type-list)

    (let ((name (define-or-find-individual 'person-name
                  :last-name last-name
                  :first-name/s first-name/s)))
      name )))


(defun decode-person-items (item-list type-list)
  (let ( items  prefix  version )
    (dolist (item type-list)
      (ecase (etypecase item
               (referential-category (cat-symbol item))
               (pnf-state (label-symbol item))
               (category (cat-symbol item)))
        ((:initial category::initial)
         (push (cdr (pop item-list)) items))
        (:words
         ;; clone of the routine for uncategorized names
         (let* ((pair (pop item-list))
                (word  (cdr pair)))
           (push (make-name-word-for-unknown-word-in-name word)
                 items)
           (loop
             (if (and item-list
                      (word-p (cdr (first item-list))))
               (then
                 (setq pair (pop item-list)
                       word (cdr pair))
                 (push (make-name-word-for-unknown-word-in-name word)
                       items))
               (return)))))
        (:names
         ;; same design as :words
         (let* ((pair (pop item-list))
                (name-word (cdr pair)))
           (push name-word items)
           (loop
             (if (and item-list
                      (name-word? (cdr (first item-list))))
               (then
                 (setq pair (pop item-list)
                       name-word (cdr pair))
                 (push name-word items))
               (return)))))
        ((:name category::name-word)
         (push (cdr (pop item-list)) items))
        ((:word category::unknown-word)
         (push (make-name-word-for-unknown-word-in-name
                (cdr (pop item-list)))
               items))
        (category::person-prefix
         (setq prefix (cdr (pop item-list))))
        ))

    (let* ((last-name (pop items))
           (first-name/s (when items  ;; e.g "Mr. Dalton"
                           (define-sequence (nreverse items)))))

      (values first-name/s last-name
              prefix version))))





  
;;---- Companies

(defun generic-company-name-creator (item-list type-list)
  (multiple-value-bind (first rest
                        name/s inc
                        the )
                       (distribute-co-items type-list item-list)

    (let* ((prefix
            (if (cdr name/s) name/s nil))
           (co-name (find/company-name
                     :first first
                     :rest rest
                     :inc inc)))
      (if co-name
        co-name
        (else
          (when prefix
            (setq prefix (def-individual 'sequence
                           :items prefix
                           :number (length prefix)
                           :type category::name-word)))

          (when rest
            (setq rest (def-individual 'sequence
                         :items rest
                         :number (length rest)
                         :type :mixed)))

          (setq co-name (def-individual 'company-name
                          :first-word first
                          :prefix prefix
                          :rest rest
                          :the the
                          :inc-term inc))
          co-name )))))



(defun distribute-co-items (type-list item-list)
  ;; following the directives of the type list, go through
  ;; the item list and accumulate the words/sequences, get names
  ;; for words, etc. and return the result distributed across
  ;; the accumulators that the co-name creator uses to make
  ;; sense of the structure of the name.

  (let ((remaining-items item-list)
        sequence  name/s  inc  the  person
        )

    (do ((type (pop type-list) (pop type-list))
         item )
        ((null type))
      (setq item
            (case (etypecase type
                    (referential-category (cat-symbol type))
                    (pnf-state (label-symbol type))
                    (category (cat-symbol type))
                    (word (word-symbol type)))
              (:words
               (multiple-value-setq (name/s remaining-items)
                 (pnf/get-names-for-words item-list))
               name/s )
              (:word
               (multiple-value-setq (name/s remaining-items)
                 (pnf/get-name-for-word item-list))
               name/s )
              (:names
               (multiple-value-setq (name/s remaining-items)
                 (pnf/get-names item-list))
               name/s )
              (:name
               (multiple-value-setq (name/s remaining-items)
                 (pnf/get-name item-list))
               name/s )
              (:the
               (setq the (cdr (pop remaining-items))))
              (category::name-word
               (if name/s
                 (add-to-the-end-of-the-list
                  (cdr (pop remaining-items)) name/s)
                 (setq name/s (list (cdr (pop remaining-items))))))
              (category::generic-co-word
               (cdr (pop remaining-items)))
              (:initial (cdr (pop remaining-items)))
              (category::inc-term
               (setq inc (cdr (pop remaining-items))))
              (category::kind-of-company
               (cdr (pop remaining-items)))
              (category::country
               (cdr (pop remaining-items)))
              (word::and-sign
               (cdr (pop remaining-items)))

              (:subname-slash
               (multiple-value-setq (item remaining-items)
                 (decode-subname-up-to-slash remaining-items))
               item )

              (category::person
               (multiple-value-setq (person remaining-items)
                 (extract-person-from-item-list type-list
                                                remaining-items))
               person )
              (otherwise
               (break "New case:  type = ~A" type))))

      (push item sequence ))

    (multiple-value-bind (first rest)
                         (pnf/group-the-sequence/co sequence)
                         ;;(pnf/1st+rest item-list)
      (values first rest
              name/s inc
              the ))))


;;;-------------------------------------------------
;;; subroutines for grouping parts of the item-list
;;;-------------------------------------------------

(defun pnf/Group-the-sequence/co (reversed-sequence)
  ;; The sequence must be broken down into first and rest to fit
  ;; the way companies are indexed against company names.
  ;; Also, the various sub-parsers in the type-driven distribution
  ;; routine occasionally push lists of items onto the sequence
  ;; that we will have to open up here so that the ultimate
  ;; sequence is flat.
  (let ( sequence )
    (dolist (item reversed-sequence)
      (if (listp item)
        (dolist (subitem (nreverse (copy-list item)))
          (push subitem sequence))
        (push item sequence)))
    (values (first sequence)
            (rest sequence))))



;; may be out of date
(defun pnf/1st+rest (item-list)
  (let ((values
         (mapcar #'cdr item-list))
        laundered-values )
    ;; if some of the names are just now being introduced the list
    ;; will have words and we need to substitute for them
    (dolist (item values)
      (if (word-p item)
        (push (or (find-individual 'name-word :name item)
                  (make-name-word-for-unknown-word-in-name item))
              laundered-values)
        (push item laundered-values)))
    (setq laundered-values (nreverse laundered-values))
    (values (first laundered-values)
            (rest laundered-values))))


(defun pnf/Get-names (item-list)
  (let ((remaining-items item-list)
        item  names )
    (loop
      (setq item (cdr (first remaining-items)))
      (if (and (individual-p item)
               (indiv-typep item 'name-word))
        (push (cdr (pop remaining-items)) names)
        (return)))
    (values (nreverse names)
            remaining-items)))

(defun pnf/get-name (item-list)
  (let ((name (cdr (pop item-list))))
    (values (list name)
            item-list)))

(defun pnf/Get-name-for-word (item-list)
  (let* ((word (cdr (pop item-list)))
         (name (make-name-word-for-unknown-word-in-name word)))
    (values (list name)
            item-list)))


(defun pnf/Get-names-for-words (item-list)
  (let ((remaining-items item-list)
        words )
    (loop
      (if (typep (cdr (first remaining-items)) 'word)
        (push (cdr (pop remaining-items)) words)
        (return)))
    (unless words
      (break "Expected at least one word on the item-list"))
    (let ((names
           (mapcar #'make-name-word-for-unknown-word-in-name
                   words)))
      (nreverse names))))



(defun extract-person-from-item-list (remaining-types
                                      remaining-items)
  ;; the canonical case is "Frank B. Hall & Co."
  ;; This routine dispatches off the next type, and searches
  ;; through the remaining items until it reaches that point,
  ;; with all the items up to that point interpreted as the
  ;; name of a person. 
  (let ((next-type (first remaining-types))
        person-elements  unused-items )
    (do* ((unused remaining-items (cdr unused))
          (item (pop remaining-items) (pop remaining-items)))
        ((eq (car item)
             next-type)
         (setq person-elements (nreverse person-elements))
         (setq unused-items unused))
      (push item person-elements))

    (let ((person-name
           (generic-person-name-creator
            person-elements (types-from-item-list person-elements))))

      (values person-name unused-items))))


(defun decode-subname-up-to-slash (remaining-items)
  ;; e.g. "Capital Cities/ABC Inc."
  ;; The state that triggers this call is subname-slash.
  (let ( name-elements  unused-items )
    (do* ((unused remaining-items (cdr unused))
          (item (pop remaining-items) (pop remaining-items)))
         ((eq (car item)
              word::forward-slash)
          (setq name-elements (nreverse name-elements))
          (setq unused-items unused))
      (push item name-elements))

    (let ((name (make-an-uncategorized-name
                 name-elements (types-from-item-list name-elements))))
      (values name unused-items))))




;;;-------------------------
;;; decoding the state name
;;;-------------------------

(defparameter *keyword-package* (find-package :keyword))

(defun decompose-name-of-pnf-state (final-state)
  (let ((string (symbol-name (pnf-state-symbol final-state)))
        pos-of-+  
        substring  symbol  remaining-string
        state  states  )

    (setq remaining-string string)
    (loop
      (setq pos-of-+ (position #\+ remaining-string))
      (if pos-of-+
        (then
          (setq substring (subseq remaining-string
                                  0 pos-of-+))
          (setq symbol (intern substring *keyword-package*))
          (setq state (or (pnf-state-named symbol)
                          (category-named symbol)
                          (word-named substring)))
          (unless state
            (break "There is no PNF state named ~A" substring))
          (push state states))

        (else
          (setq symbol (intern remaining-string *keyword-package*))
          (setq state (or (pnf-state-named symbol)
                          (category-named symbol)))
          (unless state
            (break "There is no PNF state named ~A" remaining-string))
          (push state states)
          (return)))
      (setq remaining-string (subseq remaining-string
                                     (1+ pos-of-+))))

    (nreverse states)))




;;;--------------------
;;; auxiliary routines
;;;--------------------

(defun items-from-item-list (alist)
  ;; the item-list is an alist, we return the items, which are the
  ;; cdr's of all the terms in the alist
  (let ( items )
    (dolist (pair alist)
      (push (cdr pair) items))
    (nreverse items)))


(defun types-from-item-list (item-list)
  ;; the elements of an item list are ( type . item )
  ;; This plucks out the type components.
  (let ( types )
    (dolist (pair item-list)
      (push (car pair) types))
    (nreverse types)))


(defun all-but-last! (list)
  ;; very convenient for leaving off Inc-terms
  ;; n.b. this is distructive of the original list
  (let ((but-last-cell
         (nthcdr (- (length list) 2)
                 list)))
    (rplacd but-last-cell nil)
    list ))

