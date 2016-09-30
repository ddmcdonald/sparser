;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-

(in-package :sparser)

;; Add node attribute missing from CL-DOT.
(pushnew '(:fontcolor cl-dot::text) cl-dot::*node-attributes* :test #'equal)

(defvar *subcategory-graph-limit* nil
  "The maximum number of subcategories to include in a graph.")

(defvar *graph-subcat-frames* nil
  "If true, include subcategorization frames in the graph.")

(defstruct elided-categories n)

(defun make-subcat-table (sf)
  "Format a subcategorization frame as an HTML table."
  (check-type sf subcategorization-frame)
  (labels ((title (sf)
             (symbol-name (cat-symbol (subcat-for sf))))
           (label (label)
             (etypecase label
               (string label)
               (symbol (prin1-to-string label))
               ((or word polyword) (format nil "\"~a\"" (pname-for label)))))
           (var (var)
             (symbol-name (var-name var)))
           (v/r (v/r)
             (etypecase v/r
               (list (format nil "(~{~a~^ ~})" (mapcar #'v/r v/r)))
               (category (symbol-name (cat-symbol v/r)))
               (symbol (symbol-name v/r)))))
    (let ((patterns
           (remove-if-not (lambda (pattern)
                            (eql (subcat-source pattern) (subcat-for sf)))
                          (subcat-patterns sf))))
      `(:shape :box
        :label (:html nil
                 (:table ((:border "0"))
                   (:tr nil
                     (:td ((:colspan "3") (:align "CENTER")) (:b nil ,(title sf))))
                   ,@(when patterns
                       '((:tr nil
                           (:td ((:align "RIGHT")) (:b nil "Label"))
                           (:td ((:align "LEFT")) (:b nil "Variable"))
                           (:td ((:align "LEFT")) (:b nil "Value Restriction")))))
                   ,@(loop for pattern in patterns
                           as label = (subcat-label pattern)
                           and v/r = (subcat-restriction pattern)
                           and var = (subcat-variable pattern)
                           collect `(:tr nil
                                      (:td ((:align "RIGHT")) ,(label label))
                                      (:td ((:align "LEFT")) ,(var var))
                                      (:td ((:align "LEFT")) ,(v/r v/r))))))))))

;;; CL-DOT protocol methods.

(defmethod cl-dot:graph-object-node (graph (object elided-categories))
  (declare (ignore graph))
  (make-instance 'cl-dot:node
                 :attributes `(:shape :none
                               :label ,(format nil "... (~d more)"
                                               (elided-categories-n object)))))

(defmethod cl-dot:graph-object-node (graph (object category))
  (declare (ignore graph))
  (make-instance 'cl-dot:node
                 :attributes `(:shape :none
                               :label ,(symbol-name (cat-symbol object))
                               ,@(when (mixin-category-p object)
                                   '(:color :blue :fontcolor :blue)))))

(defmethod cl-dot:graph-object-node (graph (object subcategorization-frame))
  (declare (ignore graph))
  (make-instance 'cl-dot:node :attributes (make-subcat-table object)))

(defmethod cl-dot:graph-object-points-to ((graph (eql 'above)) (object category))
  (append (remove object (super-categories-of object))
          (when *graph-subcat-frames*
            (let ((sf (get-subcategorization object)))
              (when sf (list sf))))))

(defmethod cl-dot:graph-object-points-to ((graph (eql 'below)) (object category))
  (let* ((subcategories (subcategories-of object))
         (n (length subcategories)))
    (nreverse
     (append (sort (subseq subcategories 0 (when *subcategory-graph-limit*
                                             (min n *subcategory-graph-limit*)))
                   #'string-lessp :key #'cat-name)
             (when (and *subcategory-graph-limit* (< *subcategory-graph-limit* n))
               (list (make-elided-categories :n (- n *subcategory-graph-limit*))))
             (when *graph-subcat-frames*
               (let ((sf (get-subcategorization object)))
                 (when sf (list sf))))))))

;;; Top-level graphing functions.

(defun graph-categories (category graph &key
                         (limit *subcategory-graph-limit*)
                         (subcats *graph-subcat-frames*)
                         (attributes '(:rankdir "LR"))
                         (format "x11")
                         (output-file
                          (if (string= format "x11")
                            "/dev/null"
                            (format nil "categories.~a" format))) &aux
                         (*subcategory-graph-limit* limit)
                         (*graph-subcat-frames* subcats))
  (check-type category category "a category")
  (check-type graph symbol "a category graph name")
  (cl-dot:dot-graph
   (cl-dot:generate-graph-from-roots graph (list category) attributes)
   output-file :format format)
  (unless (string= format "x11")
    (probe-file output-file)))

(defun graph-categories-above (category &rest args)
  (apply #'graph-categories category 'above args))

(defun graph-categories-below (category &rest args)
  (apply #'graph-categories category 'below args))

(defun graph-subcats-above (category &rest args)
  (apply #'graph-categories category 'above :subcats t args))

(defun graph-subcats-below (category &rest args)
  (apply #'graph-categories category 'below :subcats t args))
