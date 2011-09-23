;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "marker pairs"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  0.1 September 1994

;; initiated 5/20/94 v2.3.  6/9 added pair-interior actions and inhibited extra
;; completions.
;; 0.1 (9/22) Accomodated the referent of the edge in the lookup..copy to take
;;      a section object individual as well as a section-marker. Tweeked it 9/26

(in-package :sparser)

#|  These markers appear in the chart. The strings that define them
are made into polywords that are all rewritten as the same edge, either
'start-section' or 'end-section'.  The marker is incorporated as the
edge's referent. This makes them identical to sgml except for how
they are recognized, the fact that they can take interior markup, and
the awkwardness that, like DJNS markup, they do their work without
waiting for the fact that they are invariably embedded within angle
brackets to take effect.  |#

;;;-------
;;; hooks
;;;------- 

(define-completion-action (category-named 'start-section)
                          :markup
                          'start-section )

(define-completion-action (category-named 'end-section)
                          :markup
                          'end-section )

;;;---------
;;; drivers
;;;---------

#| These are called from completion -- Carry-out-actions -- as
   a direct call to the function rather than through a specially
   checked and packaged dispatch.  We have special functions here
   just so there's a hook should it develop that the actions
   here should be different from what's done for sgml tags. 
|#

(defun start-section (edge)
  (let* ((sm (edge-referent edge))
         (interior-markup? (sm-interior-markup sm)))
    (declare (ignore interior-markup?))
    (tr :starting-markup-pair sm edge)

    ;; these are balanced, recursive section markers, so they
    ;; get the same overhead as sgml tags.
    (start-sgml-section edge)))


(defun end-section (edge)
  (tr :ending-markup-pair edge)
  (end-sgml-section edge))


;;;---------
;;; details
;;;---------
#| The routines above are fine if the tags stand by themselves. Usually
   however they come wrapped in angle-brackets. These annotations will
   make sure that if the brackets are adjacent to the tag that the edge
   over the tag will be copied up to cover the bracket pair as well.
   Otherwise the pair would be covered with a generic edge 'angle-brackets'.
      When the tag has interior markup this is where we process it. |#

(define-interior-action (category-named 'start-section)
  :angle-brackets
  'look-for-interior-markup-then-copy)

(define-interior-action (category-named 'end-section)
  :angle-brackets
  'look-for-interior-markup-then-copy)


(defun look-for-interior-markup-then-copy (sm-edge
                                           pos-before-open pos-after-close
                                           pos-after-open pos-before-close 
                                           layout)

  ;; The section-marker edge appears just after the open angle bracket
  ;; and may or may not be followed by interior markup items between
  ;; it and the closing angle bracket.   We dispatch off of the layout
  ;; information and the capacity of the marker for interior markup
  ;; to determine what to do.  When this is finished we copy the data
  ;; on the section-marker edge up onto a new edge that spans the entire
  ;; region.
  (declare (ignore pos-after-open))

  (let* ((ref (edge-referent sm-edge))
         (sm (etypecase ref
               (section-marker ref)
               (individual
                (unless (or (itypep ref 'section-object)
                            (itypep ref 'paragraph))
                  (break "Assumption violation: Expected a section-object ~
                          but got a~%  ~A~%  ~A" (type-of ref) ref))
                (value-of 'type ref))))

         (interior-data (sm-interior-markup sm)))

    (when interior-data
      (unless (eq layout :single-span)
        ;; if it's a single span, then the region has only the sm-edge
        ;; in it and there's no point in looking for interior markup
        (let ((interior-items
               (successive-treetops :from (pos-edge-ends-at sm-edge)
                                    :to pos-before-close))
              (fn (first interior-data)))
          (funcall fn interior-items))))

    (make-edge-over-long-span pos-before-open
                              pos-after-close
                              (edge-category sm-edge)
                              :rule :copy-daughter-edge/pair-interior
                              :form (edge-form sm-edge)
                              :referent (edge-referent sm-edge))))



;;-- make sure that the sm edge only completes once

(inhibit-completion-when-subsumes
 (category-named 'start-section))

(inhibit-completion-when-subsumes
 (category-named 'end-section))

