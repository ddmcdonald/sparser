; Spellcheck program in lisp inspired by Peter Norvig's spellcheck algorithm
                                        ; Ryan Riddle (http://github.com/RyanRiddle/lispell
;; adapted to our dictionary/library along with sorting by Damerau–Levenshtein distance

(in-package :sp)
(defparameter *dictionary* (make-hash-table :size 85000 :test #'equal))
(defparameter *misspellings* (make-hash-table :size 10000000 :test #'equal))
(defparameter *alphabet* "abcdefghijklmnopqrstuvwxyz") 

(defun spell-add (word)
  (setf (gethash word *dictionary*) t))
;    (push word *dictionary*))

(defun add-misspelling (incorrect correct)
  (if (gethash incorrect *misspellings*)
      (push correct (gethash incorrect *misspellings*))
      (setf (gethash incorrect *misspellings*) `(,correct))))
;		(let ((entry (assoc incorrect *misspellings* :test #'equal)))
;			(if entry 
;				(push correct (cadr entry))
;				(push `(,incorrect (,correct)) *misspellings*))))

(defun read-dict (dict)
  (print "Reading dictionary...")
  (with-open-file (s dict)
    (do ((l (read-line s) (read-line s nil 'eof)))
        ((eq l 'eof) "Done.")
      (spell-add l))))
	
(defun spell-check (word)
  (gethash word *dictionary*))	
 
(defun remove-at (pos seq)
  (concatenate
   'string
   (subseq seq 0 pos)
   (subseq seq (+ pos 1) (length seq))))

(defun insert-at (ch pos str)
  (concatenate 'string 
               (subseq str 0 pos)
               (list ch)
               (subseq str pos (length str))))

(defun replace-at (ch pos seq)
  (concatenate 'string
               (subseq seq 0 pos)
               (list ch)
               (subseq seq (+ pos 1) (length seq))))

(defun transpose-at (pos1 pos2 seq)
  (let ((word (coerce seq 'list)))
    (rotatef (nth pos1 word) (nth pos2 word))
    (coerce word 'string)))

(defun gen-deletes (word)
  (let ((deletes nil))
    (dotimes (i (length word))
      (push (remove-at i word) deletes))
    deletes))

		
(defun gen-inserts (word)
  (let ((inserts nil))
    (loop for ch across *alphabet* do
            (loop for i from 0 to (length word) do
                    (push (insert-at ch i word) inserts)))
    inserts))

(defun gen-replaces (word)
  (let ((replaces nil))
    (loop for ch across *alphabet* do
            (dotimes (i (length word))
              (push (replace-at ch i word) replaces)))
    replaces))

(defun gen-transposes (word)
  (let ((transposes))
    (loop for i from 0 to (- (length word) 2) do
            (loop for j from (+ i 1) to (- (length word) 1) do
                    (push (transpose-at i j word) transposes)))
    transposes))

(defun build-misspellings ()
  (flet ((build-for-word (word b)
           (let ((deletes (get-ed2-deletes word)))
             (dolist (misspelling deletes)
               (add-misspelling misspelling word)))))
    (maphash #'build-for-word *dictionary*)))
				
(defun get-ed2-deletes (word)
  (let* ((del-dist1 (remove-duplicates (gen-deletes word) :test #'equal))
         (del-dist2 (apply #'append (mapcar #'gen-deletes del-dist1)))
         (deletes (remove-duplicates (append del-dist1 del-dist2) :test #'equal)))
    deletes))
		
(defun suggest (word)
  (unless (spell-check word)
    (let* ((deletes (get-ed2-deletes word))
           (sugs (mapcar #'(lambda (del)
                             (gethash del *misspellings*))
                         deletes)))
      (sort (remove-duplicates (apply #'append sugs) :test #'equal )
            #'< :key #'(lambda(sug) (edit-distance word sug))))))

(defun get-best-sug (word &aux (suggestions (suggest word)) best)
  (loop for sug in (cdr suggestions)
        with min = (edit-distance word (car suggestions))
        if (> (edit-distance word sug) min)
        do (return (push (car suggestions) best))
        else
          do (push sug best)))

;; implementing the Damerau–Levenshtein distance from wikipedia
;; pseudocode with some input from cl-edit-distance although that is
;; Levenshtein distance only (makes transposition cost 2 instead of
;; cost 1) and some input/clarity on implementation from a python
;; version of the wikipedia code that is here:
;; https://gist.github.com/pombredanne/0d83ad58f45986ddeb0917266e106be0
;; although without that version's "improvement" since I agree with the original
;; algorithm that "def" for "fad" should be a distance of 3 not a
;; distance of 2

(defun edit-distance (s1 s2)
  "Implementation of the Damerau–Levenshtein distance for spelling comparison"
  (declare (optimize (speed 1)))
  (let ((m (length s1))
        (n (length s2)))
     (unless (typep s1 'simple-array)
    (setf s1 (make-array m :element-type 'string :initial-contents s1)))
  (unless (typep s2 'simple-array)
    (setf s2 (make-array n :element-type 'string :initial-contents s2)))
  ;; Check trivial cases
  ;; anything that's only off in terms of capitalization should get 
    (cond ((equalp s1 s2) (return-from edit-distance 0))
          ((= 0 n) (return-from edit-distance m))
	  ((= 0 m) (return-from edit-distance n)))
    (let* ((maxdist (+ m n))
          (d (make-array `(,(+ 2 m) ,(+ 2 n)) :element-type '(or null fixnum)
                         :initial-element maxdist))
          (last-row (make-hash-table :test #'equal :size 20)))
      (declare ((simple-array (or null fixnum)) d))
      (setf (aref d 0 0) maxdist)
      (loop for i from 1 to (1+ m)
            do (setf (aref d i 1) (1- i)))
      (loop for j from 1 to (1+ n)
            do (setf (aref d 1 j) (1- j)))
      (loop for row from 1 to m
            do (let ((s1-char (elt s1 (- row 1)))
                     (last-match-col 0))
                 (loop for col from 1 to n
                       do (let* ((s2-char (elt s2 (- col 1)))
                                 (last-match-row (or (gethash s2-char last-row)
                                                     0))
                                 (cost (if (eql s1-char s2-char)
                                           0
                                           1)))
                            (setf (aref d (1+ row) (1+ col))
                                  (min (+ (aref d row col) cost) ;; substitution
                                       (1+ (aref d (1+ row) col)) ;; addition
                                       (1+ (aref d row (1+ col))) ;; deletion
                                       ;; transposition
                                       (+ (aref d last-match-row last-match-col)
                                          (- row last-match-row 1)
                                          (- col last-match-col 1)
                                          1)))
                            (when (eq cost 0) (setq last-match-col col))))
                 #+ignore
                 (format t "row: ~s~%" (loop for i from 1 to (1+ n)
                                             collect (aref d row i)))
                 (setf (gethash s1-char last-row) row)))
      #+ignore
      (format t "row: ~s~%" (loop for i from 1 to (1+ n)
                                  collect (aref d (1+ m) i)))
      ;; final distance
      (aref d (1+ m) (1+ n)))))
