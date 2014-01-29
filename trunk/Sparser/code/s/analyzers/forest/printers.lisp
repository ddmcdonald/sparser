;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2012-2014  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "printers"
;;;    Module:   "analyzers;forest:"
;;;   Version:   0.7 Januaey 2014

;; initiated 11/90
;; 0.1 (6/30/91 v1.8.1) Revised TTs to appreciate the possibility of the
;;      chart wrapping.
;; 0.2 (7/22 v1.8.6) Fixed an off-by-one bug in TTs when the chart
;;      is wrapped.
;; (6/19/92) added polywords case to etypecase
;; (6/26) fixed the way words print to get the symbol-based ones right
;; (9/3 v2.3) added case for referential-categories
;; 0.3 (6/4/93) Added a better display of multiple edges over a
;;      single span and got it to print End-of-source
;; 0.4 (12/13) changed increment on *first-chart-position* to 2 from 1 in the
;;      case where the chart has overflowed.   (7/12/94) added mixin-category
;; 0.5 (7/14) added segment printer. 7/18 added cases to it.  8/16 tweeked
;;      synchronization entry point.
;; 0.6 (8/22) parameterizing what's used as the segment printer and enabling tts
;; 0.7 (8/25/04) tweeking simple segment printer as per Scott's wishes.
;;     (5/28/12) added *readout-segments-inline-with-text*  along with the
;;      printer print-segment-and-pending-out-of-segment-words that it gates
;;      and their state variables. 10/10/12 Completely rewrote it
;;     (2/11/13) changed the init form for where print-segment left off
;;      so that it doesn't re-initalize when we're doing a stream of documents.
;;     (3/8/13) Fixed initialization problem with the init form for
;;      *where-print-segment-left-off*. 3/14 added print-treetop-labels-in-segment
;;      3/18 added tts-form and tts-ref. 8/16/13 Added display-bracketing
;;      1/27/14 added undisplay-bracketing

(in-package :sparser)

;;;----------------------------------------------------------------------
;;; integrating the timing of the printing of segments with the analysis
;;;----------------------------------------------------------------------

