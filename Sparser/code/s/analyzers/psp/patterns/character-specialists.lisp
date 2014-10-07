;; ;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "character-specialists"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  September 2014

;; Initiated 9/9/14 to hold specialists dispatched from the no-space
;; scan 

(in-package :sparser)


(defun nospace-hyphen-specialist (hyphen-position/s pos-before next-position)
  (push-debug `(,hyphen-position/s ,pos-before ,next-position))
  ;; (setq hyphen-position/s (car *) pos-before (cadr *) next-position (caddr *))
  (let ((hyphen-count (length hyphen-position/s))
        (phrase-length (- (pos-token-index next-position)
                          (pos-token-index pos-before))))
    (cond
     ((and (= hyphen-count 1)
           (= phrase-length 3))
      (let* ((hyphen-pos (car hyphen-position/s))
             (left-edge (left-treetop-at hyphen-pos))
             (right-edge (right-treetop-at
                          (chart-position-after hyphen-pos))))
        (let ((rule
               (or
                ;; Can we look and know which edge -should- be the
                ;; head? If we just assume its the right-edge and
                ;; the left-edge is the theme then we will prefer
                ;; a direct-object reading:
                (multiply-edges right-edge left-edge)
                ;; but it that doesn't work lets try the other order
                ;; just to get something (as better than nothing)
                (multiply-edges left-edge right-edge))))
          (if rule
            (make-completed-binary-edge left-edge right-edge rule)
            (else ;; make a structure if all else fails
             ;; but first alert to anticipated cases not working
             (push-debug `(,left-edge ,right-edge))
             (break "Stub -- no association between hyphenated edges ~
                    e~a and e~a" 
                    (edge-position-in-resource-array left-edge)
                    (edge-position-in-resource-array right-edge)))))))
     (t
      (break "New case for hyphens~%  hyphen count = ~a~
            ~%  phrase-length = " hyphen-count phrase-length)))))

(defun nospace-slash-specialist (slash-position/s pos-before next-position)
  (push-debug `(,slash-position/s ,pos-before ,next-position))
  (break "slash stub"))