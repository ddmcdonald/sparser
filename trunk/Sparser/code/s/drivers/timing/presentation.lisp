;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "presentation"
;;;   Module:  "drivers;timing:"
;;;  Version:  January 2014

;; file created 2/91. Given content 1/6/95
;; Added Time decoded 1/23. 10/2/07 Extended and added Allegro variation.
;; 1/27/14 Brough openMCL details up to date. Added macro to reflect what
;; to turn off. 

(in-package :sparser)


;;--- Wrapper to minimize other operations

(defmacro with-inessentials-turned-off (&body body)
  `(let ((*display-word-stream* nil)
         (*recognize-sections-within-articles* nil)
         (*newline-delimits-paragraphs* nil)
         (*do-strong-domain-modeling* nil)  ;; Have to turn all of these
         (*reify-implicit-individuals* nil) ;; off explicitly given how
         (*note-text-relations* nil)  ;; after-action-on-segments is pre-set
         (*after-action-on-segments* 'normal-segment-finished-options))
     (declare (special *display-word-stream*
                       *recognize-sections-within-articles*
                       *newline-delimits-paragraphs*
                       *do-strong-domain-modeling*
                       *reify-implicit-individuals*
                       *note-text-relations*
                       *after-action-on-segments*))
     ,@body))


;;;--------------------------------------------
;;; analysis based on the elapsed-time samples
;;;--------------------------------------------

(defun run-string-for-timing (string)
  (with-inessentials-turned-off
      (analyze-text-from-string string)
    (let ((tps (/ *time-at-chart-level*
                  *number-of-next-position*)))
      (format t "~&speed: ~4,1F tokens/msec" (float tps))
      )))


(defun run-string-for-timing/no-forest (string)
  (with-inessentials-turned-off
      (let ((*do-forest-level* nil))
        (analyze-text-from-string string)
        (let ((tps (/ *time-at-chart-level*
                      *number-of-next-position*)))
          (format t "~&speed: ~4,1F tokens/msec" (float tps))
          ))))


;;;-----------------------------------------------------------
;;; analysis based on decoding what the Time function returns
;;;-----------------------------------------------------------

(defun time-analysis (input-string)
  (with-inessentials-turned-off
      (let* ((trace-string (make-string-output-stream))
             (*trace-output* trace-string))

        (time (analyze-text-from-string input-string))

        (analyze-and-report-timing-data
         (get-output-stream-string trace-string)))))
      


(defun analyze-and-report-timing-data (time-report-string)
; cpu time (non-gc) 40 msec user, 0 msec system
; cpu time (gc)     20 msec user, 0 msec system
; cpu time (total)  60 msec user, 0 msec system
; real time  66 msec
; space allocation:
;  115,682 cons cells, 4,760,424 other bytes, 0 static bytes
;;
;; It used to be that, now (6/11, ACL 8.2) it's this (on *iraqi-girl*)
; cpu time (non-gc) 0.295513 sec user, 0.000849 sec system
; cpu time (gc)     0.125486 sec user, 0.000546 sec system
; cpu time (total)  0.420999 sec user, 0.001395 sec system
; real time  0.423330 sec
; space allocation:
;  1,304,549 cons cells, 27,777,504 other bytes, 0 static bytes
  (format t "~a" time-report-string)
  (push-debug `(,time-report-string))
  (multiple-value-bind (number units)
      (extract-ms-from-time-report-string time-report-string)
    (let* ((word-count *number-of-next-position*)
           (tokens-per-second
            (case units
              (:microsec
               (let ((tokens-per-microsecond (/ word-count number)))
                 (* tokens-per-microsecond 1000000)))
              (:msec
               (let ((tokens-per-milisecond (/ word-count number)))
                 (* tokens-per-milisecond 1000)))
              (:sec
               (/ word-count number))
              (otherwise
               (break "New time unit: ~a" units)))))
      (let* ((speed-as-string 
              (format nil "~4,1F" (float tokens-per-second)))
             (speed-with-commas
              (insert-commas-into-number-string speed-as-string)))
        (format t "~&speed: ~a tokens/second" speed-with-commas)))))

