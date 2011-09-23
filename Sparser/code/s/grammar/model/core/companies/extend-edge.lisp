;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "extend edge"
;;;   Module:  "model;core:names:companies"
;;;  version:  1.2 April 1991      (v1.8.1)

;; 1.1 (4/3) Changed call to adapt to new company indexing protocol
;; 1.2 (4/4) fixed complications in the appending of extended and old
;;     edges.

(in-package :CTI-source)


(defun extend-company-edge (edge extensions)
  ;; construct a new edge, canibalizing the original

  (let ((leftmost-edge (first extensions))
        total-treetop-sequence )

    (let ((new-edge (next-edge-from-resource))
          (starting-vector (edge-starts-at leftmost-edge))
          (ending-vector   (edge-ends-at edge))
          (category (edge-category edge)))
      
      (knit-edge-into-positions new-edge
                                starting-vector
                                ending-vector)
      (setf (edge-category new-edge)  category)
      (setf (edge-starts-at new-edge) starting-vector)
      (setf (edge-ends-at new-edge)   ending-vector)
      (setf (edge-rule new-edge)      :CA-extension-of-edge)
      (setf (edge-used-in new-edge)   nil)

      (setf (edge-left-daughter new-edge)
            (setq total-treetop-sequence
                  (extend-name-sequence
                   extensions (edge-left-daughter edge) category)))

      (setf (edge-right-daughter new-edge) :CA-extended-edge)
      (dolist (e extensions) (de-activate-edge e))
      
      (setf (edge-form new-edge) (edge-form edge))
      (setf (edge-referent new-edge)
              (establish-referent-of-a-company
               total-treetop-sequence new-edge))

      (when *trace-edge-creation*
        (format t "~&~%creating ~A from ~A~%    rule: ~A"
                new-edge edge :CA-extension-of-edge))
      
      (complete new-edge)
      (assess-edge-label category new-edge)
      new-edge )))



(defun extend-name-sequence (extension-list tail tail-category)
  ;; the extension is a list of name edges or their equivalent,
  ;; the tail may be a non-terminal name, in which case it has to be
  ;; unpacked.  The pathway to look through for the unpacking may
  ;; depend on the category of edge involved

  (cond ((listp tail)
         (append extension-list tail))
        ((typep tail 'edge)
         (case (cat-symbol tail-category)
           (category::company
            (let ((daughters-of-original (edge-left-daughter tail)))
              (when (typep daughters-of-original 'edge)
                ;; it's a non-terminal
                (setq daughters-of-original
                      (edge-left-daughter daughters-of-original)))
              (append extension-list
                      daughters-of-original)))
           (otherwise
            (break/debug "Extend-name-sequence:  the tail being ~
                          extended has a new~%       category: ~A~%"
                         tail-category))))
        (t
         (break/debug "Extend-name-sequence: unexpected kind of ~
                       object passed in as~%   the tail:  ~A~%"
                      tail))))
