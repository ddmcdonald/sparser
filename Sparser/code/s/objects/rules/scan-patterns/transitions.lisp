;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "transitions"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  0.1 August 1997

;; initiated 9/21/95. Extended delete routine to expunge the multiplications 7/12/96
;; 7/17 tweeked subroutines a bit.
;; 0.1 (9/11) took out the 'delete if one already exists' check from define-sp-transition.
;;     (8/17/97) fixed typo in function name. 

(in-package :sparser)

;;;-----------
;;; structure
;;;-----------

(defstruct (scan-pattern-transition
            (:include unit)
            (:conc-name #:sp-transition-)
            (:print-function  print-scan-pattern-transition))
  
  state
  pattern-item
  next-state
  print-string
  )


;;;----------
;;; printing
;;;----------

(defun print-scan-pattern-transition (obj stream depth)
  (declare (ignore depth))
  (format stream "#<transition ~A>"
          (sp-transition-print-string obj)))


(defun make-transition-print-string-from-exp (keyword1 elmt keyword2)
  (concatenate 'string
               (string-downcase (symbol-name keyword1))
               " + "
               (etypecase elmt
                 (string
                  (concatenate 'string "\"" elmt "\""))
                 (keyword
                  (string-downcase (symbol-name elmt)))
                 (symbol
                  (string-downcase (symbol-name elmt))))
               " -> "
               (string-downcase (symbol-name keyword2))))



;;;---------------------------------------
;;; indexing the transition object per-se
;;;---------------------------------------

(defparameter *string-to-scan-pattern-transition* (make-hash-table
                                                   :test #'equal))

(defun sp-transition-named (print-string)
  (gethash print-string *string-to-scan-pattern-transition*))

(defun index-sp-transition (spt print-string)
  (setf (gethash print-string *string-to-scan-pattern-transition*)
        spt))

(defun define-sp-transition-object (print-string)
  (let ((obj (make-scan-pattern-transition
              :print-string print-string)))

    (index-sp-transition obj print-string)
    obj ))


(defun delete/sp-transition (spt)
  (flush-sp-transition-from-multiplier-table spt)
  (remhash (sp-transition-print-string spt)
           *string-to-scan-pattern-transition*)
  (delete/scan-pattern-state (sp-transition-state spt))
  (delete/scan-pattern-state (sp-transition-next-state spt)))



(defun flush-sp-transition-from-multiplier-table (spt)
  (declare (special *word-scan-transition-id* *digits-scan-transition-id*
                    *punctuation-scan-transition-id* *edge-multiplication-table*))
  (let* ((from-id (state-id (sp-transition-state spt)))
         (item (sp-transition-pattern-item spt))
         (item-id
          ;; This typecase is copied from the one in Add-transition-to-network
          ;; except that the type checks have been removed since the transition
          ;; couldn't have been made (and thus available for deletion) unless
          ;; they'd been passed.
          (etypecase item
            (keyword (ecase item
                       (:word *word-scan-transition-id*)
                       (:digits *digits-scan-transition-id*)
                       (:punctuation *punctuation-scan-transition-id*)))
            (word
             (car (rs-left-looking-ids (word-rule-set item))))
            (scan-pattern 
             (car (rs-left-looking-ids
                   (label-rule-set (category-named (sp-name item)))))))))

    (let ((key (+ from-id item-id))
          (entry (multiply-ids from-id item-id)))

      (if (consp entry)
        (if (cdr entry) ;; more than one, so we have to leave the others.
          (setf (gethash key *edge-multiplication-table*)
                (delete (sp-transition-next-state spt) entry))
          ;; just one (debris from earlier deletions)
          (remhash key *edge-multiplication-table*))
        (remhash key *edge-multiplication-table*))

      spt )))



;;;------
;;; form
;;;------

(defun assimilate-transition-set (list-of-transition-expressions)
  (let ( transitions )
    (dolist (exp list-of-transition-expressions)
      (push (define-sp-transition exp) transitions))
    (nreverse transitions)))


(defun define-sp-transition (exp)
  (let ((name-of-from-state (first exp))
        (plus-sign (second exp))
        (pattern-element-expression (third exp))
        (arrow (fourth exp))
        (name-of-to-state (fifth exp)))

    (unless (and (eq plus-sign '+) (eq arrow '->))
      (break "Syntax error: the plus sign and/or arrow are not ~
              in~%their expected places in:~%   ~A~
              ~%Check the form.~%" exp))

    (unless (and (keywordp name-of-from-state)
                 (keywordp name-of-to-state))
      (break "Syntax error: the objects at the positions where ~
              the states should be~%in:  ~A~
              are not keywords. Check the form.~%" exp))

    (let* ((print-string (make-transition-print-string-from-exp
                         name-of-from-state pattern-element-expression
                         name-of-to-state))
           ;; 9/11 code
           (existing-tr (sp-transition-named print-string)))

      ;; 9/11 unclear what this is supposed to be doing, but it's at
      ;; odds with the check in Update-no-space-pattern, so changing
      ;; to the policy of reusing existing transitions rather than
      ;; replacing them.
      #+ignore
      (when (sp-transition-named print-string)
        (format t "There is already a transition named~%    ~A~
                   ~%Deleting it.~%" print-string)
        (delete/sp-transition (sp-transition-named print-string)))

      ;; 9/11 replacement code
      (if existing-tr
        existing-tr

        (let ((tr (define-sp-transition-object print-string))
              (from-state
               (or (scan-pattern-state-named name-of-from-state)
                   (define-scan-pattern-state name-of-from-state)))
              (next-state
               (or (scan-pattern-state-named name-of-to-state)
                   (define-scan-pattern-state name-of-to-state)))
              (pattern-item
               (decode-pattern-element-expression pattern-element-expression)))

          (setf (sp-transition-state tr) from-state)
          (setf (sp-transition-pattern-item tr) pattern-item)
          (setf (sp-transition-next-state tr) next-state)
          
          (multiple-value-bind (key existing-cases)
                               (lookup-scan-transition/make-keys 
                                from-state pattern-item)
            
            (when existing-cases
              (unless (if (consp existing-cases)
                        (member next-state existing-cases)
                        (eq next-state existing-cases))
                (break "There are still existing cases for ~A~
                        ~%   ~A~%" print-string existing-cases)))
            
            
            (setf (gethash key *edge-multiplication-table*)
                  next-state)
            
            tr ))))))



;;;---------------------------------------------------
;;; Adding the transition to the multiplication table
;;;---------------------------------------------------
                    
(defun lookup-scan-transition/make-keys (from-state item)
  (declare (special *word-scan-transition-id* *digits-scan-transition-id*
                    *punctuation-scan-transition-id*))
  (let ((from-id (state-id from-state))
        (item-id
         (etypecase item
           (keyword
            (ecase item
              (:word *word-scan-transition-id*)
              (:digits *digits-scan-transition-id*)
              (:punctuation *punctuation-scan-transition-id*)))
           (word
            (let ((rs (word-rule-set item)))
              (unless rs
                (break "Threading bug in defining process: no rule-set ~
                        for the word:~%   ~A~%~%" item))
              (car (rs-left-looking-ids rs))))
           (scan-pattern
            (let ((category (category-named (sp-name item))))
              (unless category
                (break "Threading bug in defining process: the scan ~
                        pattern~%  ~A~%does not have a corresponding ~
                        category~%~%" item))
              (let ((rs (label-rule-set category)))
                (unless rs
                  (break "Threading bug in defining process: no rule-set ~
                          for the category:~%   ~A~%~%" category))
                (car (rs-left-looking-ids rs))))))))
    
    (let ((key (+ from-id item-id))
          (existing-cases (multiply-ids from-id item-id)))
      
      (values key existing-cases))))



;;;------------------------------
;;; testing transition output(s)
;;;------------------------------

(defun ml/sp (keyword item-exp)   ;; symbols and strings, as in the source
  (let ((state (scan-pattern-state-named keyword)))
    (unless state
      (error "There is no scan-pattern state named ~A~%" keyword))

    (let ((item (decode-pattern-element-expression item-exp)))
      (unless item
        (error "There is no scan-pattern item ~A~%" item-exp))

      (scan-transition-output state item))))

(defun ml/sp/data (keyword item-exp)   ;; symbols and strings, as in the source
  (let ((state (scan-pattern-state-named keyword)))
    (unless state
      (error "There is no scan-pattern state named ~A~%" keyword))

    (let ((item (decode-pattern-element-expression item-exp)))
      (unless item
        (error "There is no scan-pattern item ~A~%" item-exp))

      (scan-transition-data state item))))


(defun scan-transition-output (state item)  ;; formerly tr
  ;; Does the multiplication that will be done at runtime and returns
  ;; the resulting entry -- equivalent of ML.  Convenient for checking
  ;; whether a new transition is clashing with an established one since
  ;; that would result in a list of states rather than a single state.
  (check-scan-transition-output state item))
   ;; formerly 
   ;; (sp-transition-state tr) (sp-transition-pattern-item tr)


(defun check-scan-transition-output (from-state item)
  (declare (special *word-scan-transition-id* *digits-scan-transition-id*
                    *punctuation-scan-transition-id*))
  (let ((from-id (state-id from-state))
        (item-id (etypecase item
                   (keyword (ecase item
                              (:word *word-scan-transition-id*)
                              (:digits *digits-scan-transition-id*)
                              (:punctuation *punctuation-scan-transition-id*)))
                   (word
                    (car (rs-left-looking-ids (word-rule-set item))))
                   (scan-pattern 
                    (car (rs-left-looking-ids
                          (label-rule-set (category-named (sp-name item)))))))))

    (multiply-ids from-id item-id)))


(defun scan-transition-data (from-state item &optional (stream *standard-output*))
  (declare (special *word-scan-transition-id* *digits-scan-transition-id*
                    *punctuation-scan-transition-id*))
  (let ((from-id (state-id from-state))
        (item-id (etypecase item
                   (keyword (ecase item
                              (:word *word-scan-transition-id*)
                              (:digits *digits-scan-transition-id*)
                              (:punctuation *punctuation-scan-transition-id*)))
                   (word
                    (car (rs-left-looking-ids (word-rule-set item))))
                   (scan-pattern 
                    (car (rs-left-looking-ids
                          (label-rule-set (category-named (sp-name item)))))))))

    (let ((key (+ from-id item-id))
          (existing-cases (multiply-ids from-id item-id)))

      (format stream "~&from-state = ~A, id = ~A~
                      ~%item = ~A, id = ~A~%"
              from-state from-id item item-id)
      (values key existing-cases))))
