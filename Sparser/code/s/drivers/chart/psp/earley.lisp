;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "earley"
;;;            drivers/chart/psp/
;;;  version:  May 2016

;; Initiated 5/23/16 lifting from other files

(in-package :sparser)


(defgeneric epredict (item)
  (:documentation
   "Given the item, set up its prediction"))

(defmethod epredict ((e edge))
  "Depending on what state we're in, Look up the phrase 
  that goes with the referent of this edge and set up
  its projection."
  (tr :epredict e)
  (let ((state (dot-state)))
   (tr :prediction-trigger e state)
    (case state
      (:initial
       (let* ((referent (edge-referent e))
              (type (etypecase referent
                      (individual (itype-of referent))
                      (category referent)))
              (mapping (mumble::krisp-mapping type))
              (word (edge-left-daughter e)))
         (cond
          (mapping
           (instantiate-predictions mapping))
          (t
           (push-debug `(,referent ,word)) (break "lp")))))
      (otherwise
       (push-debug `(,e))
       (error "Don't know what to predict in the state ~a"
              state)))))

(defgeneric escan (chart-item)
  (:documentation "'e' as in Earley. The item will be
       a word eventually. Right now it's an edge.
       Move the dot to the other end of the item and move
       other aspects of the state as appropriate"))
#|
    |#

(defmethod escan ((e edge))
  (tr :escan e)
  (let* ((end-pos (pos-edge-ends-at e))
         (dot (current-incremental-state))
         (state (state-of-interpretation dot)))
    (tr :moving-dot end-pos)
    (setf (dot dot) end-pos)
    (cond
      ((eq state :mvb-identified)
       ;; Our edge is for the verb
       ;; Pull the verb information off the path, where
       ;; we expect the verb to be first. Move
       (pop-predicted-path e))


      ((eq state :pending-individual)
       ;; The the next constituent is probably one of its arguments,
       ;; so we should confirm than and layout what they are.
       (let* ((path (predicted-path dot))
              (top-item (car path))
              (referent (edge-referent e))
              (prediction (when (category-p referent)
                            (mumble::krisp-mapping referent))))
         (cond
           (prediction ;; stub
            (push-debug `(,path ,prediction ,top-item))
            (lsp-break "~a makes a prediction" referent)
            :foo)
           (t
            (unless (pending-variable dot)
              ;; the state says we completed a verb
              ;; This operation will set up what's needed
              ;; to take up the next argument and set
              ;; the state to :expecting-argument to be
              ;; taken up by complete
              (setup-anticipated-arg-if-appropriate))))))
      (t
       (push-debug `(,e))
       (break "Need more guidance on what to do")))))
