;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "staging"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  February 2016

;; Initiated 2/25/16

(in-package :mumble)


;; put a block on the table (empty table)
;;   (stage '(achieve (on (any block) :table)))

;; push them together (b1 and b2 are on the table)
;;   (stage '(achieve (touching-horizontal :b1 :b2)))

;; put a block on top of b1
;;   (stage '(achieve (on (any block) :b1)))
;; 3/7/15 =>
;;   (perform ("put" #<parameter o1> (any block) #<parameter o2> :b1))

(defun stage (&rest descriptions-of-content-to-express)
  "Given one or more descriptions of situations to 'achieve',
  return a DTN that when uttered in the present context,
  i.e. passed to mumble::say, should result in the user
  bring that situation about."
  (when (cdr descriptions-of-content-to-express)
    (error "More than one thing to express. Not ready for that yet."))
  (setq descriptions-of-content-to-express 
        (reintern-symbols descriptions-of-content-to-express :mumble))
  (let* ((description (car descriptions-of-content-to-express))
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
  (let*  ((speech-act 'perform)

#| /// this case is taking a block out of the pool. If the block
was already known about, it would have a location and it
would probably be better so say something like "pick it up
and put it on the table". If it was a the top of a stack,
we'd say "Take it off the stack and ..." |#
          (theme (second content)) ;; the thing we're moving
          (location (third content)) ;; where the move it to
 
#|So the tacit first decision was that we're telling them
to move something, the only substantive question is the choice
of the verb. Which I'm going to punt for the moment.
|#
          (verb "put")
          (linked-phrase (krisp-mapping verb))
          (map (parameter-variable-map linked-phrase)))

    (let* ((theme-param (get-parameter-from-map map 'theme))
           (loc-param (get-parameter-from-map map 'location))
           (message
            `(,speech-act (,verb ,theme-param ,theme
                                 ,loc-param ,location)) ))
      message )))

(defun get-parameter-from-map (map variable-name)
  (let ((var-name-string (symbol-name variable-name)))
  (loop for pvp in map
    as variable = (corresponding-variable pvp)
    as name = (sp::var-name variable)
    when (string-equal (symbol-name name)
                       var-name-string)
    return (corresponding-parameter pvp))))
  