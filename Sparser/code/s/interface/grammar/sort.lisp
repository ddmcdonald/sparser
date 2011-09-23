;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "sort"
;;;    Module:  "interface;grammar:"
;;;   version:  0.5 January 1999

;; initiated 3/10/92 v2.2, elaborated 3/19,21,26
;; 0.1 (6/7/93 v2.3) Added appreciation of form rules to the combined
;;      cfr sorting routine
;; 0.2 (7/16) changed *pseudo-category-for-csr-self* to a parameter from a 
;;      constant to apease the compiler
;; 0.3 (1/13/94) added Order-words-by-symbol
;; 0.4 (1/3/95) added syntactic rules into lhs sort routine
;;     (6/20) added Sort-referential-categories-hierarchically
;;     (1/5/96) added Sort-cfrs-by-order-of-definition
;; 0.5 (6/5) Redid the check of identical rules in the sort so that it wouldn't
;;      do a query.
;;     (1/22/99) tweaked Labels-string to accomodate MCL 4.0

(in-package :sparser)

;;;-------
;;; words
;;;-------

(defun sort-words (list-of-words)
  ;; returns a new list, sorted alphabetically with capitalized
  ;; words ordered after their lowercase equivalents
  (let ((words (copy-list list-of-words)))
    (sort words 'capitalization-sensitive-word-order)))


(defun capitalization-sensitive-word-order (w1 w2)
  (let ((s1 (word-pname w1))
        (s2 (word-pname w2)))
    (cond ((string-equal s1 s2)
           (order-by-capitalization w1 w2))
          ((string< s1 s2) t)
          ((string< s2 s1) nil))))

(defun order-by-capitalization (w1 w2)
  (let ((cap1 (word-capitalization w1))
        (cap2 (word-capitalization w2)))

    ;; the two words have the same letters, and differ only
    ;; in their capitalization pattern

    (cond ((and cap1 (null cap2)) t)
          ((and cap2 (null cap1)) nil)
          ((and (null cap1) (null cap2))
           (order-words-by-symbol w1 w2))
          (t
           (ecase cap1
             (:lower-case  ;; w2 must have some letter capitalized
              t)
             (:single-capitalized-letter
              ;; w2 must be lowercase
              nil)
             (:all-caps
              ;; w2 must have some lowercase letter(s)
              nil)
             (:mixed-case
              ;; won't try sorting more finely
              (string< (word-pname w1) (word-pname w2)))
             (:initial-letter-capitalized
              (ecase cap2
                (:lower-case nil)
                (:all-caps t)
                (:mixed-case
                 (string< (word-pname w1) (word-pname w2))))))))))


(defun order-words-by-symbol (w1 w2)
  ;; the words don't have pnames or capitalization, but they
  ;; have to have symbols, e.g. pseudo words for the word frequency
  ;; facility, section markers.
  (let ((s1 (symbol-name (word-symbol w1)))
        (s2 (symbol-name (word-symbol w2))))
    (cond ((string< s1 s2) t)
          ((string< s2 s1) nil)
          (t
           (y-or-n-p "Sorting words: The words \"~A\" and \"~A\" ~
                      are indistinguishable.~%    Answer Y to ~
                      order the first before the second"
                     w1 w2)))))



;;;-----------
;;; polywords
;;;-----------

(defun sort-polywords (list-of-polywords)
  (let ((polywords (copy-list list-of-polywords)))
    (sort polywords
          'order-pw-alphabetically/longest-last)))

(defun order-pw-alphabetically/longest-last (pw1 pw2)
  (let* ((words1 (pw-words pw1))
         (words2 (pw-words pw2))
         (first-word1 (word-pname (first words1)))
         (first-word2 (word-pname (first words2))))

    (cond ((string< first-word1 first-word2) t)
          ((string< first-word2 first-word1) nil)
          (t (let ((l1 (length words1))
                   (l2 (length words2)))
               (cond ((< l1 l2) t)
                     ((< l2 l1) nil)
                     (t (order-word-list-alphabetically
                         (rest words1) (rest words2)))))))))

(defun order-word-list-alphabetically (words1 words2)
  (unless (eq (length words1) (length words2))
    (error "Bad threading: the lists of words should be of the ~
            same length:~%~A~%~A" words1 words2))
  (when (null words1)
    (break "The word lists (now exhausted) were identical"))
  (let ((w1 (word-pname (first words1)))
        (w2 (word-pname (first words2))))
    (cond ((string< w1 w2) t)
          ((string< w2 w1) nil)
          (t (order-word-list-alphabetically
              (rest words1) (rest words2))))))


;;;------------
;;; categories
;;;------------

(defun sort-categories (list-of-categories)
  (let ((categories (copy-list list-of-categories)))
    (sort categories #'string<
          :key #'(lambda (c) (symbol-name (cat-symbol c))))))



(defun sort-referential-categories-hierarchically
       ( &optional (list-of-categories
                    *referential-categories*) )

  (let ((categories-without-supercs
         (or *categories-without-supercs*
             (compute-daughter-relationships list-of-categories))))

    (dolist (c categories-without-supercs)
      (sort-categorys-daughters c))

    (sort-categories categories-without-supercs)
    categories-without-supercs ))


(defun sort-categorys-daughters (c)
  (let ((daughters (daughters-of-category c)))
    (when daughters
      (dolist (d daughters)
        (sort-categorys-daughters d))

      (set-categorys-daughters
       c (sort-categories daughters)))

    daughters))



;;;----------
;;; cf rules
;;;----------

(defun sort-cfrs (list-of-context-free-rules)
  (let ((rules (copy-list list-of-context-free-rules)))
    (sort rules 'sort-cfrs-by-pnames-from-the-left)))


(defun sort-cfrs-by-pnames-from-the-left (r1 r2)
  (let ((lhs1 (labels-string (cfr-category r1)))
        (lhs2 (labels-string (cfr-category r2))))

    (cond ((string< lhs1 lhs2) t)
          ((string< lhs2 lhs1) nil)
          (t (let* ((rhs1 (cfr-rhs r1))
                    (rhs2 (cfr-rhs r2))
                    (length1 (etypecase rhs1
                               (list (length rhs1))
                               (polyword
                                (length (pw-words rhs1)))))

                    (length2 (etypecase rhs2
                               (list (length rhs2))
                               (polyword
                                (length (pw-words rhs2))))))

               (cond ((< length1 length2) t)
                     ((< length2 length1) nil)
                     (t (sort-rules-by-rhs r1 r2))))))))


(defun sort-rules-by-rhs (r1 r2)
  ;; the rules are of the same length, and by definition must
  ;; involve different labels. We order them alphabetically
  ;; by the first different label working from the left.
  (let ((rhs1 (cfr-rhs r1))
        (rhs2 (cfr-rhs r2)))
    (sort-rules-by-rhs/aux rhs1 rhs2 r1 r2)))


(defun sort-rules-by-rhs/aux (rhs1 rhs2 r1 r2)
  (let ( label1 label2 string1 string2 )
    (when (typep rhs1 'polyword)
      (setq rhs1 (pw-words rhs1)))
    (when (typep rhs2 'polyword)
      (setq rhs2 (pw-words rhs2)))

    (loop
      (setq label1 (pop rhs1)
            label2 (pop rhs2))

      (when (or (null label1) (null label2))
        (format t "Identical rules found:~
                   ~%~A~%~A~%" r1 r2)
        (return-from sort-rules-by-rhs/aux t))

        ;; This on-the-fly query won't work when the grammar is being
        ;; loaded as part of launching the image.
        #|(if (y-or-n-p "the two rhs appear to be identical~
                       ~%  r1:  ~A~%  r2:  ~A~
                       ~% Answer Y to order the first before the ~
                       second" r1 r2)
          (return-from sort-rules-by-rhs/aux t)
          (return-from sort-rules-by-rhs/aux nil))|#


      (setq string1 (labels-string label1)
            string2 (labels-string label2))

      (cond ((string< string1 string2) (return t))
            ((string< string2 string1) (return nil))))))



;;--- by number (order of definition)

(defun sort-cfrs-by-order-of-definition (r1 r2)
  (cond ((and (dotted-rule? r1)
              (dotted-rule? r2))
         (sort-two-dotted-rules-by-number r1 r2))
        ((dotted-rule? r1)
         (sort-dotted-rule-against-regular/by-number r1 r2))
        ((dotted-rule? r2)
         (sort-regular-rule-against-dotted/by-number r1 r2))
        (t (sort-two-cfrs-by-number r1 r2))))

(defun sort-two-cfrs-by-number (r1 r2)
  (let ((n1 (parse-integer (symbol-name (cfr-symbol r1)) :start 3))
        (n2 (parse-integer (symbol-name (cfr-symbol r2)) :start 3)))
    (> n1 n2)))

(defun sort-dotted-rule-against-regular/by-number (r1 r2)
  (let* ((base-rule1 (source-of-dotted-rule r1)) ;;(car (cadr (member :dotted-rule (cfr-plist r1)))))
         (n1 (parse-integer (symbol-name (cfr-symbol base-rule1)) :start 3))
         (n2 (parse-integer (symbol-name (cfr-symbol r2)) :start 3)))
    (> n1 n2)))

(defun sort-regular-rule-against-dotted/by-number (r1 r2)
  (let* ((n1 (parse-integer (symbol-name (cfr-symbol r1)) :start 3))
         (base-rule2 (source-of-dotted-rule r2)) ;;(car (cadr (member :dotted-rule (cfr-plist r2)))))
         (n2 (parse-integer (symbol-name (cfr-symbol base-rule2)) :start 3)))
    (> n1 n2)))


(defun sort-two-dotted-rules-by-number (d1 d2)
  (let ((r1 (source-of-dotted-rule d1)) ;;(car (cadr (member :dotted-rule (cfr-plist d1)))))
        (r2 (source-of-dotted-rule d2))) ;;(car (cadr (member :dotted-rule (cfr-plist d2))))))

    (if (eq r1 r2)
      (let ((s1 (subseq (symbol-name (cfr-symbol r1)) 4))
            (s2 (subseq (symbol-name (cfr-symbol r2)) 4)))
        (string> s1 s2))

      (sort-two-cfrs-by-number r1 r2))))





;;;----------
;;; cs rules
;;;----------

(defun sort-csrs (list-of-context-sensitive-rules)
  (let ((rules (copy-list list-of-context-sensitive-rules)))
    (sort rules 'sort-csrs-by-pnames-from-the-left)))


(defun sort-csrs-by-pnames-from-the-left (r1 r2)
  (let ((lhs1 (labels-string (lhs-of-cs-rule r1)))
        (lhs2 (labels-string (lhs-of-cs-rule r2))))

    (cond ((string< lhs1 lhs2) t)
          ((string< lhs2 lhs1) nil)
          (t (sort-rules-by-rhs/aux
              (pseudo-rhs-of-csr r1)
              (pseudo-rhs-of-csr r2)
              r1 r2 )))))


;;;--------------------------------------
;;; /// subroutines that should be moved
;;;--------------------------------------

(defun lhs-of-cs-rule (cs)
  (let ((rhs (cfr-rhs cs)))
    (ecase (car (cfr-completion cs))
      (:left-edge      (first rhs))  ;; appears in form rules
      (:left-daughter  (first rhs))
      (:right-edge     (second rhs))
      (:right-daughter (second rhs)))))


(defparameter *pseudo-category-for-csr-self*
  (make-category :symbol '___ ))

(defun pseudo-rhs-of-csr (cs)
  (let ((lhs (cfr-category cs))
        (rhs (cfr-rhs cs)))
    (ecase (car (cfr-completion cs))
      (:right-edge
       `( ,lhs ,(first rhs) ,*pseudo-category-for-csr-self* ))
      (:right-daughter
       `( ,lhs ,(first rhs) ,*pseudo-category-for-csr-self* ))
      (:left-edge
       `( ,lhs ,*pseudo-category-for-csr-self* ,(second rhs) ))
      (:left-daughter
       `( ,lhs ,*pseudo-category-for-csr-self* ,(second rhs) )))))


(defun labels-string (L)
  (etypecase L
    (symbol
     (if (and (keywordp L)
              (eq L :syntactic-form))   ;; "lhs" of a form rule
       ""
       (break "Unanticipated symbol passed to Labels-string")))
    (word
     (word-pname L))
    ((or category referential-category mixin-category)
     (symbol-name (cat-symbol L)))
    (polyword
     (pw-pname L))))


;;;----------------------
;;; both CF and CS rules
;;;----------------------


(defun sort-cf&cs-rules-together (list-of-rules)
  (let ((rules (copy-list list-of-rules)))
    (sort rules 'sort-by-lhs/cs-rules-after)))


(defun sort-by-lhs/cs-rules-after (r1 r2)
  (let ((r1-completion (cfr-completion r1))
        (r2-completion (cfr-completion r2)))

    (cond ((and r1-completion
                (null r2-completion))
           t)
          ((and (null r1-completion)
                r2-completion)
           nil)
          ((and r1-completion
                r2-completion)
           (cond ((and (syntactic-rule? r1)
                       (syntactic-rule? r2))
                  (sort-rules-by-rhs r1 r2))
                 ((syntactic-rule? r1)
                  nil)
                 ((syntactic-rule? r2)
                  t)

                 ((and (form-rule? r1)
                       (not (form-rule? r2)))
                  nil)
                 ((and (not (form-rule? r1))
                       (form-rule? r2))
                  t)
                 ((and (not (form-rule? r1))
                       (not (form-rule? r2)))
                  (sort-csrs-by-pnames-from-the-left r1 r2))

                 ((and (form-rule? r1)
                       (form-rule? r2))
                  (sort-rules-by-rhs r1 r2))

                 (t (break "Missing a case somehow")
                    :foo )))

          ((and (null r1-completion)
                (null r2-completion))
           (sort-cfrs-by-pnames-from-the-left r1 r2)))))