#+:allegro
(defun extract-ms-from-time-report-string (s)
  ;; "; cpu time (non-gc) 40 msec user, 0 msec system\n..."
  ;; Now
  ; cpu time (non-gc) 0.295513 sec user, 0.000849 sec system
  (let* ((close-pos (position #\) s))
         (number-start-pos (+ 2 close-pos))
         (number-initial-string (subseq s number-start-pos))
         (space-pos (position #\space number-initial-string))
         (number-string (subseq number-initial-string 0 (1+ space-pos))))
    (when (position #\, number-string)
      (setq number-string (remove-comma-from-number number-string)))
    (let ((units (extract-initial-time-unit 
                  (subseq number-initial-string (+ 1 space-pos)))))
      (values (read-from-string number-string)
              units))))

#+:openmcl
(defun extract-ms-from-time-report-string (s)
;; This is on *iraqi-girl*
;  (pp input-string) took 4,059 microseconds (0.004059 seconds) to run 
;                    with 4 available CPU cores.
;During that period, 7,848 microseconds (0.007848 seconds) were spent in user mode
;                    151 microseconds (0.000151 seconds) were spent in system mode
; 89,184 bytes of memory allocated.
  (let* ((pos-of-k (position #\k s)) ;; in "took"
         (from-number-start-onwards (subseq s (+ pos-of-k 2)))
         ;; There is usually just one space between "took" and the number,
         ;; but sometimes (1/27/13 Clozure 1.8.1) there are two.
         (trimmed-from-number-onwards
           (remove-leading-whitespace from-number-start-onwards))
         (pos-next-space (position #\space trimmed-from-number-onwards))
         (number-string (subseq trimmed-from-number-onwards 0 pos-next-space)))
    ;;(break "number-string = '~a'" number-string)
    (when (position #\, number-string)
      (setq number-string (remove-comma-from-number number-string)))
    (let ((units (extract-initial-time-unit 
                  (subseq trimmed-from-number-onwards (+ 1 pos-next-space)))))
      (values (read-from-string number-string)
              units))))

;; From Peter Clark's string code for KM
;; Expose in util
(defparameter *whitespace-chars* '(#\Space #\Tab #\Newline 
                                   #\Return #\Linefeed #\Page))
(defun remove-leading-whitespace (string) 
  (string-left-trim *whitespace-chars* string))


;; move to util
(defun remove-comma-from-number (s)
  ;;/// make it recursive to remove all the commas in a long number
  (let ((pos-comma (position #\, s)))
    (if pos-comma
      (let ((left (subseq s 0 pos-comma))
            (right (subseq s (1+ pos-comma))))
        (string-append left right))
      s)))

(defun insert-commas-into-number-string (s)
  ;;  created by "~4,1F", so it has a decimal point
  (flet ((subdivide-into-length-3-strings (string)
           (let ((remaining string)
                 (remaining-length (length string))
                 triplets )
             (loop
               (when (<= remaining-length 3)
                 (push remaining triplets)
                 (return))
               (let ((index (- remaining-length 3)))
                 (push (subseq remaining index) triplets)
                 (setq remaining (subseq remaining 0 index))
                 (setq remaining-length (length remaining))))
             triplets )))
  (let* ((decimal-point-pos (position #\. s))
         (decimal-and-after (subseq s decimal-point-pos))
         (before-point (subseq s 0 decimal-point-pos))
         (triplets (subdivide-into-length-3-strings before-point)))
    (values triplets decimal-and-after))))




(defun extract-initial-time-unit (s)
  (let* ((space-pos (position #\space s))
         (unit-string (subseq s 0 space-pos)))
    ;(break "unit-string = '~a'" unit-string)
    (cond
     ((string-equal unit-string "microseconds") :microsec)
     ((string-equal unit-string "msec") :msec)
     ((string-equal unit-string "sec") :sec)
     (t (break "New instance of a time unit: ~a" unit-string)))))


#+:coral
(defun analyze-and-report-timing-data (trace-string)
  (multiple-value-bind (total-seconds
			multitasking-time
			bytes-allocated)

      (decode-time-report
       (get-output-stream-string trace-string))

    (let ((net-time (- total-seconds multitasking-time))
	  (word-count *number-of-next-position*))
      
      (let ((tokens-per-second (/ word-count
				  net-time)))
	
	(format t "~&speed: ~4,1F tokens/second, ~
                     ~A bytes allocated"
		(float tokens-per-second)
		bytes-allocated)))))

#+:coral
(defun decode-time-report (s)
  ;; e.g. "
  ;; (PP *1K-A-VICE-PRESIDENT*) took 7725 milliseconds (7.725 seconds) to run.
  ;; Of that, 127 milliseconds (0.127 seconds) were spent in The Cooperative Multitasking Experience.
  ;;  639384 bytes of memory allocated.
  ;; "

  (multiple-value-bind (seconds rest-of-string)
                       (extract-seconds-from-time-report s)

    (multiple-value-bind
      (time-in-cooperative-multitasking-experience rest2)
      (extract-cme-from-time-report rest-of-string)

      (let ((bytes-allocated
             (extract-bytes-alloc-from-time-report rest2)))

        (values seconds
                time-in-cooperative-multitasking-experience
                bytes-allocated)))))



(defun extract-seconds-from-time-report (s)
  ;; The report starts by giving the expression that was timed.
  ;; Since it ends in a close paren it's a good place to start
  (let* ((close-pos (position #\) s))
         (after-exp (subseq s (1+ close-pos))))
    (let* ((pos-of-open
            ;; the next open paren is just before the number
            (position #\( after-exp))
           (pos-of-close
             ;; Then we find the close
             (position #\) after-exp)))
      
      (let ((seconds (subseq after-exp
                             (+ pos-of-open 1)
                             (- pos-of-close 8))))
        (values
         (read-from-string seconds)
         (subseq after-exp (1+ pos-of-close)))))))


(defun extract-cme-from-time-report (remainder)
  (let ((pos-of-open (position #\( remainder))
        (pos-of-close (position #\) remainder)))

    (let ((cme (subseq remainder
                       (+ pos-of-open 1)
                       (- pos-of-close 8))))
      (values
       (read-from-string cme)
       (subseq remainder (1+ pos-of-close))))))


(defun extract-bytes-alloc-from-time-report (remainder)
  (let ((pos-of-period (position #\. remainder))
        (pos-of-b (position #\b remainder)))

    (let ((bytes (subseq remainder
                         (+ pos-of-period 3)
                         (- pos-of-b 1))))
      (read-from-string bytes))))
  


