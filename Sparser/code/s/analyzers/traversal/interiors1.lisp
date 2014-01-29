;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "interiors"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  June 1994

;; initiated 10/19/91. fleshed out 10/30. had to put dispatch on
;; label type in 10/31.   5/15 fixed it for the case of the daughter
;; edge being an ambiguous word -- "AN".  6/8/94 added trap for unclassified
;; cases
;; 1.0 (6/9) redefined the basis of the dispatch action from a cfr to a fn

(in-package :sparser)

;;;--------------
;;; general hook
;;;--------------


(defun copy-daughter-edge (daughter start-pos end-pos)
  (make-edge-over-long-span start-pos
                            end-pos
                            (edge-category daughter)
                            :rule :copy-daughter-edge/pair-interior
                            :form (edge-form daughter)
                            :referent (edge-referent daughter)))



;;;----------------
;;; runtime driver
;;;----------------

(defun dispatch-on-single-span-interior/angle-brackets (pos-before-open
                                                        pos-after-open
                                                        pos-before-close
                                                        pos-after-close)
  (declare (ignore pos-before-close))

  ;; get the spanning edge, then
  ;; see if its label has the :<_>interpretation tag on its plist
  ;; in which case execute that rule to form the edge over the
  ;;   whole bracketed segment

  (let ((daughter-edge (ev-top-node (pos-starts-here pos-after-open)))
        label cfr )
    (if (eq :multiple-initial-edges daughter-edge)
      (then
        (let ((edge-vector (ev-edge-vector (pos-starts-here pos-after-open)))
              plist )
          (dotimes (i (ev-number-of-edges (pos-starts-here pos-after-open)))
            (setq label (edge-category (aref edge-vector i))
                  plist (etypecase label
                          (category (cat-plist label))
                          (word (word-plist label))))
            (when (setq cfr (cadr (member :<_>interpretation plist)))
              (setq daughter-edge (aref edge-vector i))
              (return)))))
      (else
        (setq label (edge-category daughter-edge)
              cfr (cadr (member :<_>interpretation (plist-for label))))
                                 (etypecase label
                                   (category (cat-plist label))
                                   (word (word-plist label)))))
    (if cfr
      (if (cfr-p cfr)
        (then
          (break "some pair-interior rule involves a cfr definition")
          (let ((spanning-edge
                 (make-edge-over-long-span
                  pos-before-open
                  pos-after-close
                  (cfr-category cfr)
                  :rule cfr
                  :form (cfr-form cfr)
                  :referent
                  (case (cfr-referent cfr)
                    (:the-single-edge
                     (edge-referent daughter-edge))
                    (:right-daughter
                     (edge-referent
                      (edge-right-daughter daughter-edge)))))))

            (setf (edge-left-daughter spanning-edge) daughter-edge)
            (setf (edge-right-daughter spanning-edge)
                  :spanned-paired-punct-interior)
            spanning-edge ))
        (else
          ;; the only other possibility is a function
          (funcall cfr daughter-edge pos-before-open pos-after-close)))

      (else
        ;; Not defined in 1/27/14 load. Probably commented out somewhere
        ;;(trap-unclassified-phenomena-inside-<> pos-after-open)
        (let ((edge (make-edge-over-long-span
                     pos-before-open
                     pos-after-close
                     category::angle-brackets
                     :rule  :traversal/angle-brackets)))
          edge)))))

