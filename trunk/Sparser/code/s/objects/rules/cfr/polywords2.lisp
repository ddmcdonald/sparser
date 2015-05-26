
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
;; 2.0 (5/19/15) Complete rebuild

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

;; (hashtable-to-alist 

(defun make-next-state (prior-state next-word)
  (let* ((words-so-far (pw-word-chain prior-state))
         (words (tail-cons next-word (copy-list words-so-far)))
         (prior-table (pw-continuations prior-state))
         (next-state (make-instance 'polyword-state
                       :word words)))
    ;;(push-debug `(,prior-table ,next-state ,next-word))
    ;;  (setq prior-table (car *) next-state (cadr *) next-word (caddr *))
    ;;(break "before")
    (setf (gethash next-word prior-table) next-state)
    ;;(break "after")
    next-state))


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
    ;;(format t "&The initial state of~a is ~a" pw initial-state)
    (loop
      (setq next-state (find-or-make-next-pw-state state next-word))
      (push next-state states)
      (when (null remaining-words)
        (setq final-state next-state)
        (return))
      ;;(format t "~&~s => ~a" (word-pname next-word) next-state)
    ;  (when (null next-word)
     ;   (return))
      (setq next-word (car remaining-words)
            remaining-words (cdr remaining-words)
            state next-state))

    ;;(push-debug `(,states ,words ,pw))
    (setf (pw-accept-state? final-state) pw)
    ;;(format t "~&The accept state is ~a" final-state)
    initial-state))
    

;;----------------------------------- old -----------------------------------------

;;;-----------------------
;;; making polyword-rules
;;;-----------------------

(defun construct-cfr-for-embedded-pw (pw)
  (error "There's still a call to construct-cfr-for-embedded-pw ~
     for ~a" pw)
  ;; called from construct-cfr when one of the labels on the
  ;; rhs is a polyword.  In a case like this, we just make a rule
  ;; whose lhs is the polyword, using the usual machinery below.
  ;; Also called from define-polyword/expr
  #+ignore
  (let ((earlier-cfr (pw-fsa pw)))
    (or earlier-cfr
        (let ((cfr (make-cfr :category pw
                             :rhs      (list pw)
                             :form     nil
                             :referent nil)))

          (construct-polyword-cfr cfr)))))

(defun construct-cfr-for-word-list-pw (pw list-of-words)
  ;; Called from define-polyword/from-words. This is really only
  ;; a hook if we want to do something different here
  (declare (ignore list-of-words))
  (construct-cfr-for-embedded-pw pw))


(defun construct-polyword-cfr (cfr)
  ;; called from Construct-cfr when the rhs is a 
  ;; list of length one containing a polyword.
  (let* ((pw (first (cfr-rhs cfr)))
         (words (pw-words pw))
         (first-word (first words)))

    ;; since the polyword is run as a chart-level fsa rather than
    ;; through the parser, this stands in for Knit-into-psg-tables
    ;; and for the rest of the thread of code in Construct-cfr.
    ;;   It's a copy of selected code from cfr;dotted

    (if (= 2 (length words))
      (polyword-doesnt-need-rollout cfr pw words first-word)

      (let ((dotted-rules
             (rollout-naries-from-the-left words cfr)))

        (add-pw-to-words-rules first-word cfr)
        
        (setf (cfr-plist cfr)
              `(:polyword ,pw
                :n-ary (,pw ,dotted-rules)
                ,@(cfr-plist cfr)))
        
        (let ((r-symbol (gen-cfr-symbol)))
          (catalog/cfr cfr r-symbol))
        cfr ))))



(defun polyword-doesnt-need-rollout (cfr pw words first-word)
  ;; this cfr has the polyword as its entire righthand side but
  ;; the polyword is just two words long.
  (setf (cfr-rhs cfr)
        words)
  (knit-in-binary-rule cfr)

  (add-pw-to-words-rules first-word cfr)
  (setf (cfr-plist cfr)
        `(:polyword ,pw
          ,@(cfr-plist cfr)))
  (let ((r-symbol (gen-cfr-symbol)))
    (catalog/cfr cfr r-symbol))
  cfr )



;;;------------
;;; subroutine
;;;------------

(defun add-pw-to-words-rules (first-word cfr)
  (let ((rs (word-rule-set first-word))
        fsa-field )
    (unless rs
      (setq rs (setf (word-rule-set first-word)
                     (make-rule-set :backpointer first-word))))
    (setq fsa-field (rs-fsa rs))
          
    ;; we only put one cfr in the fsa field, even if the word
    ;; is the start of many polywords.  The fsa interpreter
    ;; does the right thing.
    (let ( already-has-a-cfr? )
      (dolist (item fsa-field)
        (when (typep item 'cfr)
          (setq already-has-a-cfr? t)))
      (unless already-has-a-cfr?          
        (setf (rs-fsa rs) (push cfr fsa-field))))))

