;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "edges"
;;;    Module:  "interface;grammar:"
;;;   version:  0.1 January 1994

;; initiated 2/10/92 v2.2
;; 0.1 (1/10/94) redesigned from scratch for MCL2.0 as part of the Workbench

(in-package :sparser)

;;;----------------
;;; the view/table
;;;----------------

(defvar *edges-table* nil)

(defparameter *edges-in-view-of-current-article* nil)

(defclass Edges-view (sequence-dialog-item) ())

(defun setup-edges-view ()
  (setq *edges-table*
        (make-instance 'edges-view
          :view-container *workshop-window*
          :view-position #@(10 170)
          :view-size #@(200 225)
          :view-font '("Geneva" 9 :plain)
          :visible-dimensions #@(1 10)
          :table-sequence *edges-in-view-of-current-article*
          :dialog-item-action 'act-on-edge-in-view
          :sequence-wrap-length 8000
          :selection-type :single
          :table-print-function 'print-edge-in-view
          :table-vscrollp t
          :table-hscrollp nil
          ;;  :cell-size #@(80 15) ;; ?????
          )))


;;;-----------------------
;;; edge printing routine
;;;-----------------------

(defun print-edge-in-view (e stream)
  (let ((category (edge-category e))
        (start (pos-array-index (pos-edge-starts-at e)))
        (end (pos-array-index (pos-edge-ends-at e))))

    (let ((label-string
           (etypecase category
             ((or referential-category category)
              (string-downcase (symbol-name (cat-symbol category))))
             (word (word-pname category))
             (polyword (pw-pname category)))))

      (format stream "~A  ~A  ~A" start label-string end))))



;;;-------------
;;; action item
;;;-------------

(defvar *selected-edge/edges-view* nil)
(defvar *selected-cell/index/edges-view* nil)


(defun act-on-edge-in-view (table)
  (when (selected-cells table)
    (let* ((index (cell-to-index table (car (selected-cells table))))
           (edge (elt (table-sequence table) index)))
      (format t "~%cell ~A  ~A" index edge)
      (setq *selected-edge/edges-view* edge
            *selected-cell/index/edges-view* index)

      (select-text-for-edge edge))))

#| part of old action
      (eval-enqueue
       (ccl::pop-up
        :item-list `(("show text" . 
                      (select-text-covered-by-edge/current-article ,edge))
                     ("inspect" . (inspect ,edge))
                     ("set *e*" . (setq *e* ,edge)))
        :dispatch-function :ask-item))  |#

;;;--------------------------------
;;; selecting edges from text-view
;;;--------------------------------

(defun select-edge/edges-view (ed)
  (when *selected-cell/index/edges-view*
    (cell-deselect *edges-table* 0 *selected-cell/index/edges-view*))
  )




;;;-------------
;;; subroutines
;;;-------------
#|
(defparameter *max-length-of-treetop-in-dialog* 80)

(defun print-treetop-for-edge-menu (e  &optional (stream *standard-output*))
  (if (typep e 'symbol)
    (format stream "")
    (let ((string (with-output-to-string (string-stream)
                    (print-treetop e
                                   (etypecase e
                                     (edge (ev-position (edge-starts-at e)))
                                     (word nil))
                                   string-stream ))))
      (format stream "~A"
              (if (> (length string) *max-length-of-treetop-in-dialog*)
                (truncate-treetop-string string)
                string )))))

(defun truncate-treetop-string (string)  ;; 80 chars burned in
  (let* ((reversed-string
          (coerce (nreverse (coerce string 'list)) 'string))
         (tail (subseq reversed-string 1 22)))
    (concatenate 'string
                 (subseq string 0 53)
                 " ... "
                 (coerce (nreverse (coerce tail 'list)) 'string))))


(defun generate-edge-list-for-current-article ()
  (let ( edge-list )
    (if *edge-resource-is-wrapped*
      (then
        (do ((i (1+ *position-of-next-available-edge-in-resource*)
                (1+ i)))
            ((= i *length-of-edge-resource*))
          (push (elt *all-edges* i) edge-list))
        (do ((i 0 (1+ i)))
            ((= i *position-of-next-available-edge-in-resource*))
          (push (elt *all-edges* i) edge-list)))

      (dotimes (i *index-of-furthest-edge-ever-allocated*)
        (push (elt *all-edges* i) edge-list)))

    (setq *edges-in-view-of-current-article* (nreverse edge-list))
    (length *edges-in-view-of-current-article*)))


(defun generate-treetop-list-for-current-article ()
  (let ((start-pos (if (still-in-the-chart 0)
                     (chart-position 0)
                     (chart-position (1+ *first-chart-position*))))
        end-pos edge edge-list )
    (loop
      (setq edge (right-treetop-at start-pos)
            end-pos (etypecase edge
                      (edge (ev-position (edge-ends-at edge)))
                      (word   (chart-position-after start-pos))
                      (symbol (chart-position-after start-pos))))

      (push edge edge-list)

      (when (or (eq   (pos-terminal end-pos) word::end-of-source)
                (null (pos-terminal end-pos)))
        (return))

      (setq start-pos end-pos))

    (nreverse edge-list)))  |#

