;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "object"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version: July 2021

;; Initiated 5/18/21

(in-package :sparser)


(defvar *words-to-triggers* (make-hash-table)
  "Associates words or polywords with a instance of the spotter
   class that is executed when the word is encountered.
   This table feeds spot-word and spot-polyword via the
   lookup function target-word-to-spot")

(defun add-word-to-spot (word spotter)
  (setf (gethash word *words-to-triggers*) spotter))

(defun remove-word-to-spot (word)
  (remhash word *words-to-triggers*))


(defclass word-spotting-group (note-group)
  ()
  (:documentation "Links a set of spotters. Stored in the inherited
    notables slot"))

(defclass word-spotting-group-instance (note-group-instance)
  ()
  (:documentation "An instance of a set of spotters in a particular document"))
     

(defclass spotter (notable)
  ((word :initarg :for :accessor backpointer))
  (:documentation "This is the type of thing we want to identify
    via word-spotting -- a particular word or polyword. The setup
    routine supplies a name for it (in the name slot). We also use
    the kind and group fields of notable. The trigger field doesn't
    make sense for these."))

(defclass spot-entry (note-entry)
  ()
  (:documentation "Once we've spotted something we're looking for,
    we (try to) use get-entry-for-notable to get from the spotter instance
    to its set of entries, one for each instance, recording the edge
    when that makes sense."))

(setup-find-or-make spotter) ; notable)
(setup-find-or-make spot-entry) ;note-entry)
(setup-find-or-make word-spotting-group) ;note-group)
(setup-find-or-make word-spotting-group-instance) ;note-group-instance)

;; (defmethod print-object ((s spotter) stream)
;;   (print-unreadable-object (s stream)
;;     (let ((na



(defgeneric setup-word-to-spotter (phrase spotter)
  (:documentation "Add the word or polyword ('phrase') to the table
    associated with this spotter.
    If no spotter is supplied, then we fashion one from the phrase
    (/// but how do we tie it to a group??)")
  (:method ((w word) (s spotter))
    (add-word-to-spot w s))
  (:method ((pw polyword) (s spotter))
    (add-word-to-spot pw s)))


#+ignore ;; mine for when there's not pre-build spotter
(defun setup-word-to-spot  (string &key ((:name supplied-name)) note)
  "Instantiate a spotter based on the supplied keys and add it
   to the table the driver - spot - uses.
   Constructs a name to instantiate the spotter, then populates
   it given what's in the keys"
  (let* ((word (resolve/make string)) ;; word or polyword
         (name-to-use supplied-name))
    (let ((s (make-instance 'spotter
                            :name name-to-use
                            :for word)))
      (when note (setup-note-for-spotting s note))
      (add-word-to-spot word s)
      s)))
#+ignore
(defun setup-note-for-spotting (spotter note)
  (let* ((name
          (etypecase note
            (string (intern (string-upcase note)
                            (find-package :sparser)))
            (symbol (unless (eq (string-package note) (find-package :sparser))
                      (intern (symbol-name note) (find-package :sparser))))))
         (category (define-category/expr name)))
    (setf (note-category spotter) category)))
    
           
