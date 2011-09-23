;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "parsing"
;;;   Module:  "grammar;tests:"
;;;  version:  May 1994

;; For testing the basic capabilities, but making no assumptions
;; that any grammar has already been defined.

;; initiated 3/8/93 v2.3.  Adding cases 5/16/94.  Added suite of polyword
;; decomposition tests 6/7.

(in-package :sparser)


(defun parser-tests ()) ;; for meta-point

(defun setup-only (string)
  (establish-character-source/string string)
  (initialize-tokenizer-state)
  (initialize-chart-state)
  (per-article-initializations))



#| --------------------- Cases ----------------------

(p "")


;;----- n-ary rules
;;
(def-cfr nr1 ("aa" "bb" "cc" "dd"))

;(p "aa bb cc dd")


;;----- referents over n-ary rules
;;
(def-cfr a ("aa")
  :referent  1 )

(def-cfr b ("bb")
  :referent  2 )

(def-cfr c ("cc")
  :referent  3 )

(def-cfr d ("dd")
  :referent  4 )

(def-cfr nr2 (a b c d)
  :referent (:function + 
                      first second third fourth))

;(p "aa bb cc dd")



;;----- case-sensitive polywords

(def-cfr pw1 ("all good men"))
(def-cfr pw2 ("All Good Men"))

;(p "all good men")
;(p "All Good Men")


;;----- how strings are decomposed into words for polyword definition

;(token-strings-in-string "New York")
;(token-strings-in-string "New York Mets")
#|(token-strings-in-string "New York
Mets")  ;; nl should be included  |#

;(token-strings-in-string "@aaa")
;(token-strings-in-string "@+aaa")
;(token-strings-in-string "aa@+bb")
;(token-strings-in-string "a1b2@3")



;;---- deleting rules

(def-cfr del1 ("all" "good"))
  ;; a prefix of an n-ary rule

(def-cfr del2 ("in" "any event"))
(def-cfr del3 ("any event" "at all"))
  ;; the polyword can't be deleted when the rule is because it's
  ;; used by more than one rule

(polyword-named "any event")



;;------ generating a lot of edges and testing kinds of edge-vectors

;(establish-type-of-edge-vector-to-use :vector)
;(establish-type-of-edge-vector-to-use :kcons-list)

(def-cfr X  ( X X ))
(def-cfr X  ( "x" ))

;(the-edges)
;;  list all the edges in the order they're created

;(length *next-cons-cell*)

;   1 edge  (p "x")
;   3 edges (p "x x")
;  15 edges (p "x x x x")
; 103 edges (p "x x x x x x")
;   This will blow out a length 10 edge-vector array
;   (setq *maximum-number-of-edges-in-an-edge-vector* 75)  ;; from 10
;   (length (setq *the-chart* (make-a-chart)))
;
; 926 edges (p "x x x x x x x x")
;   This wraps the default 500 edge edge-resource while still needing its edges
;   (setq *length-of-edge-resource* 1000)  ;; from 500
;   (make-the-edge-resource)



;;-------------------------------- Just terminals

;(establish-version-of-Look-at-terminal :no-op)
;(establish-version-of-Look-at-terminal :display-token-sequence)
#|(establish-version-of-Look-at-terminal :treat-as-treetop
                                         'do-treetop)              |#


(p *short-string*)
(pp *multi-buffer-string*)

;;-------------------------------- Alternative chart processors

;(establish-kind-of-chart-processing-to-do :just-do-terminals)
;(establish-kind-of-chart-processing-to-do :all-edges)
;(establish-kind-of-chart-processing-to-do :new-toplevel-protocol)



;;-------------------------------- treatment of unknown words

;(what-to-do-with-unknown-words :capitalization-&-digits)
;(what-to-do-with-unknown-words :capitalization-digits-&-morphology)
;(what-to-do-with-unknown-words :ignore)




;;-------------------------------- completion actions

(define-completion-action (word-named "aa")
                          :word-seen
                          'word-seen)

(defun word-seen (word pos-before pos-after)
  (format t "~&saw ~A between p~A and p~A~%"
          word (pos-token-index pos-before)
          (pos-token-index pos-after)))



;;------------------ the state-space of the scan process

(p "")

(p "aaa")
  ;; unknown word

(p "(aaa)")
  ;; rules;traversal:parenthesis
  ;; Exercises null segments and traversal hook

(p "vice president")
  ;; polyword -- exercises the word-fsas

(p "Foo Inc.")
  ;; what happens after PNF

(p "the gold mining company was")
  ;; is .[np seen after a null span?



|#

