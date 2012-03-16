;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992-1994,2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "display"
;;;   Module:  "objects;chart:positions:"
;;;  Version:  0.5 March 2012

;; 0.1 (1/29 v1.8)  Added the key :ends-rather-than-starts? to Display-
;;      chart-edges.
;; 0.2 (5/10 v1.8.5)  Added "Tree" and cleaned up
;; 0.3 (2/29/92 v2.2) fixed a typo, added rules to Display-edge-as-tree
;; 0.4 (6/16/92 v2.3) tweeking the way it looks
;; 0.5 (1/13/94) debugged Display-chart-terminals explicit From case for a
;;      large chart
;;     (5/18/09) Added mixin-category to display-edge-as-tree
;;     (3/4/12) quiet compiler

(in-package :sparser)

;;;----------------------
;;;  the position array
;;;----------------------

(defun display-position-array ()
  (terpri)
  (dotimes (n *number-of-positions-in-the-chart*)
    (let ((pos (chart-position n)))
    (format t "~%~A ~A ~A"
            pos (pos-token-index pos) (pos-terminal pos)))))


;;;---------------------------------------------------
;;;  the chart  --offsets within the position array
;;;---------------------------------------------------

(defparameter *default-style-for-displaying-chart*  :just-terminals
  "To change the style, this default could be rebound, or
   the choice can be passed to DC as an optional parameter.")

(defun display-chart
       (&key
        (stream *standard-output*)
        (style *default-style-for-displaying-chart*))
  (ecase style
   (:just-terminals
    (display-chart-terminals :stream stream))
   (:all-edges
    (display-chart-edges :stream stream))))


(defun display-chart-edges (&key (stream *standard-output*)
                                 from
                                 to
                                 ends-rather-than-starts?
                            &aux pos)
  (declare (special *position-array-is-wrapped* *number-of-next-position*
                    *next-array-position-to-fill*))
  (if (null from)
    (if *position-array-is-wrapped*
      (then
        (do ((cell-index (1+ *next-array-position-to-fill*)
                         (1+ cell-index)))
            ((= cell-index *number-of-positions-in-the-chart*))
          (setq pos (chart-array-cell cell-index))
          (display-edge-vector (if ends-rather-than-starts?
                                 (pos-ends-here pos)
                                 (pos-starts-here pos))
                               stream))
        (do ((cell-index 0 (1+ cell-index)))
            ((= cell-index *next-array-position-to-fill*))
          (setq pos (chart-array-cell cell-index))
          (display-edge-vector (if ends-rather-than-starts?
                                 (pos-ends-here pos)
                                 (pos-starts-here pos))
                               stream)))
      (else
        (dotimes (n *number-of-next-position*)
          (setq pos (chart-array-cell n))
          (display-edge-vector (if ends-rather-than-starts?
                                 (pos-ends-here pos)
                                 (pos-starts-here pos))
                               stream))))

    (else  ;;start with the position "from" and display until "to"
      (when (null to)
        ;; /// won't work when the array is wrapped
        (setq to *next-array-position-to-fill*))
      (do ((n from (1+ n)))
          ((= n (1+ to)))
        (display-edge-vector (if ends-rather-than-starts?
                               (pos-ends-here (chart-position n))
                               (pos-starts-here (chart-position n)))
                             stream)))))
      



(defun display-chart-terminals (&key (stream *standard-output*)
                                     from to
                                     &aux pos )
  (declare (special *position-array-is-wrapped* *number-of-next-position*
                    *next-array-position-to-fill*))
  (if (null from)
    (if *position-array-is-wrapped*
      (then
        (do ((cell-index (1+ *next-array-position-to-fill*)
                         (1+ cell-index)))
            ((= cell-index *number-of-positions-in-the-chart*))
          (setq pos (chart-array-cell cell-index))
          (format stream " ~A " (pos-token-index pos))
          (print-position/terminal pos))
        
        (do ((cell-index 0 (1+ cell-index)))
            ((= cell-index *next-array-position-to-fill*))
          (setq pos (chart-array-cell cell-index))
          (format stream " ~A " (pos-token-index pos))
          (print-position/terminal pos)))
      
      (else
        (dotimes (n *number-of-next-position*)
          (setq pos (chart-array-cell n))
          (format stream " ~A " (pos-token-index pos))
          (print-position/terminal pos stream))))


    (else  ;;start with the position "from" and display until "to"

      ;; check that the numbers are in bounds w.r.t. how far the
      ;; parse has gotten
      (when (> from *number-of-next-position*)
        (error "The From index, ~A, is larger than the length of ~
                the chart: ~A" from *number-of-next-position*))
      (when (> to *number-of-next-position*)
        (error "The To index, ~A, is larger than the length of ~
                the chart: ~A" to *number-of-next-position*))

      (let ((from-index (pos-array-index (chart-position from)))
            (to-index (if to
                        (pos-array-index (chart-position to))
                        *next-array-position-to-fill*)))
        (do ((n from-index (1+ n)))
            ((= n (1+ to-index)))
          (when (= n *number-of-positions-in-the-chart*)
            (setq n 0))
          (setq pos (chart-array-cell n))
          (format stream " ~A " (pos-token-index pos))
          (print-position/terminal pos))))))


;;;-------
;;; Trees
;;;-------

(defun display-edge-as-tree (edge
                             &optional (offset 0)
                                       (s *standard-output*))

  ;; a tree-on-its-side, just characters
  (let ((index (edge-position-in-resource-array edge))
        (label (edge-category edge))
        (start (pos-token-index (ev-position (edge-starts-at edge))))
        (end   (pos-token-index (ev-position (edge-ends-at edge))))
        (rule (edge-rule edge))
        (left-daughter  (edge-left-daughter  edge))
        (right-daughter (edge-right-daughter edge)))
    
    (let ((indentation-space (string-of-N-spaces offset))
          (label-string (typecase label
                          ((or category referential-category mixin-category)
                           (cat-symbol label))
                          (word 
                           (concatenate
                            'string "\"" (word-pname label) "\"" ))
                          (polyword
                           (concatenate
                            'string "\"" (pw-pname label) "\"" ))
			  (otherwise
			   (break "New case of label: ~a~%~a" 
				  (type-of label) label))))
          (rule-name
           (if rule
             (etypecase rule
               (cfr (concatenate 'string
                      "rule " (subseq (symbol-name (cfr-symbol rule)) 3)))
               (list (format nil "~A" rule))
               (symbol (string-downcase (symbol-name rule))))
             "terminal")))
      
      (format s "~&~AE~A ~A  ~30,2Tp~A - p~A  ~40,2T~A~%"
              indentation-space
              index
              label-string
              start
              end
              rule-name)
      
      (when left-daughter
        (etypecase left-daughter
          (edge (display-edge-as-tree left-daughter (+ offset 2) s))
          (word (display-word-in-tree left-daughter (+ offset 2) s))
          (polyword (display-pw-in-tree right-daughter (+ offset 2) s))
          (list (dolist (item left-daughter)
                  (display-edge-as-tree item (+ offset 2) s)))
          (symbol )))
      (when right-daughter
        (etypecase right-daughter
          (edge (display-edge-as-tree right-daughter (+ offset 2) s))
          (word (display-word-in-tree right-daughter (+ offset 2) s))
          (polyword (display-pw-in-tree right-daughter (+ offset 2) s))
          (symbol )))

      edge )))


(defun display-word-in-tree (word offset s)
  (format s "~&~A\"~A\"" 
          (string-of-N-spaces offset)
          (word-pname word)))
  

(defun display-pw-in-tree (word offset s)
  (format s "~&~A\"~A\"" 
          (string-of-N-spaces offset)
          (pw-pname word)))



(defun tree (n)
  (display-edge-as-tree (edge# n)))

