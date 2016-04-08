;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package: MUMBLE -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :mumble)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (use-package :rt))

(defvar *me*
  (make-dtn :referent 'me
            :resource (mumble-value 'first-person-singular 'pronoun)))

(defun mumble-says (content)
  (with-output-to-string (*mumble-text-output*)
    (say content)))

(deftest (say nil)
  (mumble-says nil)
  "")

(deftest (say cat)
  (mumble-says (find-word "cat"))
  "cat")

(deftest (say cats)
  (mumble-says (plural (make-dtn :resource (noun (find-word "cat")))))
  "cats")

(deftest (say mice)
  (mumble-says (plural (make-dtn :resource (noun "mouse"))))
  "mice")

(deftest (say snap bone)
  (let ((s *me*)
        (v (present-tense (make-dtn :resource (verb "snap"))))
        (o (always-definite
            (singular (make-dtn :referent :bone
                                :resource (noun "bone"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says v))
  "I snap the bone")

(deftest (say snapped bone)
  (let ((s *me*)
        (v (past-tense (make-dtn :resource (verb "snap"))))
        (o (initially-indefinite
            (singular (make-dtn :referent :bone
                                :resource (noun "bone"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says v))
  "I snapped a bone")

(deftest (say not drink milk)
  (let ((s *me*)
        (v (negate (present-tense (make-dtn :resource (verb "drink")))))
        (o (neuter-&-third-person (singular (make-dtn :resource (noun "milk"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says v))
  "I don't drink milk")

(deftest (say not drank milk)
  (let ((s *me*)
        (v (negate (past-tense (make-dtn :resource (verb "drink")))))
        (o (neuter-&-third-person (singular (make-dtn :resource (noun "milk"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says v))
  "I didn't drink milk")

(deftest (say bought milk)
  (let ((s *me*)
        (v (past-tense (make-dtn :resource (verb (find-word "buy")))))
        (o (neuter-&-third-person (singular (make-dtn :resource (noun "milk"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says v))
  "I bought milk")

(deftest (ask bought milk)
  (let ((s *me*)
	(v (question (past-tense (make-dtn :resource (verb (find-word "buy"))))))
	(o (neuter-&-third-person (singular (make-dtn :resource (noun "milk"))))))
    (make-complement-node 's s v)
    (make-complement-node 'o o v)
    (mumble-says (discourse-unit v)))
  "Did I buy milk?")

(deftest (say drink and like)
  (let* ((v1 (negate (present-tense (make-dtn :resource (verb "drink")))))
	 (o1 (neuter-&-third-person (singular (make-dtn :resource (noun "milk")))))
	 (v2 (present-tense (make-dtn :resource (verb "like"))))
	 (o2 (neuter-&-third-person (plural (make-dtn :referent :cat
                                                      :resource (noun "cat")))))
	 (dtn (make-dtn :referent `(,v1 ,v2)
			:resource (phrase-named 'two-item-conjunction))))
    (make-complement-node 's *me* v1)
    (make-complement-node 'o o1 v1)
    (make-complement-node 's *me* v2)
    (make-complement-node 'o o2 v2)
    (make-complement-node 'one v1 dtn)
    (make-complement-node 'two v2 dtn)
    (mumble-says dtn))
  "I don't drink milk and I like cats")

#+(or) ; no pronominalization yet
(deftest (say bought read book)
  (let* ((v1 (past-tense (make-dtn :resource (verb (find-word "buy")))))
	 (o1 (initially-indefinite (make-dtn :resource (noun "book")
                                             :referent :b1)))
	 (v2 (past-tense (make-dtn :resource (verb (find-word "read")))))
	 (o2 (known-individual
              (neuter-&-third-person
               (make-dtn :resource (noun "book")
                         :referent :b1))))
	 (dtn (make-dtn :referent `(,v1 ,v2)
			:resource (phrase-named 'two-item-conjunction))))
    (make-complement-node 's *me* v1)
    (make-complement-node 'o o1 v1)
    (make-complement-node 's *me* v2)
    (make-complement-node 'o o2 v2)
    (make-complement-node 'one v1 dtn)
    (make-complement-node 'two v2 dtn)
    (mumble-says dtn))
  "I bought a book and I read it")

(deftest (say cat loves itself)
  (let* ((cat (neuter-&-third-person
               (singular (make-dtn :referent :cat
                                   :resource (noun "cat")))))
         (love (present-tense (make-dtn :resource (verb "love")))))
    (make-complement-node 's (always-definite cat) love)
    (make-complement-node 'o cat love)
    (mumble-says love))
  "the cat loves itself")
