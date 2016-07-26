;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "copulars"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2016


;;;--------------------------
;;; hedged copular relations
;;;--------------------------


#| Have to figure out an equivalent of biological in the restriction.
Examples in the localization articles -- exhaustive list

  "Mouse embryo fibroblasts (MEFs) isolated from ERK1 knockout mice 
seemed to proliferate faster than control cells."
  "These experiments seem to indicate that the proliferative signal 
is mediated by ERK2."
  "Bradykinin stimulation of protein kinase C seems to be 
such a required pathway."
  "this mechanism seems unlikely at present."
  "Therefore, it seems unlikely that the receptor is simply 
phosphorylated by Src."
  "but rather seem dependent on phosphatidylinositol 
3-kinase activity."
  "The initiating event seems to be an influx of extracellular Ca."
  "UV seems to provoke receptor activation."
  "the possible role of ligand involvement would seem unlikely."
  "While UV does seem to mimic growth factor activation of the receptor."
  "this interaction seems to be of  low stoichiometry."
|#

(define-category copula :specializes abstract) ;; not sure what to do beyond this

(defun make-copular-def (word-string)
  (let ((verb (intern (string-upcase word-string))))
    `(progn
       #+ignore
       (define-category ,verb :specializes copula
                        :binds ((tocomp t)
                                (subject t)
                                (theme t))
                        :realization
                        (:verb ,word-string
                               :etf (svo)
                               :s subject
                               :to-comp tocomp
                               :o theme))

       (def-form-rule (,verb adjective)
           :form vg
           :referent (:function make-copular-adjective left-edge right-edge))

       (def-form-rule (,verb ap)
           :form vp
           :referent (:function make-copular-adjective left-edge right-edge)))))

#+ignore ;; do this in the biology/verbs.lisp file for now
(loop for v in '("seem" "appear" "remain"
                 "become" "stay")
     do
     (eval (make-copular-def v)))


(defun make-copular-adjective (copula adjective)
  "Definition is conditionalized to the load to try and minimize
   disruption."
  (let ((script common-lisp-user::script)) ;; visible in backtrace
    ;; 7/25/16 possible values: bbn biology blocks-world c3
    ;;  default ern fire grok just-dm&p no-grammar
    (case script
      (biology
       ;;/// who else wants this conventional, 'depends on the subject'
       ;; version of the intepretation?
       (let ((i (individual-for-ref adjective)))
         (bind-dli-variable :copular-verb copula i)
         i))
      (otherwise
       ;;/// temp while reloading
       (let ((i (individual-for-ref adjective)))
         (bind-dli-variable :copular-verb copula i)
         i)))))

