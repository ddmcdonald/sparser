;;;---------------------------------------------------------------------------
;;; File Description:
;;;
;;;    Contains utility functions that are helpful in manipulating the
;;;    list representation that XMLS uses as the source or destination
;;;    of translation to or from XML.
;;;
;;; History/Bugs/Notes:
;;;
;;;   [2004/09/15:Robert P. Goldman] Created.
;;;
;;;---------------------------------------------------------------------------
(in-package :xmls)

(defun make-xmlrep (tag &key attribs children)
  `(,tag ,attribs ,@children))

(defun xmlrep-add-child! (xmlrep child)
  (nconc xmlrep (list child)))

(defun xmlrep-tag (treenode)
  (node-name treenode))

(defun xmlrep-tagmatch (tag treenode)
  (string-equal tag (xmlrep-tag treenode)))

(defun xmlrep-attribs (treenode)
  (node-attrs treenode))

(defun (setf xmlrep-attribs) (attribs treenode)
  (setf (node-attrs treenode) attribs))

(defun xmlrep-children (treenode)
  (cddr treenode))

(defun (setf xmlrep-children) (children treenode)
  (setf (cddr treenode) children))

(defun xmlrep-string-child (treenode)
  (let ((children (xmlrep-children treenode)))
    (if (and (eq (length children) 1) (typep (first children) 'string))
        (first children)
        (error "Cound't find value of ~A" treenode))))

(defun xmlrep-integer-child (treenode)
  (parse-integer (xmlrep-string-child treenode)))

(defun xmlrep-find-child-tags (tag treenode)
  "Find all the children of TREENODE with TAG."
  (remove-if-not #'(lambda (child) (xmlrep-tagmatch tag child))
                 (xmlrep-children treenode)))

(defun xmlrep-find-child-tag (tag treenode
                                  &optional (if-unfound :error))
  "Find a single child of TREENODE with TAG.  Returns an error
if there is more or less than one such child."
  (let ((matches (xmlrep-find-child-tags tag treenode)))
    (case (length matches)
      (0 (if (eq if-unfound :error)
             (error "Couldn't find child tag ~A in ~A"
                tag treenode)
             if-unfound))
      (1 (first matches))
      (otherwise (error "Child tag ~A multiply defined in ~A"
                        tag treenode)))))

(defun xmlrep-attrib-value (attrib treenode
                            &optional (if-undefined :error))
  "Find the value of ATTRIB, a string, in TREENODE.
if there is no ATTRIB, will return the value of IF-UNDEFINED,
which defaults to :ERROR."
  (let ((found-attrib (find-attrib attrib treenode)))
    (cond (found-attrib
           (second found-attrib))
          ((eq if-undefined :error)
           (error "XML attribute ~S undefined in ~S"
                  attrib treenode))
          (t
           if-undefined))))

(defun find-attrib (attrib treenode)
  "Returns the attrib CELL (not the attrib value) from 
TREENODE, if found.  This cell will be a list of length 2,
the attrib name (a string) and its value."
  (find attrib (xmlrep-attribs treenode)
        :test #'string=
        :key #'car))
  
(defun (setf xmlrep-attrib-value) (value attrib treenode)
  ;; ideally, we would check this...
  (let ((old-val (xmlrep-attrib-value attrib treenode nil)))
    (if old-val
        (cond ((null value)
               ;; just delete this attribute...
               (setf (xmlrep-attribs treenode)
                     (remove attrib (xmlrep-attribs treenode)
                             :test #'string=
                             :key #'first))
               nil)
              (t (let ((cell (find-attrib attrib treenode)))
                   (setf (second cell) value)
                   value)))
        ;; no old value
        (cond ((null value)
               nil)                         ; no old value to delete
              (t
               (setf (xmlrep-attribs treenode)
                     (append (xmlrep-attribs treenode)
                             (list (list attrib value))))
               value)))))

(defun xmlrep-boolean-attrib-value (attrib treenode
                                    &optional (if-undefined :error))
  "Find the value of ATTRIB, a string, in TREENODE.
The value should be either \"true\" or \"false\".  The
function will return T or NIL, accordingly.  If there is no ATTRIB,
will return the value of IF-UNDEFINED, which defaults to :ERROR."
  (let ((val (xmlrep-attrib-value attrib treenode
                                  if-undefined)))
    (cond ((string-equal val "true")
           t)
          ((string-equal val "false") nil)
          (t (error "Not a boolean value, ~A for attribute ~A."
                    val attrib)))))

