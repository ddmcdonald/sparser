;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1995,2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "look"
;;;   Module:  "analyzers;HA:"
;;;  Version:  April 2013

;; 5/23/94 completely redesigned the check to take into account the
;;  source of the bracket.  Added traces 1/5/95.  Added {close/open}-bracket
;;  already-there 1/24.
;; 4/1/13 Checking off capitalized variants as well as lower case

(in-package :sparser)

;;;-------------------------------------------------
;;; checking positions for the presence of brackets
;;;-------------------------------------------------

;;--- faster and looser internal version

(defun close-bracket-already-there (p word)
  (when (ev-boundary (pos-ends-here p))
    (let ((record
           (cadr (member :bracket-source (ev-plist (pos-ends-here p))
                         :test #'eq))))
      (if (consp record)
        (when (member word record :test #'eq)
          (ev-boundary (pos-ends-here p)))
        (when (eq record word)
          (ev-boundary (pos-ends-here p)))))))

(defun open-bracket-already-there (p word)
  (when (ev-boundary (pos-starts-here p))
    (let ((record
           (cadr (member :bracket-source (ev-plist (pos-starts-here p))
                         :test #'eq))))
      (if (consp record)
        (when (member word record :test #'eq)
          (ev-boundary (pos-starts-here p)))
        (when (eq record word)
          (ev-boundary (pos-starts-here p)))))))




;;--- official versions with traces
  
(defun [-on-position-because-of-word? (p word)
  (tr :asking-[-on-pos p word)
  ;; "Asking whether there is a [ on p~A because of '~A'"
  (let* ((starting-vector (pos-starts-here p))
         (bracket (ev-boundary starting-vector))
         (variant (capitalized-correspondent word p)))
    (if bracket
      (let ((source
             (cadr (member :bracket-source (ev-plist starting-vector)
                           :test #'eq))))
        (if (not (consp source)) ;; two sources
          (if (or (eq source word)
                  (and variant 
                       (eq source variant)))
            (then
              (tr :bracket-is-there)
              bracket)
            (else
              (tr :bracket-isnt-there)
              nil ))

          (if (or (member word source :test #'eq)
                  (and variant
                       (member variant source :test #'eq)))
            (then
              (tr :bracket-is-there)
              bracket)
            (else
              (tr :bracket-isnt-there)
              nil ))))
      (else
        (tr :bracket-isnt-there)
        nil ))))



(defun ]-on-position-because-of-word? (p word)
  (tr :asking-]-on-pos p word) ;; "Asking whether there is a ] on p~A because of '~A'"
  (let* ((ending-vector (pos-ends-here p))
         (bracket (ev-boundary ending-vector))
         (variant (capitalized-correspondent word p)))
    (if bracket      
      (let ((source
             (cadr (member :bracket-source (ev-plist ending-vector)
                           :test #'eq))))
        (if (not (consp source))
          (if (or (eq source word)
                  (and variant 
                       (eq source variant)))
            (then
              (tr :bracket-is-there)
              bracket)
            (else
              (tr :bracket-isnt-there)
              nil ))

          (if  (or (member word source :test #'eq)
                  (and variant
                       (member variant source :test #'eq)))
            (then
              (tr :bracket-is-there)
              bracket)
            (else
              (tr :bracket-isnt-there)
              nil ))))
      (else
        (tr :bracket-isnt-there)
        nil ))))

