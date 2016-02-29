;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "staging"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  February 2016

;; Initiated 2/25/16

(in-package :mumble)

#| 
|#

(defun stage (&rest descriptions-of-content-to-express)
  (when (cdr descriptions-of-content-to-express)
    (error "More than one thing to express. Not ready for that yet."))
  (setq descriptions-of-content-to-express 
        (launder-sexp-symbols-package descriptions-of-content-to-express
                                      (find-package :mumble)))
  (let* ((description (cdr descriptions-of-content-to-express))
         (classification (car description))
         (content (cadr description))
         (predicate (car content)))
    (unless (eq classification 'achieve)
      (error "Expected an 'achieve' directive but got ~a~
            ~%Don't know what to do" classification))
    
    ;; peg goes here on which to hang the results from
    ;; multiple things to be achieved. But that's
    ;; ruled out for now, so wait for use case
    (let ((dtn (achieve predicate content)))
      dtn)))


#| We need to say something to the user that will cause them
to do an action that will bring about the condition(s)
described in the
|#
;  (stage '(achieve (on (any block) :the-table)))

(defmethod achieve ((predicate (eql 'on)) (content t))
  "This is petty cut and dry since the only way to get something
   to be 'on' something else (given what 'on' means for us), is to
   'put' it there."
  (let  ((speech-act 'perform)

#| /// this case is taking a block out of the pool. If the block
was already known about, it would have a location and it
would probably be better so say something like "pick it up
and put it on the table". If it was a the top of a stack
we'd say "Take it off the stack and ..." |#
         (theme (second content)) ;; the thing we're moving
         (location (third content))
 
#|So the tacit first decision was that we're telling them
to move something, the only substantive question is the choice
of the verb. Which I'm going to punt for the moment.
|#
         (verb 'put))

    `(,speech-act (,verb ))))
  