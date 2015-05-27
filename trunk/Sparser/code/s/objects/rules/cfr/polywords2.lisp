
;;; copyright (c) 1992-1994,2015  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "polywords"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   2.0 May 2015

;; 1.0 (9/7/92 v2.3) Cleared out the special indexes.
;; 1.1 (5/6/93) Changed it so that if the pw was binary it didn't get
;;      rolled out, which keeps a spurious rule from being created.
;;     (12/16/94) added version to rollout from regular words rather than presume
;;      it's got a string.
;; 2.0 (5/19/15) Complete rebuild. Finished 5/25/15.

(in-package :sparser)


;;; State object

(defclass polyword-state ()
  ((accept :initform nil :accessor pw-accept-state? 
    :documentation "Overloaded field that both indicates that
     we've reached a success state and the information on 
     what to do.")
   (continuations :initform (make-hash-table) :accessor pw-continuations
    :documentation "A table from words to states. If there
     are no continuations then this should be an accept state.
     If this is an accept state and there are also continuations
     then this reflects a prefix of a potentially larger pw.")
   (word-chain :type list :initarg :word :accessor pw-word-chain
    :documentation "The sequence of words (and no-space cases)
     that we had to go through to get to this state. Minimum
     is the initial word that triggers the search. Also used to
     intern states for find-or-make.")))

(defmethod print-object ((ps polyword-state) stream)
  (print-unreadable-object (ps stream)
    (format stream "pw-state:")
    (loop for w in (pw-word-chain ps)
      do (format stream " ~s" (word-pname w)))))


;;;-------------------------------------------
;;; Defining the state machine for a polyword
;;;-------------------------------------------

(defun construct-fsa-for-pw (pw)
  ;; called from define-polyword/expr all the fields of the pw
  ;; have been filled except fsa. The value we return goes into
  ;; that field. After this the pw is catalogued.
  (let* ((words (pw-words pw))
         (initial-state (find-or-make-initial-pw-state (first words)))
         (state initial-state)
         (next-word (second words))
         (states `(,initial-state))
         (remaining-words (cddr words))
         next-state  final-state  )
    (loop
      (setq next-state (find-or-make-next-pw-state state next-word))
      (push next-state states)
      (when (null remaining-words)
        (setq final-state next-state)
        (return))
      (setq next-word (car remaining-words)
            remaining-words (cdr remaining-words)
            state next-state))
    (setf (pw-accept-state? final-state) pw)
    initial-state))

(defun find-or-make-initial-pw-state (word)
  (or (and (word-rule-set word)
           (rs-fsa (word-rule-set word))) ;; find 
      (let ((initial-state (make-instance 'polyword-state
                             :word `(,word))))
        (let ((rs (word-rules word)))
          (unless rs
            (setq rs (make-rule-set :backpointer word))
            (setf (word-rule-set word) rs))
          (setf (rs-fsa rs) initial-state)))))

(defun find-or-make-next-pw-state (state next-word)
  (or (gethash next-word (pw-continuations state))
      (make-next-state state next-word)))

(defun make-next-state (prior-state next-word)
  (let* ((words-so-far (pw-word-chain prior-state))
         (words (tail-cons next-word (copy-list words-so-far)))
         (prior-table (pw-continuations prior-state))
         (next-state (make-instance 'polyword-state
                       :word words)))
    (setf (gethash next-word prior-table) next-state)
    next-state))

