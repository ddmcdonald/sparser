
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
   (word-chain :type list :initarg :prefix :accessor pw-word-chain
    :documentation "The sequence of words (and no-space cases)
     that we had to go through to get to this state. Minimum
     is the initial word that triggers the search. Also used to
     intern states for find-or-make.")))

(defclass polyword-middle-state (polyword-state)
  ((word :initarg :word :accessor pw-word
    :documentation "backpointer to the word")
   (polywords :initform nil :accessor pw-participates-in
    :documentation "A list of one or more polywords that have this
      word as of their interior words."))
  (:documentation "Provides as marker that this word is
    needed for this (these) polywords."))


(defmethod print-object ((ps polyword-state) stream)
  (print-unreadable-object (ps stream)
    (format stream "pw-state:")
    (loop for w in (pw-word-chain ps)
       do (format stream " ~s" (word-pname w)))))

(defmethod print-object ((ps polyword-middle-state) stream)
  (print-unreadable-object (ps stream)
    (format stream "pw-middle-state")
    (let ((word (pw-word ps)))
      (format stream " ..~s.." (pname word)))))

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
       (push pw (pw-participates-in next-state))
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
  (declare (special *use-occasional-polywords*))
  (cond
   (*use-occasional-polywords*
    (or (starts-occasional-polyword word) ;; find
        (setf (get-tag :occasional-polyword word)
              (make-instance 'polyword-state :prefix `(,word)))))
   (t
    (or (starts-polyword word) ;; find 
        (let* ((initial-state (make-instance 'polyword-state
                               :prefix `(,word)))
               (rule-set (word-rules word))
               (fsa-value (when rule-set (rs-fsa rule-set))))
          (cond
            ((null rule-set) ;; guarenteed new
             (setq rule-set (make-rule-set :backpointer word))
             (setf (word-rule-set word) rule-set)
             (setf (rs-fsa rule-set) `(,initial-state)))
            (fsa-value ;; existing case, e.g. for hyphen
             (push-polyword-state-onto-word word initial-state))
            (rule-set
             ;; has a rule set but no fsa values
             (setf (rs-fsa rule-set) `(,initial-state))))
          (setf (gethash word *polyword-initial-state*) initial-state)
          initial-state)))))

(defun find-or-make-next-pw-state (prior-state next-word)
  (or (gethash next-word (pw-continuations prior-state))
      (let* ((words-so-far (pw-word-chain prior-state))
             (words (tail-cons next-word (copy-list words-so-far)))
             (prior-table (pw-continuations prior-state))
             (next-state (make-instance 'polyword-middle-state
                           :word next-word
                           :prefix words)))
        (setf (gethash next-word prior-table) next-state)
        (push-polyword-state-onto-word next-word next-state)
        next-state)))
