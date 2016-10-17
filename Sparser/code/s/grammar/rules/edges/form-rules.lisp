;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2014-2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form rules"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  July 2016

;; initiated 10/12/92 v2.3
;; 0.1 (6/4/93) allowed a default if the rule doesn't specify the form
;;      of the new edge
;; 0.2 (6/16) added variation for explicitly specified lhs.
;;     (3/30/94) fixed missing arg in break stmt.
;; 0.3 (8/5/94) for the '..explicit-lhs' case made a subr for the passive calculation
;; 0.4 (11/20/14) Added option for the referent calculation to abort the
;;      edge (keep it from being knit into the chart) following pattern in
;;      make-default-binary-edge. 2/12/15 Removed ~% from edge trace
;;      and added a break to notice referent failures. 
;; 5/25/2015 added call to place-referent-in-lattice around computation 
;;  of edge-referent field
;; 6/2/15 Moving the edge kniting operations above the referent computation
;;  so that we have access to the edge arrangement from there. 


(in-package :sparser)


(defun form-rule-completion (edge-to-promulgate   ;; a keyword
                             left-edge right-edge
                             rule)
  (let* ( head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource)))

    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))

    (setf (edge-category edge) promulgated-label)
    (setf (edge-form     edge) (or (cfr-form rule)
                                   (edge-form head-edge)))
    (setf (edge-rule edge) rule)

    (knit-edge-into-positions edge
                              (edge-starts-at left-edge)
                              (edge-ends-at right-edge))
    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)

    (let ((referent (catch :abort-edge
                      (referent-from-rule left-edge right-edge
                                          edge rule))))
      (if (eq referent :abort-edge)
        (then
         ;;(push-debug `(,edge ,rule ,left-edge ,right-edge))
         ;;(break "Why did this referent computation fail~%  ~a" 
           ;;     (cfr-referent rule))
          ;; This function feeds its value to a check routine like
          ;; Check-one-one, which in turn returns the edge as its
          ;; value. If we return nil from here, then that nil will
          ;; be passed through as the value of the call to the
          ;; check routine, which should suffice for the parsing
          ;; routines not to see an edge here even though the
          ;; rule went through
          (remove-edge-from-chart edge)
          (setf (edge-used-in left-edge) nil)
          (setf (edge-used-in right-edge) nil)
          nil )

        (else          
          (setf (edge-referent edge) referent)
          (complete edge)
          
          (when *trace-edge-creation*
            (format t "~%creating ~A from ~A~
         ~%    rule: ~A"
                    edge
                    (edge-position-in-resource-array edge)
                    rule))
          
          (assess-edge-label promulgated-label edge)
          edge )))))




(defun form-rule-completion/explicit-lhs (edge-to-promulgate
                                          lhs-category
                                          left-edge
                                          right-edge
                                          rule )
  (let* (  head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource))
         coerced-form )
    
    (knit-edge-into-positions edge
                              (edge-starts-at left-edge)
                              (edge-ends-at right-edge))
    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))
    
    (etypecase lhs-category
      (category)
      (symbol
       (unless (eq lhs-category :passive)
         (break "Unanticipated keyword used as the explicit ~
         category in ~%a form rule: ~A" lhs-category))
       (let ((passive-category
              (lookup-passive-counterpart promulgated-label)))
         (if passive-category
           (setq lhs-category passive-category)
           (else
             (setq lhs-category promulgated-label)
             (setq coerced-form (category-named 'verb+passive)))))))
    
    
    (setf (edge-category edge) lhs-category)
    (setf (edge-form edge) (or coerced-form
                               (cfr-form rule)
                               (edge-form head-edge)))
    (setf (edge-rule edge) rule)
    
    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)
    (setf (edge-referent edge)
          (place-referent-in-lattice
           (referent-from-rule left-edge right-edge
                               edge rule)
           edge))
    (complete edge)
    
    (when *trace-edge-creation*
      (format t "~%creating ~A from ~A~
         ~%    rule: ~A"
              edge
              (edge-position-in-resource-array edge)
              rule))
    
    (assess-edge-label promulgated-label edge)
    edge ))

#|
An ETF like passive/with-by-phrase (../tree-families/transitive.lisp --  
in short-cut form it's svo-passive, see tree-families/families.lisp)
has a case that looks like this:
             (:subject (s  (np/patient vp/+ed)
                  :instantiate-individual result-type
                  :binds (patient left-edge)
                  :head right-edge))
The slash in "vp/+ed" is noticed by decode-slashed-label and
handled by the compose-name macro-let function in replace-from-mapping,
all of which is in objects/model/tree-families/subrs.lisp. That
is where the +ed category is created, using find-or-make-category-object
which is the weak way of making a category whose purpose is just
to be a label in a rule. 

This ungainly passive machinery comes into play because of
the three form rules in syntax/be.lisp that say that their
'new-category' is the symbol :passive, e.g.

(def-form-rule (be verb+ed)
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

That gets encoded by def-form-rule/resolved where the information
is stored on the completion field of the passive-marking rule.

sp> (ir 938)
#<PSR-938 {verb+ed} → be verb+ed>
  plist       = (:grammar-module #<grammar-module *DEFAULT-SEMANTICS-FOR-VG*>..
  symbol      = rule::psr-938
  category    = :syntactic-form
  rhs         = (#<ref-category BE> #<ref-category VERB+ED>)
  rhs-forms   = nil
  completion  = (:right-edge . :passive)
  form        = #<ref-category VG+PASSIVE>
  relation    = nil
  referent    = ((:head right-referent)..
  schema      = nil

The runtime decoding is organized by do-explicit-rule-completion in
analyzers/psp/edges/cs.lisp ('cs' for 'context sensitive') and
ends up in form-rule-completion/explicit-lhs above. 

|#

;;;---------
;;; passive
;;;---------

(defparameter *passive-label* (make-hash-table))

(defun lookup-passive-counterpart (verb-category)
  ;; The passive rule dictates the new-category ':passive'.
  ;; This is a pseudo category that is checked for specifically
  ;; in the form-rule edge-builder Form-rule-completion/explicit-lhs.
  ;; It is done in conjunction with a capability in the rdata to
  ;; define a category that will be an automatically constructed
  ;; variant on what is substituted in e.g. "vg/+ed".  The "+ed"
  ;; is concatentated onto the name of the substituted category
  ;; and a new category constructed with that name.
  
  (let* ((stem (cond ((category-p verb-category)
                      (symbol-name (cat-symbol verb-category)))
                     (t
                      (warn "lookup-passive-counterpart for non-category ~s~%"
                            verb-category)
                      (return-from lookup-passive-counterpart nil))))
         (name-of-passive-label
          (or
           (gethash stem *passive-label*)
           (setf (gethash stem *passive-label*)
                 (intern ;;(concatenate 'string stem "+ED")))
                  (string-append stem '#:+ed)
                  (find-package :category)))))
         (passive-category
	  (and
	   (boundp name-of-passive-label)
	   (category-named/c-symbol name-of-passive-label))))

   #| letting the called change the form category instead of complaining
    (unless passive-category
      (break "Expected there to be a category named ~A~
              ~%Check the realization data for ~A~
              ~%If you continue, a category with that named will be~
              ~%constructed and used." name-of-passive-label stem)
      (setq passive-category
            (find-or-make-category-object
             name-of-passive-label :def-category))) |#

    passive-category ))
