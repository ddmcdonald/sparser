;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "resource"
;;;    Module:   "tools:basics"
;;;   Version:   July 2013

;; initiated 7/15/13 to provide a general facility for automating
;; the construction and management of resources.

(defclass resource-specification (named-object)
  ((storage-type
    :initform :recycled-list
    :initarg :storage-type :accessor storage-type
    :documentation "Determines indexing, access, ... methods")
   (access-type
    :documentation "Supplies a way to get one of these by accessing
      the resource itself.")
   (type-name :type symbol :initarg :type-name 
    :documentation "The name of the class (or perhaps struct) that
      we are creating a resource for.")
)
  (:documentation ""))  


(defclass resource ()
  ((resource-spec 
    :type resource-specification
    :accessor resource-spec))
  (:documentation "Used as a mixin in conjunction with the form
    def-resource-data-for to specify any overrides to the default
    values given in resource-specification. Designed with the
    defaults in mind, it provides slots for the needed storage, etc."))


;; (defmacro def-resource-data-for (class-name &

;;(defgeneric 

#| 
TThe type that we create
It's initialization method
its reclaim method
Its clean method

with a kons list
an init function
  which creates an alloq
the instance need to put itself somewhere that we can get it back 
from, perhaps a global table


That's a pack of methods, so the resource initialization has to 
make them according to the spec given in the class instance
|#

