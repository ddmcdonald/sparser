;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995-1996,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "save"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  1.0 August 2011

;; broken out of [define-rule] 4/27/95.  6/14 extended to have words in the 
;; mapping.  
;; 0.1 (7/28) tweeked the args passed via the funcall in rdt/Save-new-rule
;; 0.2 (8/28) parameterized the choice of dossier.  11/16 added an announcement
;;      of what had happened. (12/5) finished the announcement stuff
;;     (3/14) fixed typo in that.  (6/26/96) checked a pending breakpoint and
;;      removed it.
;; 1.0 (7/24/09) Fan-out in define-realization/expr because of shift to lexicalized
;;      variables bleeding into the call to instantiate-rule-schema.
;;     (2/8/11) #+ccl => #+mcl to deconflict with Clozure.
;;     (8/11/11) moved define-realization to objects/model/tree-families/radata1.lisp.

(in-package :sparser)


;;;--------------------------------
;;; Writing the rule out to a file
;;;--------------------------------

(defun rdt/save-new-rule ( &key (mapping *rdt/mapping*)
                                (etf *rdt/selected-schema*) )

  ;; Called from rdt/Readout-rule-tableau, which is that the 'evaluate'
  ;; button is wired to.

  (if *slvd-window*
    ;; That's the ultimate caller, so we should let it
    ;; finish the process
    (slvd/prepare-for-save-process)

    (else
      (with-open-file (outfile (or *rdt/dossier-to-use*
                                   *default-dossier-file*)
                               :direction :output
                               :if-exists :append
                               :if-does-not-exist :create)
        
        (if *slvd/save-routine*
          ;; This global comes from Autodef routines. It is specified
          ;; on the autodef datum and set by Autodefine-word
          (funcall *slvd/save-routine* outfile etf mapping)
          
          (write-realization-data outfile etf mapping)))
      
      
      (announce-effect-of-rule-definition)
      
      (setq *rdt/last-dossier-used*
            (or *rdt/dossier-to-use*
                *default-dossier-file*)))))




(defun write-realization-data (stream
                               &optional (etf *rdt/selected-schema*)
                                         (mapping *rdt/mapping*))
  
  (format stream
          "~&~
           ~%~
           ~%;; ~A~%"
          (date-as-formatted-string))

  (dolist (cfr-string (rdt/gloss-rules-created))
    (format stream "~&;; ~A~%" cfr-string))

  (format stream
          "~%(define-realization ~A~
           ~%~9,3T~A~
           ~%"
          (string-downcase (cat-symbol *rdt/reference-category*))
          (string-downcase (etf-name etf)))

  (writeout-dereferenced-mapping-for-revival mapping stream)
  (write-string ")" stream)
  (terpri stream))


(defun writeout-dereferenced-mapping-for-revival (mapping stream)
  (format stream "~&~9,3T(")
  (do* ((remaining-pairs mapping (cdr remaining-pairs))
        (one-ahead (cdr mapping) (cdr one-ahead))
        (pair (car remaining-pairs) (car remaining-pairs))
        (symbol (car pair) (car pair))
        (value (cdr pair) (cdr pair)))
       
       ((null symbol)
        (write-string ")" stream))

    (unless (eq value :nailed-down)
      ;; in which case it's burned into the etf's cases
      (format stream "(~A . "
              (string-downcase (symbol-name symbol)))
      
      (if (stringp value)
        (format stream "\"~A\"" (word-pname value))
        
        (format stream "~A)"
                (etypecase value
                  (lambda-variable
                   `(,(var-name value)
                     ,(string-downcase
                       ;; 7/25/13 That's nonsense, but var-binding-sites
                       ;; has been reworked
                       (cat-symbol (first value ;;(var-binding-sites value)
                                          )))))
                  (word
                   (format nil "\"~A\"" (word-pname value)))
                  ((or referential-category mixin-category category)
                   (string-downcase (cat-symbol value))))))
      
      (when one-ahead
        (format stream "~&~10,3T")))))


(defun vivify-mapping-exp (mapping-expression)
  (let ( mapping  symbol  value-exp  value )
    (dolist (pair mapping-expression)
      (setq symbol (car pair)
            value-exp (cdr pair))
      (setq value
            (etypecase value-exp
              (cons  ;; lambda variable
               (variable/category (first value-exp)
                                  (second value-exp)))
              (symbol
               (category-named value-exp))
              (string
               (define-word value-exp))))

      (unless value
        (if (symbolp value-exp)
          (setq value (define-category/expr value-exp nil))
          (break "Could not find a value for the expression~%~A~%~%"
                 value-exp)))

      (push `(,symbol . ,value)
            mapping))

    (nreverse mapping)))



;;;-----------------------------------------
;;; announcing the effect of the definition
;;;-----------------------------------------

#+mcl
(defun announce-effect-of-rule-definition ()
  ;; called from rdt/Save-new-rule
  (clear-widgets-off-the-rdt-visible-window-area)
  (move-the-announcement-widgets-onto-the-rdt-window)
  (let ((rule-text (concatenate-print-forms-of-cfrs *rdt/rules-defined*)))
    (ccl:set-dialog-item-text *rdt/result-rule-listing* rule-text)

    (ccl:set-dialog-item-text *rdt/result-saved-filename*
                              (or *rdt/dossier-to-use*
                                  *default-dossier-file*))))





;;--- actions  

(defun rdt/edit-the-save-file (check-the-file-button)
  (declare (ignore check-the-file-button))
  (ed (or *rdt/dossier-to-use*
          *default-dossier-file*)))
  

(defun rdt/close-the-rdt-tableau (save-tableau-ok-button)
  (declare (ignore save-tableau-ok-button))
  (warp-announcement-widgets-off-screen)
  (rtd/shutdown))


;;--- subroutine

(defun concatenate-print-forms-of-cfrs (list-of-cfrs)
  (let ((total-string ""))
    (do ((cfr (car list-of-cfrs) (car list-of-cfrs)))
        ((null list-of-cfrs))
        
        (setq total-string
              (concatenate 'string 
                           total-string 
                           (format nil "~A" cfr)))
        (pop list-of-cfrs)
        (when list-of-cfrs
          (setq total-string
              (concatenate 'string total-string "
")))
        )

    total-string ))
