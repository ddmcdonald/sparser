;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2017 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "display-ontology"
;;;    Module:   interface/grammar/
;;;   Version:   October 2016

;; Adapted 10/22/16 from MAB's code for Trips.

(in-package :sparser)

#|(display-with-subcs category::top t ) --> stash on a variable, tree
  (write-as-org-tree tree :reference-system :sparser)
|#


(defun write-as-org-tree (tree &key reference-system)
  "Takes a sexp tree like that produced by (display-with-subcs category::top t )
   and asdf system to define where to save the file. This defaults to :trips-ont-viewer
   which is r3/code/TRIPS-upper-ont/. Not the best but it will do."
  (unless reference-system
    (setq reference-system :trips-ont-viewer))
  (let* ((script (script))
         (filename (string-append (string-downcase (symbol-name script)) ".org"))
         (pathname
          (asdf::system-relative-pathname reference-system filename)))
    (with-open-file (stream pathname
                            :direction :output :if-exists :supersede)
      (format stream "-*-org-*-~
                   ~%#+DATE: ~a~%"
              (date-&-time-as-formatted-string))
      (recursive-write-org-lines stream tree 0))))



(defun recursive-write-org-lines (stream tree indent) ;; lang map)
  "Recursively walks down an sexpr (tree) that encode the super/sub class relationships
   and writes the incantation for rendering that as a file to be interpreted in org-mode.
   Eg.  
    + 2 KR::ORGANISM  
      + 3 KR::SPECIES  
        + 4 KR::HUMAN  "
  (flet ((write-tree-ln (cat vars)
           (format stream "~%~VT+ ~d ~s ~@[vars: {~{~A~^, ~}}~]" ;; ~@[~80T=> ~s~]"
                   indent (round indent 2) cat vars
                   #+ignore(when map (lookup-krisp-mapping cat lang)))))
    (when tree
      (let* ((cat (car tree))
             (subs nil)
             (vars nil))
        (cond ((eq (second tree) :variables)
               (setf vars (third tree)
                     subs (cdddr tree)))
              (t (setf vars nil
                       subs (cdr tree))))

        ;; Fixed multi-word preposition problem by redesigning their names qua categories
        
        (write-tree-ln cat vars)
        (dolist (subt subs)
          (recursive-write-org-lines stream subt (+ 2 indent) #|lang map|#))))))



  
