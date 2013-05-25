;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "binding-centric"
;;;   Module:  "/interface/mumble/"
;;;  version:  April 2013

;; Broken out from interface 4/7/13

(in-package :sparser)

;;--- Check

(defmethod mumble::has-realization? ((i individual))
  ;; Called from mumble::realize
  (if *do-not-use-psi*
    (has-bindings? i)
    (else
     (unless *annotate-realizations*
       (error "You have to set *annotate-realizations* to t"))
     (or (indiv-rnodes i)
         (mumble::has-realization? (itype-of i))))))

(defun has-bindings? (i)
  (indiv-binds i))


;;;-----------------------------
;;; Construct DTN (or whatever)
;;;-----------------------------

;;--- realization-for
;; Called from mumble::realize -- has to return something
;; that it can consume


(defmethod mumble::realization-for ((e edge))
  (let ((referent (edge-referent e)))
    (if (null *do-not-use-psi*)
      (mumble::realization-for referent) ;; psi-route

      ;; new experiment 4/5/13
      (let ((shadow (find-or-make-shadow referent)))
        (or (tailored-realization shadow e referent)
            (make-derivation-tree-from-bindings
             referent e))))))


(defmethod mumble::realization-for ((c referential-category))
  ;; The only reason to realize a category is to retrieve
  ;; its name to provide a head word.
  (let ((s-word (extract-word-from-category-definition c)))
    (mumble::get-mumble-word-for-sparser-word s-word)))



;;; tailored realizations

(defmethod tailored-realization ((shadow t) edge referent)
  (push-debug `(,shadow ,edge ,referent))
  nil)


;;; from first principles

(defun make-derivation-tree-from-bindings (referent edge)
  (case (cat-symbol (edge-form edge))
     (category::np
      (make-np-dtn-from-bindings referent))
    (otherwise
     (push-debug `(,referent ,edge))
     (break "New form: ~a"
            (edge-form edge)))))

(defmethod make-np-dtn-from-bindings ((i individual))
  (with-bindings (category has-determiner) i
    (unless category (error "no category binding"))
    (ad-hoc-1 category has-determiner i)))

(defun ad-hoc-1 (head-category determiner-value i)
  ;; do it all by hand just to see something completely through
  (push-debug `(,head-category ,determiner-value ,i))
  ;; (setq head-category (car *) determiner-value (cadr *) i (caddr *))
  (let* ((dtn (mumble::make-derivation-tree-node
              :referent i))
         (phrase (mumble-phrase 'common-noun))
         ;; args = h
         (args (mumble::parameters-to-phrase phrase)))

    (setf (mumble::resource dtn)
          phrase)
    (mumble::make-complement-node (car args)
                                  head-category
                                  dtn)
    (setf (mumble::features dtn)
          `(,(convert-determiner-value-to-policy
              determiner-value)))
    dtn))


