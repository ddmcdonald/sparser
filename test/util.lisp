;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Package: DDM-UTIL -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (use-package :rt))

;; util

(deftest then/else
  (if t
    (then nil t)
    (else t nil))
  t)

(deftest reintern-symbols
  (let* ((source (make-package :source))
         (dest (make-package :dest))
         (sexp (list (intern "FOO" :source)
                     (intern "BAR" :dest)
                     :baz)))
    (unwind-protect (mapcar #'package-name
                            (mapcar #'symbol-package
                                    (reintern-symbols sexp dest)))
      (delete-package source)
      (delete-package dest)))
  ("DEST" "DEST" "KEYWORD"))

(deftest break-up-at
  (break-up-at "c:dd>eee:f>" :delimeter-chars '(#\: #\>))
  ("c" ":" "dd" ">" "eee" ":" "f" ">"))

(deftest until
  (let ((i 0))
    (until (= i 3) i
      (incf i)))
  3)

(deftest let-with-dynamic-extent
  (let ((closure (let-with-dynamic-extent ((*foo* 0))
                   (lambda () *foo*))))
    (let*-with-dynamic-extent ((* 1) ; CL variable
                               (*foo* *))
      (funcall closure)))
  1)

;; lists

(deftest (ensure-list atom)
  (ensure-list t)
  (t))

(deftest (ensure-list null)
  (ensure-list nil)
  nil)

(deftest (ensure-list cons)
  (ensure-list (cons :a :b))
  (:a . :b))

(deftest (ensure-list list)
  (ensure-list (list :a :b :c))
  (:a :b :c))

(deftest append-new
  (append-new '(:a :b) '(:c) '(:a :c))
  (:a :b :c))

(deftest mapappend
  (mapappend #'list '(:a :b :c) '(1 2 3))
  (:a 1 :b 2 :c 3))

(deftest (pl numbered)
  (with-output-to-string (*standard-output*)
    (pl '(:a :b :c)))
  "  1.  A
  2.  B
  3.  C

")

(deftest (pl unnumbered)
  (with-output-to-string (*standard-output*)
    (pl '(:a :b :c) nil))
  "A
B
C

")

(deftest tail-cons
  (tail-cons :x (list :a :b :c))
  (:a :b :c :x))

(deftest (tail-cons nil)
  (tail-cons :x nil)
  (:x))

(deftest nconcf
  (let ((x (list :a :b :c)))
    (nconcf x '(:x)))
  (:a :b :c :x))

(deftest (quote-every-other-one :odd)
  (quote-every-other-one '(:a 1 :b 2 :c 3) :odd)
  (:a '1 :b '2 :c '3))

(deftest (quote-every-other-one :even)
  (quote-every-other-one '(:a 1 :b 2 :c 3) :even)
  (':a 1 ':b 2 ':c 3))

(deftest assq
  (assq :c '((:a . 1) (:b . 2) (:c . 3)))
  (:c . 3))

(deftest memq
  (memq :c '(:a :b :c))
  (:c))

(deftest memq/assq
  (memq/assq :c '(:a 1 :b 2 (:c . 3)))
  (:c . 3))

(deftest alist-to-plist
  (alist-to-plist '((:a . 1) (:b . 2) (:c . 3)))
  (:a 1 :b 2 :c 3))

(deftest plist-to-alist
  (plist-to-alist '(:a 1 :b 2 :c 3))
  ((:a . 1) (:b . 2) (:c . 3)))

(deftest (plist-to-alist not-dotted)
  (plist-to-alist '(:a 1 :b 2 :c 3) :not-dotted)
  ((:a 1) (:b 2) (:c 3)))

(deftest deep-copy
  (let* ((l1 '(:a (:b :c) (:d (:e (:f)))))
         (l2 (deep-copy l1)))
    (values (eql l1 l2)
            (equal l1 l2)))
  nil
  t)

(deftest flatten
  (flatten '(:a :b (:c) :d (:e (:f :g)) (:h) :i (((:j :k) :l)) :m))
  (:a :b :c :d :e :f :g :h :i :j :k :l :m))

(deftest flattenc
  (flattenc '(:a :b (:c) :d () (:e (:f . :g)) (:h) :i (((:j :k) . :l)) :m))
  (:a :b :c :d :e :f :g :h :i :j :k :l :m))

;; strings

(deftest string-append
  (string-append :a :b :c 1 2 3 "Do" "Re" "Mi")
  "ABC123DoReMi")

;; hash-tables

(defun make-test-hash (&key (initial-contents '(:a 1 :b 2 :c 3)))
  (loop with hash-table = (make-hash-table)
        for (key val) on initial-contents by #'cddr
        do (setf (gethash key hash-table) val)
        finally (return hash-table)))

(deftest all-hash-keys
  (sort (all-hash-keys (make-test-hash)) #'string-lessp)
  (:a :b :c))

(deftest all-hash-vals
  (sort (all-hash-vals (make-test-hash)) #'<)
  (1 2 3))

(deftest hashtable-to-alist
  (sort (hashtable-to-alist (make-test-hash))
        #'string-lessp :key #'car)
  ((:a . 1) (:b . 2) (:c . 3)))

(deftest hash-counts
  (sort (hash-counts (make-test-hash :initial-contents '(:a (1 2 3) :b (4 5))))
        #'string-lessp :key #'car)
  ((:a . 3) (:b . 2)))

;; time

(defun test-time ()
  (decoded-to-encoded-time :month 11 :day 30 :year 2010))

(deftest decoded-to-encoded-time
  (decode-universal-time (test-time))
  0 0 0 30 11 2010 1 nil 5)

(deftest date-as-formatted-string
  (date-as-formatted-string (test-time))
  "11/30/10")

(deftest time-as-formatted-string
  (time-as-formatted-string (test-time))
  "0:0:0")