;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "scan prefixed"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  1.2 January 1995

;; split out from [scan1] 8/3/94 v2.3   Tweeking ...9/1.  Added 'infinitive' to
;; Determinant-... 10/24
;; 1.0 (11/14) getting more information from the prefixes. 11/15 added parsing of
;;      the prefix against the body.
;; 1.0 (12/1) wrote Do-prefixed-verb-group-segment since vg prefixes were being trapped
;;      but none of the uniform prefixed-segment ops were being done.
;; 1.1 (12/30) commented out call to parse the prefix of non-vgs
;; 1.2 (1/17/95) added provisions for no items in VG case.
;;     (1/23) specialized prefix parser for vgs

(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------

(defun scan-treetops-and-mine (starts-at ends-at)
  ;; called from dm/Analyze-segment when the coverage is either
  ;; discontinuous edges or some-adjacent-edges
  (let* ((s (define-segment starts-at ends-at))
         (prefix (edge-starting-at starts-at)))
    (if prefix
      (scan-treetops/prefixed s prefix starts-at ends-at)
      (if (function-word? (pos-terminal starts-at))
        ;; those won't show up as edges in the standard grammar
        (scan-treetops/fn-word-prefixed s starts-at ends-at)
        (scan-treetops/no-prefix s starts-at ends-at)))))


;;;---------------------
;;; cases dispatched to
;;;---------------------

(defun scan-treetops/fn-word-prefixed (s starts-at ends-at)
  (let ((fn-word (pos-terminal starts-at)))
    (multiple-value-bind (segment-category status)
                         (analyze-segment-prefix/word fn-word)

      (bind-variable 'prefix fn-word s)
      (when status
        (bind-variable 'discourse-status status s))

      (if segment-category
        (do-prefixed-segment s
                             segment-category
                             nil                ;; prefix edge
                             starts-at
                             (chart-position-after starts-at)
                             ends-at)
        (if *break-on-pattern-outside-coverage?*
          (break "Function word \"~A\" starts segment but isn't determinant"
                 (word-pname fn-word))
          (do-prefixed-segment s
                               segment-category
                               nil
                               starts-at
                               (chart-position-after starts-at)
                               ends-at))))))



(defun scan-treetops/prefixed (s prefix-edge starts-at ends-at)
  (tr :scan-treetops/prefixed prefix-edge)
  (multiple-value-bind (segment-category status)
                       (analyze-segment-prefix prefix-edge starts-at)

    (bind-variable 'prefix (edge-category prefix-edge) s)
    (when status
      (bind-variable 'discourse-status status s))

    (if segment-category
      (if (eq segment-category category::verb)
        (do-prefixed-verb-group-segment s prefix-edge
                                        starts-at ends-at)
        (do-prefixed-segment s
                             segment-category
                             prefix-edge
                             starts-at
                             (pos-edge-ends-at prefix-edge)
                             ends-at))
      (else
        ;; there's an edge starting at the first word, but it doesn't
        ;; have a syntactically informative label. Most likely we have
        ;; another instance of a recently defined term
        (let ((prefix-category (edge-category prefix-edge)))

          (cond ((eq (edge-form prefix-edge) category::content-word)
                 (tr :prefix-is-content-word)
                 (scan-treetops/mined-term/s s starts-at ends-at))

                ((polyword-p prefix-category)
                 (tr :prefix-is-polyword)
                 (scan-treetops/mined-term/s s starts-at ends-at))

                (t (when *break-on-pattern-outside-coverage?*
                     (break "New case: the segment \"~A\"~
                             ~%has a prefix edge with the category ~A"
                            (string-of-words-between starts-at ends-at)
                            prefix-category))
                   (scan-treetops/mined-term/s
                    s starts-at ends-at))))))))



;;;----------------
;;; final pathways
;;;----------------

(defun do-prefixed-segment (s informative-category
                            prefix-edge
                            prefix-start body-start ends-at)
  (tr :prefix-is-informative informative-category)
  (let ((items (mine-treetops
                body-start ends-at s
                informative-category)))

    ;(when prefix-edge
    ;  (parse-prefix-to-segment-interior items prefix-edge))

    (categorize-segment s items informative-category)
    (span-mined-segment s prefix-start ends-at items
                        :label informative-category
                        :form informative-category)))




(defvar *start-of-prefixed-verb-group* nil
  "Set by Do-prefixed-verb-group-segment. Read by Debug-vg-segment/edge-
   as-mvb-but-more-words and other pattern-applying routines.")

(defvar *end-of-prefixed-verb-group* nil
  "Set by Do-prefixed-verb-group-segment. Reset by intra-segment debris
   analysis routines if they conclude that the vg segment started at the
   prefix was made too long.")


(defun do-prefixed-verb-group-segment (s prefix-edge
                                       starts-at ends-at)

  ;; This is its own routine because it gets the 'informative-category'
  ;; off the full vg edge rather than the prefix edge (assuming the vg
  ;; does properly extend beyond the prefix).

  (setq *start-of-prefixed-verb-group* starts-at
        *end-of-prefixed-verb-group* ends-at)

  (let* ((items (mine-vg s prefix-edge starts-at ends-at))
         (vg-edge (when items
                    (parse-vg-prefix-to-vg-interior items
                                                    prefix-edge))))

    (let ((informative-category 
           (if vg-edge
             (edge-form vg-edge)
             (edge-form prefix-edge))))

      (categorize-segment s items informative-category)

      (span-mined-segment s
                          starts-at
                          *end-of-prefixed-verb-group*
                          items
                          :label informative-category
                          :form informative-category ))))




(defun scan-treetops/mined-term/s (s starts-at ends-at)
  ;; we don't have any interesting syntactic information about
  ;; this segment unless we can determine it by inference from
  ;; prior instances of this sequence of edges.
  (let ((terms (mine-treetops starts-at ends-at s)))

    (categorize-segment s terms)
    (span-mined-segment s starts-at ends-at terms)))



(defun scan-treetops/no-prefix (s starts-at ends-at)
  ;; the segment doesn't have a prefix, so we probably can't know
  ;; its syntactic category, but it does have some terms we've already
  ;; seen
  (tr :scan-treetops/from-right)
  (let ((terms (mine-treetops starts-at ends-at s)))

    (categorize-segment s terms)
    (span-mined-segment s starts-at ends-at terms)))


;;;-------------------------------------
;;; parsing the prefix against the body
;;;-------------------------------------

(defun parse-prefix-to-segment-interior (items  &optional prefix-edge)
  ;; called from Do-prefixed-segment
  ;; /// the items have edges over them. This should be rethreaded
  ;;     to operate at a time when the edges are available or get
  ;;     them passed through or something
  (unless (null (cdr items))
    (break "Assumption violated: there is more than one item in ~
            the body of a prefixed segment"))

  (let ((body-edge
         (right-treetop-at/edge (pos-edge-ends-at prefix-edge))))

    (let ((edge (check-one-one prefix-edge body-edge)))
      (unless edge
        (break "The prefix edge: ~A~
                ~%did not combine with the edge over the body:~
                ~%    ~A~
                ~%Do (update-workbench) and look at the debris"
               prefix-edge body-edge))
      edge )))



(defun parse-vg-prefix-to-vg-interior (items prefix-edge)
  ;; called from Do-prefixed-verb-group-segment
  (unless (null (cdr items))
    (break "Assumption violated: there is more than one item in ~
            the body of a prefixed verb group"))

  (let ((body-edge
         (right-treetop-at/edge (pos-edge-ends-at prefix-edge))))

    (or (look-for-adverb-verb-combination prefix-edge body-edge)
        (let ((edge (check-one-one prefix-edge body-edge)))
          (unless edge
            (break "The prefix of a verb group: ~A~
                    ~%did not combine with the edge over the body:~
                    ~%    ~A~
                    ~%Do (update-workbench) and look at the debris"
                   prefix-edge body-edge))
          edge ))))
  

