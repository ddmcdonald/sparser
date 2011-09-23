;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: edges1.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;; 
;;;     File:  "edges"
;;;   Module:  "analyzers;FSA:"
;;;  Version:  1.2 February 2007

;; 1.0 (5/5/93 v2.3) Cleaned it up, flushed pw options
;;     (5/13) fixed a bug
;;     (5/5/94) put in sugared call to set position status
;; 1.1 (8/1) added data-check to Try-edge-fsa on the return values
;;     (5/16/95) moved in the def-form
;; 1.2 (2/7/07) Added swap-top-two-starting-edges to handle problem of
;;      an earlier fsa getting farther than one that runs after it. 2/8 fixed
;;      use of :multiple in Do-fsa/s-for-edge (it could never have worked!)

(in-package :sparser)


;;;-----------------
;;; definition form
;;;-----------------

(defun define-edge-fsa (label function)
  (unless (or (symbolp label)
              (stringp label))
    (error "The label argument my be a symbol or a string~
            ~%  ~A is a ~A" label (type-of label)))

  (let* ((obj (resolve/make label))
         (rs (rule-set-for obj)))
    (unless rs
      (setq rs (establish-rule-set-for obj)))
    (let ((fsa-field (rs-fsa rs)))
      (setf (rs-fsa rs)
            (if fsa-field
              `(,function ,@fsa-field)
              `(,function)))
      (rs-fsa rs))))



;;;--------
;;; driver
;;;--------

(defun do-edge-level-fsas (edges position-scanned)
  (set-status :edge-fsas-done position-scanned)
  (when edges
    (tr :considering-edge-level-fsas edges position-scanned)
    (if (null (cdr edges))

      ;; There's only one edge
      (let* ((edge (car edges))
             (category (edge-category edge))
             (rs (rule-set-for category))
             (fsa-field (when rs (rs-fsa rs))))
        (unless (word-p category)
          (when fsa-field
            (if (null (cdr fsa-field))
              (try-edge-fsa (car fsa-field) edge position-scanned)
              (else
                (adjudicate-multiple-fsas
                 fsa-field edge position-scanned))))))

      ;; There's more than one edge.
      ;; Go through all the edges and make a list linking edges with
      ;; their fsas (if any) and note when there's more than one
      ;; fsa that goes with the edge.
      ;;
      (let ( fsa-edge-pairs  rs  fsa-field  )
        (dolist (edge edges)
          (unless (word-p (edge-category edge))
            (setq rs (rule-set-for (edge-category edge)))
            (when rs
              (setq fsa-field (rs-fsa rs))
              (when fsa-field
                (if (cdr fsa-field)
                  (push `((:multiple . ,fsa-field) . ,edge)
                        fsa-edge-pairs)
                  (push (cons (car fsa-field) edge)
                        fsa-edge-pairs))))))

        ;; now go through the list and check all possibilities
        (when fsa-edge-pairs
          (if (cdr fsa-edge-pairs)
            (then
              ;; more than one edge has an fsa (or fsas)
              (let (position-reached-this-time
                    farthest-position-so-far )
                (dolist (edge-pair fsa-edge-pairs)
                  (setq position-reached-this-time
                        (do-fsa/s-for-edge edge-pair position-scanned))
                  (when position-reached-this-time
                    (if farthest-position-so-far
                      (when (> (pos-token-index position-reached-this-time)
                               (pos-token-index farthest-position-so-far))
                        (setq farthest-position-so-far
                              position-reached-this-time))
                      (setq farthest-position-so-far
                            position-reached-this-time))))
                farthest-position-so-far ))
            
            ;; only one edge to worry about.
            (let ((result (do-fsa/s-for-edge
                           (car fsa-edge-pairs) position-scanned)))
              result)))))))



(defun do-fsa/s-for-edge (edge-pair position)
  (if (and (consp (car edge-pair))
	   (eq (caar edge-pair) :multiple)) ;; `((:multiple . ,fsa-field) . ,edge)
    (adjudicate-multiple-fsas
     (cdr (car edge-pair))  ;; list of fsas
     (cdr edge-pair)  ;; the edge
     position)
    (else
      (try-edge-fsa (car edge-pair) ;; fsa
                    (cdr edge-pair) ;; edge
                    position))))
      


(defun adjudicate-multiple-fsas (list-of-fsas
                                 edge
                                 position-scanned)

  ;; do them all and take the one that consumes the largest amount
  ;; of the text
  (let ( farthest-position-reached farthest-index
         tie-for-farthest-position tied-index
         position-this-time index-this-time)

    (setq farthest-position-reached
          (try-edge-fsa (first list-of-fsas) edge position-scanned))

    (if farthest-position-reached ;; it could be Nil
      (setq farthest-index (pos-token-index farthest-position-reached))
      (setq farthest-index 0))

    (dolist (fsa (rest list-of-fsas))
      (setq position-this-time
            (try-edge-fsa fsa edge position-scanned))
      (when position-this-time
        (setq index-this-time (pos-token-index position-this-time))
        (cond (tie-for-farthest-position
               (cond ((= index-this-time tied-index))
                     ((> index-this-time tied-index)
                      (setq farthest-position-reached position-this-time
                            farthest-index index-this-time)
                      (setq tie-for-farthest-position nil))))
              ((> index-this-time farthest-index)
               (setq farthest-position-reached position-this-time
                     farthest-index index-this-time))
              ((= index-this-time farthest-index)
               (setq tie-for-farthest-position position-this-time
                     tied-index index-this-time))
	      ((< index-this-time farthest-index)
	       ;; Each successful fsa execution will introduce an edge as
	       ;; well as reach a position. A shorter edge on top of a
	       ;; longer one will hide it from the parser. This will
	       ;; fix the problem.
	       (swap-top-two-starting-edges position-scanned
					    farthest-position-reached)))))

    (cond (tie-for-farthest-position tie-for-farthest-position )
          (farthest-position-reached farthest-position-reached )
          (t nil))))

(defun swap-top-two-starting-edges (start-pos end-pos)
  (let ((starting-ev (pos-starts-here start-pos))
	(ending-ev (pos-ends-here end-pos)))
    (unless (>= (ev-number-of-edges starting-ev) 2)
      (break "Not enough edges on ~a to do the swap" starting-ev))
    (let* ((current-top (ev-top-node starting-ev))
	   (index-of-just-below (- (ev-number-of-edges starting-ev) 2))
	   (just-below (aref (ev-edge-vector starting-ev) index-of-just-below)))
      ;(break "top: ~a~%just-below: ~a" current-top just-below)
      (setf (aref (ev-edge-vector starting-ev) index-of-just-below) 
	    current-top)
      (setf (aref (ev-edge-vector starting-ev) (1+ index-of-just-below))
	    just-below)
      (setf (ev-top-node starting-ev) just-below))))


;;;-------------------
;;; individual driver
;;;-------------------

(defun try-edge-fsa (fsa edge position-scanned)
  (tr :efsa-trying fsa edge position-scanned)
  (let ((position-reached
         (funcall fsa edge position-scanned)))

    (if position-reached
      (then
        (unless (position-p position-reached)
          (error "The fsa ~A~
                  ~%returned the value ~A~
                  ~%which is illegal. A fsa must return either a ~
                  a position or nil" fsa position-reached))
        (tr :efsa-succeeded position-reached)
        position-reached )
      (else
        (tr :efsa-failed)
        nil ))))