(defparameter *readout-segments* nil
  "Read in dm/Analyze-segment. Controls whether it considers calling
   Print-segment (subject to the flag just below - the full conditions
   is defined in Readout-segments?).")

(defparameter *readout-segments-inline-with-text* nil
  "Read in pts as an alternative to *readout-segments*. Drives an input
   printer that indicates segment boundaries inline with the stream of
   text. Keeps track of the words that fall between segments and prints
   them when each next segment is introduced and printed. ")

(defparameter *inline-treetop-readout* nil
  "Controls whether Synchronize-with-workbench-views makes a
   call to 'Readout-segments' to have the segmentation of the
   pending region of text written to the designated stream.")

(defparameter *stream-to-readout-treetops-to* *standard-output*
  "Specifies the stream (window, buffer) to which the segment
   readout will be written.")

(defparameter *inline-readout-function* 'readout-segments/sw
  "Read by Readout-the-next-portion-of-segments - set by hand")



(defvar *where-the-readout-left-off* nil)
(define-per-run-init-form '(setq *where-the-readout-left-off* nil))


;;--- Aggregate switch setter

(defun display-bracketing ()
  ;; Interleave the segment markers with
  ;; the running text.
  (setq *display-word-stream* nil)
  (setq *readout-segments-inline-with-text* t)
  (setq *record-bracketing-progress* t))

(defun undisplay-bracketing ()
  (setq *display-word-stream* t)
  (setq *readout-segments-inline-with-text* nil)
  (setq *record-bracketing-progress* nil))



;;--- driver

(defun readout-the-next-portion-of-segments (position-to-end-at
                                             &optional end-edge)

  (when (< (pos-token-index position-to-end-at)
           (if *where-the-readout-left-off*
             (pos-token-index *where-the-readout-left-off*)
             1))
    ;; this catches the case where the call is from the end-section
    ;; routine of scoping markup. The point where that section
    ;; started will have already been readout and we have to avoid
    ;; reading it out twice.
    (unless end-edge
      (format *stream-to-readout-treetops-to*
              "~&~%!! Missing 'end-edge' argument means some ~
               portion~%   of this trace may be about to ~
               repeat~%~%"))
    (setq position-to-end-at
          (chart-position-before (pos-edge-starts-at end-edge))))

  (funcall *inline-readout-function*
           *stream-to-readout-treetops-to*
           (if *where-the-readout-left-off*
             *where-the-readout-left-off*
             (chart-position 1))
           position-to-end-at)

  (setq *where-the-readout-left-off* position-to-end-at))



;;--- Call from moment of synchronization

#| This scheme fails to printout the very last tag in the article,
and it would miss any text that followed the last 'end tag' if
there were ever to be any.  ///hook into final actions ??  |#

(defun synchronize-with-segment-readout (start
                                         &optional end-edge)
  ;; called in Synchronize-with-workbench-views

  (when *inline-treetop-readout*
    (readout-the-next-portion-of-segments
     (etypecase start
       (edge (chart-position-before
              (pos-edge-starts-at start)))
       (position start))
     end-edge)))


;;;--------------------------------
;;; simple display of bracketing progress
;;;--------------------------------

(defun bracketing-tree (&optional (start-pos 0) (bracket-list *bracketing-progress*))
  (declare (special *bracketing-progress*))
  (let ((text-list nil))
    (do* ((index start-pos (1+ index))
          (pos (chart-position index) (chart-position index))
          (word (pos-terminal pos) (pos-terminal pos)))
        ((equal word word::end-of-source))
      (push (format nil "~a" (word-pname word)) text-list))
    (setf text-list (reverse text-list))
    (dolist (bracket bracket-list)
      (let* ((start (car bracket))
             (end (cdr bracket))
             (contents (subseq text-list start end)))
        (setf (nth start text-list) contents)
        (do ((i (1+ start) (1+ i)))
            ((= i end))
          (setf text-list (remove (nth (1+ start) text-list) text-list
                                  :start (1+ start) :count 1)))))
    ;; [sfriedman:20121215.1356CST] We don't care about the start char.
    (cdr text-list)))


(defun readout-bracketing ()
  (bracketing-tree))


;;;--------------------------------
;;; simple display of segmentation
;;;--------------------------------

(defun readout-segments/sw (&optional
                            (stream *standard-output*)
                            (starts-at
                             (if *position-array-is-wrapped*
                               *first-chart-position*
                               (chart-position 1)))
                            (ends-at
                             *number-of-next-position*))

  (readout-segments1/sw starts-at ends-at stream)
  "" )

(defun readout-segments1/sw (starting-position end-here stream)
  (let* ((tt (right-treetop-at starting-position))
         (next-position
          (etypecase tt
            (edge (pos-edge-ends-at tt))
            (word (chart-position-after starting-position))
            (symbol
             (if (eq tt :multiple-initial-edges)
               (chart-position-after starting-position)
               (break/debug "Treetop is an unexpected symbol: ~A" tt)))))
         label form )

    (format stream "~&")
    (etypecase tt
      (word (format stream "(\"~A\"~20,4Tclosed-class)" (word-pname tt)))
      (edge
       (setq label (edge-category tt)
             form (edge-form tt))
       (cond
        ((eq form (category-named 'section-marker)))
        ((eq label (word-named "<")))  ;; fencepost error on readout positions

        ((or (eq label (category-named 'quotation))
             (eq label (category-named 'parentheses)))
         (format stream "(\"~A\"~20,4Tclosed-class)"
                 (word-pname (pos-terminal starting-position)))
         (readout-segments/sw stream
                              (chart-position-after starting-position)
                              (pos-edge-ends-at tt)))

        ((one-word-long? tt)
         (etypecase label
           ((or category referential-category mixin-category)
            (print-one-word-segment/sw tt label stream))
           (word
            (format stream "(\"~A\"~20,4Tclosed-class)" (word-pname label)))
           (polyword
            (format stream "(\"~A\"~20,4Tclosed-class)" (pw-symbol label)))))

         (t (print-segment/sw (pos-edge-starts-at tt)
                              (pos-edge-ends-at tt)
                              tt
                              stream))))
      (symbol
       (unless (eq tt :multiple-initial-edges)
         (break "Data error: unanticipated kind of symbol as ~
                 value of treetop:~%   ~A" tt))
       (format stream "\"~A\""
               (word-pname (pos-terminal starting-position)))))
    ;;(format t "   ~A" tt)

    (if (or (eq next-position end-here)
            (eq (pos-terminal next-position) *end-of-source*)
            (null (pos-terminal next-position)))
      :done
      (readout-segments1/sw next-position end-here stream))))



(defun print-one-word-segment/sw (edge label stream)
  (format stream "~&(\"~A\"~20,4T~A)"
          (word-pname
           (pos-terminal (pos-edge-starts-at edge)))
          (string-downcase
           (cat-symbol label))))


(defun print-segment/sw (starts-at ends-at edge
                         &optional (stream *standard-output*))
  (format stream "~&")
  (write-string "(\"" stream)
  (write-string (string-of-words-between starts-at ends-at) stream)
  (format stream "\"~20,4T\"~A\")"
          (string-for-stem-of-edges-referent edge)))



(defun string-for-stem-of-edges-referent (edge)
  (let ((stem (stem-of-edges-referent edge))
        (head-word
         (word-pname (pos-terminal
                      (chart-position-before (pos-edge-ends-at edge))))))
    (if stem
      (word-pname stem)
      head-word)))

(defun stem-of-edges-referent (edge)
  (let ((ref (edge-referent edge))
        stem  terms )
    (when (and ref (individual-p ref))
      (when (itypep ref 'segment)
        ;; then we're too high, take the last of its terms
        (setq terms (value-of 'terms ref))
        (unless terms
          (break "Expected all segments to have 'terms' fields"))
        (unless ref
          (return-from stem-of-edges-referent nil)))
      (setq stem (value-of 'stem ref))
      stem )))




(defun print-segment (starts-at ends-at
                      &optional (stream *standard-output*))
  ;; used by inine LL printer
  (format stream "~&")
  (write-string "[ \"" stream)
  (write-string (string-of-words-between starts-at ends-at) stream)
  (write-string "\" ]" stream)
  (terpri stream))


;;;------------------------------------------------------------
;;; Integrating segment bracket printing with the print stream
;;;------------------------------------------------------------

(defvar *index-after-last-printed-close* nil)
(define-per-run-init-form '(setq *index-after-last-printed-close* nil))

(defvar *where-print-segment-left-off* 1)
(define-per-run-init-form
    '(unless *current-document-stream*
       (setq *where-print-segment-left-off* 1)))

(defun print-segment-and-pending-out-of-segment-words ;; new word-based version
    (start-pos end-pos &optional (stream *standard-output*))
  (when (there-are-words-between-segments start-pos)
    (print-words-between-segments start-pos stream))
  (format stream "[")
  (write-words-between-positions start-pos end-pos stream)
  (format stream "]")
  (setq *where-print-segment-left-off* (pos-token-index end-pos)))

(defun there-are-words-between-segments (pos)
  (< *where-print-segment-left-off* (pos-token-index pos)))

(defun write-words-between-positions (start-pos end-pos stream)
  (do* ((position start-pos next-position)
        (next-position (chart-position-after position)
                       (chart-position-after position)))
       ((eq position end-pos) :done)
    (print-word-and-ws position stream)))

(defun print-words-between-segments (end-pos &optional (stream *standard-output*))
  (do* ((position (chart-position *where-print-segment-left-off*)
                  next-position)
        (next-position (chart-position-after position)
                       (chart-position-after position)))
       ((eq position end-pos)
        (print-preceding-whitespace end-pos stream))
    (print-word-and-ws position stream)))

(defun print-word-and-ws (position &optional (stream *standard-output*))
  (let ((terminal (pos-terminal position)))
    (print-preceding-whitespace position stream)
    (when terminal ;; could there ever not be?
      (typecase terminal
        (word (format stream "~a" (word-pname terminal)))
        (otherwise
         (push-debug `(,terminal))
         (break "New type of terminal: ~a" (type-of terminal)))))))

(defun print-preceding-whitespace (position stream)
  (let ((preceding-ws (pos-preceding-whitespace position)))
    (when preceding-ws
      (typecase preceding-ws
        (word
         (format stream "~a" (word-pname preceding-ws)))
        (otherwise
         (push-debug `(,preceding-ws))
         (break "New type of preceding-ws: ~a" (type-of preceding-ws)))))))





;;;------------------
;;; the whole forest
;;;------------------

(defparameter *treetop-label-to-use* :category
  "Drives the choice in print-edge-as-category-and-text-segment
   at the final point of tts calls of what part of the edge
   to print: its :category, :form, or :referent.")

(defun print-treetops (&optional  ;; sugar for official displays
                       (stream *standard-output*)
                       start-pos
                       stop-pos )
  (unless (eq start-pos stop-pos)    ;; 1st call from synchronizer
    (tts stream start-pos stop-pos))
  (terpri stream)(terpri stream))

(defun tts-form ()
  (let ((*treetop-label-to-use* :form))
    (declare (special *treetop-label-to-use*))
    (tts)))

(defun tts-ref ()
  (let ((*treetop-label-to-use* :referent))
    (declare (special *treetop-label-to-use*))
    (tts)))

(defun tts (&optional
            (stream *standard-output*)
            (start-pos (if (still-in-the-chart 0)
                         (chart-position 0)
                         (chart-position (+ 2 *first-chart-position*))))
            stop-pos )
    (sucessive-tts/end-of-chart/print start-pos stop-pos stream))


(defun sucessive-tts/end-of-chart/print (starting-position
                                         &optional stop-pos
                                                   (stream *standard-output*))
  (let* ((tt (right-treetop-at starting-position))
         (ending-position
          (etypecase tt
            (edge (ev-position (edge-ends-at tt)))
            (word (chart-position-after starting-position))
            (symbol
             (if (eq tt :multiple-initial-edges)
               (chart-position-after starting-position)
               (break/debug "Treetop is an unexpected symbol: ~A" tt)))
            )))

    (print-treetop tt starting-position stream)

    (if (or (eq ending-position stop-pos)
            (eq (pos-terminal ending-position)
                word::end-of-source)
            (null (pos-terminal ending-position)))

      (then
        (print-treetop (pos-terminal ending-position)
                       ending-position
                       stream)
        :done-printing )
      (sucessive-tts/end-of-chart/print ending-position stop-pos stream))))




;;;---------------------
;;; individual treetops
;;;---------------------

(defparameter *treetop-edge/style-for-printing*
              :category-and-text-segment )
              ;; :structure )


(defun print-treetop (tt starting-position
                      &optional (stream *standard-output*))
  (etypecase tt
    (edge
     (ecase *treetop-edge/style-for-printing*
       (:structure
        (format stream "~&~A~%" tt))
       (:category-and-text-segment
        (print-edge-as-category-and-text-segment tt stream))))
    (word
     (ecase *treetop-edge/style-for-printing*
       (:structure
        (format stream "~& ~A ~A ~A"
                (pos-token-index starting-position)
                tt
                (1+ (pos-token-index starting-position))))
       (:category-and-text-segment
        (print-word-as-category-and-text-segment tt stream))))
    (symbol
     (when tt
     (if (eq tt :multiple-initial-edges)
       (ecase *treetop-edge/style-for-printing*
         (:structure
          (break "First case of using :structure print option ~
                  with muliple-edge design"))
         (:category-and-text-segment
          (print-multiple-edges-tt stream starting-position)))
       (break/debug "Treetop is an unexpected symbol: ~A" tt)))))
  :done-printing)


(defun print-edge-as-category-and-text-segment (tt stream)
  (let ((word-or-category
         (case *treetop-label-to-use* ;;:referent ;; :form
           (:form (edge-form tt))
           (:referent (edge-referent tt))
           (:category (edge-category tt))
           (otherwise
            (push-debug `(,tt))
            (error "Unexpected value for *treetop-label-to-use*: ~a"
                   *treetop-label-to-use*)))))
    (unless word-or-category
      (setq word-or-category (edge-category tt)))
    (etypecase word-or-category
      ((or category referential-category mixin-category
           individual)
       (format stream "~&e~A ~6,2t~A~30,2T~A ~S ~A~%"
               (edge-position-in-resource-array tt)
               (pname-for word-or-category)
               (pos-token-index (pos-edge-starts-at tt))
               (terminals-in-segment/one-string (pos-edge-starts-at tt)
                                                (pos-edge-ends-at tt))
               (pos-token-index (pos-edge-ends-at tt))))
      (word
       (format stream "~&e~A~33,2T~S~%"
               (edge-position-in-resource-array tt)
               (if (member :use-symbol-name-when-printing
                           (word-plist word-or-category))
                 (symbol-name (word-symbol word-or-category))
                 (word-pname word-or-category))))
      (polyword
       (format stream "~&e~A~33,2T~S~%"
               (edge-position-in-resource-array tt)
               (pw-pname word-or-category))))))


(defun print-multiple-edges-tt (stream starting-position)
  ;; used when the top-edge on the vector reads ":multiple-initial-edges",
  ;; which presently (6/93) can only be on single words
  (let ((word (pos-terminal starting-position))
        (edges (preterminal-edges starting-position))
        edge-name-list  edge-name-string
        edge-label-list  edge-label-string )

    (dolist (edge edges)
      (push (format nil "e~A " (edge-position-in-resource-array edge))
            edge-name-list)
      (push (format nil "~A"
                    (symbol-name (cat-symbol (edge-category edge))))
            edge-label-list))

    (setq edge-name-string
          (apply #'concatenate 'string
                 edge-name-list))

    (setq edge-label-string (first edge-label-list))
    (dolist (string (rest edge-label-list))
      (setq edge-label-string
            (concatenate 'string edge-label-string ", " string)))

    (format stream "~&~A~33,2T~S :: ~A~%"
            edge-name-string
            (if (member :use-symbol-name-when-printing
                        (word-plist word))
              (symbol-name (word-symbol word))
              (word-pname word))
            edge-label-string )))



(defun print-word-as-category-and-text-segment (tt stream)
  (format stream "~&~32,2T ")
  (princ-word tt stream)
  (format stream "~%"))


;;;-------------------------------------------------------
;;; printing the words between two positions in the chart
;;;-------------------------------------------------------

(defun terminals-in-segment/one-string (starting-position ending-position)
  (let ((tokens
         (terminals-in-segment starting-position ending-position)))
    (apply #'concatenate 'string tokens)))



(defun terminals-in-segment (starting-position ending-position)
  (let (accumulating-tokens
        (first-time t))

    (do* ((p starting-position
             (chart-position-after p))
          (word (pos-terminal p)
                (pos-terminal p))
          (whitespace (pos-preceding-whitespace p)
                      (pos-preceding-whitespace p)))

         ((eq p ending-position))

      (cond (first-time
             (setq first-time nil))
            ((null whitespace)
             (push (word-pname word::one-space) accumulating-tokens))
            ((eq whitespace word::newline)
             (push (word-pname word::one-space) accumulating-tokens))
            (t (push (word-pname whitespace) accumulating-tokens)))

      (push (word-pname word) accumulating-tokens))

    (nreverse accumulating-tokens)))



(defun treetops-in-segment/one-string (starting-position ending-position)
  (let ((tts (treetops-in-segment starting-position ending-position)))
    (apply #'concatenate
           'string (mapcar #'(lambda (tt)
                               (concatenate 'string "
" "      " (format nil "~A" tt)))
                           tts))))

(defun print-treetop-labels-in-segment (stream starting-position ending-position)
  (let ((tts (treetops-in-segment starting-position ending-position))
         labels  )
    (dolist (tt tts)
      (typecase tt
        (word (push (format nil "\"~a\"" (word-pname tt)) labels))
        (polyword (push (format nil "\"~a\"" (pw-pname tt)) labels))
        (edge (let ((category (edge-category tt)))
                (if (or (category-p category)
                        (word-p category)
                        (polyword-p category))
                  (push (cat-symbol category) labels)
                  (else 
                   (push-debug `(,tt ,tts .starting-position ,ending-position))
                   (break "New case: ~a" category)))))
        (otherwise
         (push-debug `(,tt ,starting-position ,ending-position))
         (error "New type of treetop: ~a" (type-of tt)))))
    (setq labels (nreverse labels))
    (format stream "~&~{~a ~}~%" labels)))


(defun treetops-in-segment (starting-position ending-position)
  (let ((start starting-position)
        tts )
    (if (eq starting-position ending-position)
      nil
      (else
        (loop
          (multiple-value-bind (tt end multiple?)
                               (next-treetop/rightward start)
            (if multiple?
              (push (pos-terminal start) tts)
              (push tt tts))

            (cond ((eq end ending-position)
                   (return))
                  ((> (pos-token-index end)
                      (pos-token-index ending-position))
                   (break/debug "Treetops-in-segment: the last edge ~
                                 overshoots the ending-position"))
                  (t (setq start end)))))

        (nreverse tts)))))


