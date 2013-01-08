;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(S2) -*-
;;; Copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2011-2012  David D. McDonald  -- all rights reserved
;;; $Id$
;;;
;;;     File: /grammar/rules/words/one-offs/treebank-reader.lisp
;;;  version: March 2012

;; (2/9/11) Wrapped the mapcar for the top-level calls into a function that
;;  has to be called. The 'pp' function it creates conflicts with the 'pp'
;;  abbreviation for invoking the parser when loaded into a case-insensitive
;;  lisp such as Clozure Found another mispatch in accessor and changed the
;;  struct's prefix to #: notation.

(in-package :sparser)

;; These solve a problem about populating the chart by hiding
;; the multi-type characters of the symbols from Sparser's tokenizer
;; The values have to be a single character type so that the tokenizer
;; will treat them as a single token rather than split them, which
;; leads to getting the wrong chart terminals and all sorts of subtle
;; bugs -- see extract-terminals-loop in sparser-interface

(defconstant *possessive-marker* (intern "POSSESSIVE" (find-package :sparser)))

(defconstant *LRB* 'lrb) ;; open & close parentheses
(defconstant *RRB* 'rrb)

(defconstant *open-quote* 'openQuote)
(defconstant *close-quote* 'closeQuote)

(export '(*possessive-marker*
          *LRB*
          *RRB*
          *open-quote*
          *close-quote*
          ))


;;;------
;;; util
;;;------

(defun take (n list)
  (loop repeat n
      collect (pop list)))


;;;-----------------------
;;; readtable for TB sexp
;;;-----------------------

(defparameter *my-readtable* (copy-readtable))

(defun period-reader (stream char)
  (declare (ignore stream char))
  'period)

(defun comma-reader (stream char)
  (declare (ignore stream char))
  'comma)

(defun backquote-reader (stream char)
  (declare (ignore char))
  (let ((c (peek-char nil stream)))
    (if (eql c #\`)
          (then
        (read-char stream)
        (let ((d (peek-char nil stream)))
          (if (eql d #\))
                'open-quote
            'open-quote-tag)))
      'open-quote)))

(defun quote-reader (stream char)
  (declare (ignore char))
  (let ((c (peek-char nil stream)))
    (if (eql c #\')
          (then (read-char stream) 'close-quote)
      'single-quote))) ;; appostrophe ??

(defun colon-reader (stream char)
  (declare (ignore char))
  (let ((c (peek-char nil stream)))
    (if (eql c #\space)
          'colon-tag
      'colon)))

(defun semicolon-reader (stream char)
  (declare (ignore stream char))
  'semicolon)

(defun sharpsign-reader (stream char)
  (declare (ignore char))
  (let ((c (peek-char nil stream)))
    (if (eql c #\space)
      'sharpsign-tag
      'sharpsign)))

(defparameter period 'period)
(defparameter comma 'comma)
(defparameter open-quote 'open-quote)
(defparameter open-quote-tag 'open-quote-tag)
(defparameter close-quote 'close-quote)
(defparameter single-quote 'single-quote)
(defparameter colon-tag 'colon-tag)
(defparameter colon 'colon)
(defparameter semicolon 'semicolon)
(defparameter sharpsign 'sharpsign)
(defparameter sharpsign-tag 'sharpsign-tag)


(defun set-macro-characters ()
  (set-macro-character #\. #'period-reader nil *my-readtable*)
  (set-macro-character #\, #'comma-reader nil *my-readtable*)
  (set-macro-character #\` #'backquote-reader nil *my-readtable*)
  (set-macro-character #\' #'quote-reader nil *my-readtable*)
  (set-macro-character #\: #'colon-reader nil *my-readtable*)
  (set-macro-character #\; #'semicolon-reader nil *my-readtable*)
  (set-macro-character #\# #'sharpsign-reader nil *my-readtable*))

(set-macro-characters)

(defvar *current-readtable* *readtable*)

(defun my-rt () (setq *readtable* *my-readtable*))

(defun old-rt () (setq *readtable* *current-readtable*))

(defmacro with-readtable-bound (&body body)
  `(progn
     (my-rt)
     ,@body
     (old-rt)))


;;;---------
;;; objects
;;;---------

(defstruct (immediate-constituent-pattern
            (:conc-name #:icp-)
            (:print-function
             (lambda (icp stream depth)
               (declare (ignore depth))
               (format stream "#<icp ~a => ~a>"
                       (icp-tag icp)
                       (icp-constituents icp)))))
  tag ;; symbol for now, rep. of the NT latter
  constituents
  freq
  count ;; ///
  over-terminals?
  )



;;;---------------------------------
;;; harness for going through files
;;;---------------------------------

(defun harness (full-filename)
  (time
   (with-open-file (stream full-filename
                    :direction :input
                    :if-does-not-exist :error)
     (with-readtable-bound *my-readtable*
        (clear-treebank-tables)
        (let ((eof? nil)
              (sexp nil)
              ;;(count 0)
              )
          (loop while (not eof?) do
               (setq sexp (read stream nil :eof))
               (if (eq sexp :eof) (setq eof? t))
             ;;(format t " ~a" (incf count))
               (eval sexp)))))))


(defun create-top-level-call (tag)
  (let ((form `(defmacro ,tag (&rest constituents)
                 ;;(funcall #constituent-reader constituents ',tag)
                 (constituent-reader constituents ',tag))))
    (eval form)))

(defun setup-toplevel-calls ()
  (mapcar #'create-top-level-call
          '(S
            SINV
            SBAR
            SBARQ
            SQ
            FRAG
            UCP
            DATE
            NP
            PRN
            VP
            PP
            ADVP
            ADJP
            X
            INTJ)))



;;;---------------------------
;;; reading parser or TB sexp
;;;---------------------------

(defun constituent-reader (constituents toplevel-tag)
  (declare (ignore toplevel-tag))
  (dolist (c constituents)
    ;(format t "reader: c = ~a" c)
    (analyze-constituent c)))

(defparameter *what-to-do* :read-through)

(defun analyze-constituent (constituent)
  (case *what-to-do*
    (:read-through
     (constituent-walker constituent))
    (:otherwise
     (format t "Unknown value for *what-to-do*: ~a" *what-to-do*))))

(defun constituent-walker (c)
  (unless (symbolp (car c))
    (break "Constituent does not start with a symbol:~%~a" c))
  (let ((tag (car c))
        (rest (cdr c)))
    ;;(format t "~%walker: tag = ~a" tag)
    (notice-tag tag)
    ;;(format t "~%walker: rest = ~a" rest)
    (if (consp (car rest))
      (then
        (notice-nonterminal-tag tag rest)
        (notice-immediate-constituent-pattern tag rest)
        (constituent-reader rest tag))
      (let ((token (second c)))
       (unless token
         (break "Expected a pname. c = ~a" c))
       ;;(format t "~%walker: word = ~a" token)
       (when (and (numberp token)
                  *merge-numbers*)
         (setq token 'number))
       (notice-pos-tag tag token)
       (notice-word token tag)))))

(defparameter *merge-numbers* t)


;;;-----------------
;;; data collection
;;;-----------------

(defun clear-treebank-tables ()
  (setq *nonterminal-tag-count* 0)
  (clrhash symbol-to-nonterminal-tag)
  (setq *constituent-patterns* 0)
  (clrhash *NT-tags-to-patterns*)
  (setq *pos-tag-count* 0)
  (clrhash symbol-to-pos-tags)
  (setq *tag-count* 0)
  (clrhash symbols-to-tags)
  (setq *word-count* 0)
  (setq *word-token-count* 0)
  (clrhash symbols-to-words)
  #+ccl(gc))


;;(clear-pattern-counts)
;;  Clearing the index table frees the objects for gc so we don't
;;  have to include this operatin in clear-treebank-tables
;;  /// In other modes these objects will be permanent and the
;;      table read in from data

(defvar *constituent-patterns* 0) ;; count of unique instances

(defparameter *NT-tags-to-patterns* (make-hash-table :test #'equal))

(defun notice-immediate-constituent-pattern (tag constituents)
  (let ((constituent-tags (toplevel-tags constituents))
        (tag-table (gethash tag *NT-tags-to-patterns*)))
    (if tag-table
      (let ((icp (gethash constituent-tags tag-table)))
        (if icp
          (incf (icp-freq icp))
          (else
            ;;(format t "~&~a added ~a" tag constituent-tags)
            (setf (gethash constituent-tags tag-table)
                  (define-constituent-pattern tag constituent-tags)))))
      (let ((tag-table (make-hash-table :test #'equal)))
        (setf (gethash constituent-tags tag-table)
              (define-constituent-pattern tag constituent-tags))
        ;;(format t "~&-- ~a added ~a" tag constituent-tags)
        (setf (gethash tag *NT-tags-to-patterns*) tag-table)))
    constituent-tags))


(defvar *sorted-icp* '())

(defun order-icp-by-frequency ()
  (let ((icps '()))
    (maphash #'(lambda (tag table)
                 (declare (ignore tag))
                 (maphash #'(lambda (constituents icp-object)
                              (declare (ignore constituents))
                              (push icp-object icps))
                          table))
             *NT-tags-to-patterns*)
    (length (setq *sorted-icp*
              (sort icps #'> :key #'icp-freq)))))


(defun incident-count ()
  (let ((count 0))
    (maphash #'(lambda (tag table)
                 (declare (ignore tag))
                 (maphash #'(lambda (constituents icp)
                              (declare (ignore constituents))
                              (setq count (+ count
                                             (icp-freq icp))))
                          table))
             *NT-tags-to-patterns*)

    count))


(defun icp-by-percentage (percent)
  (let* ((total (incident-count))
         (target (round (* total percent)))
         (accumulated 0)
         (icp-count 0))
    (loop
      until (>= accumulated target)
        for icp in *sorted-icp*
        do
          (incf icp-count)
          (setq accumulated
            (+ accumulated
               (icp-freq icp))))
    icp-count))




(defun write-icp (full-filename)
  (order-icp-by-frequency)
  (with-open-file (s full-filename
                   :direction :output
                   :if-exists :supersede
                   :if-does-not-exist :create)
    (let ((count 0))
      (dolist (icp *sorted-icp*)
        (format s "~%~a/~a  ~a"
                (incf count)
                (icp-freq icp)
                icp)))))


(defun clear-pattern-counts ()
  (maphash #'(lambda (non-terminal pattern-table)
               (declare (ignore non-terminal))
               (maphash #'(lambda (constituent-list icp)
                            (declare (ignore constituent-list))
                            (setf (icp-freq icp) 0))
                        pattern-table))
           *NT-tags-to-patterns*))


(defun get-icp (nt constituents)
  (let ((icp-table (gethash nt *NT-tags-to-patterns*)))
    (when icp-table
      (gethash constituents icp-table))))


(defmacro def-constituent-pattern (tag immediate-constituents)
  `(define-constituent-pattern ',tag ',immediate-constituents))


(defun define-constituent-pattern (tag immediate-constituents)
  (let ((icp (make-immediate-constituent-pattern
              :tag tag
              :constituents immediate-constituents
              :freq 1))) ;; gets stored in the *NT-tags-to-patterns*
    ;; table, which is an index by non-terminal
    (incf *constituent-patterns*)
    icp))



(defun sort-cp (tag)
  (unless (gethash tag *NT-tags-to-patterns*)
    (break "~a is not a know non-terminal with constituents" tag))
  (let ((icp-list '()))
    (maphash #'(lambda (key icp)
                 (declare (ignore key))
                 (push icp icp-list))
             (gethash tag *NT-tags-to-patterns*))
    (sort icp-list #'> :key #'icp-freq)))

;;/// wip through the list and fill the 'count' field of the icp
;; according to where the icp falls

(defun write-icp (tag full-filename)
  (let ((sorted (sort-cp tag)))
    (with-open-file (stream full-filename
                     :direction :output
                     :if-exists :overwrite
                     :if-does-not-exist :create)
      (dolist (icp sorted)
        (format stream "~&~a  ~a" (icp-freq icp) icp)))))



(defun toplevel-tags (constituents)
   (let ((list '()))
     (dolist (c constituents)
       (push (get-tag c) list))
     (nreverse list)))

(defun get-tag (sexp)
  (unless (symbolp (car sexp))
    (break "Threading bug: sexp doesn't start with a symbol:~
          ~%~a" sexp))
  (car sexp))

(defun ic-patterns-for (tag)
  (let ((table (gethash tag *NT-tags-to-patterns*)))
    (if (null table)
      (format t "~a has no entries in the immediate-constituent table." tag)
      (let ((patterns '()))
        (maphash #'(lambda (key value) (declare (ignore value))
                     (push key patterns))
                 table)
        patterns))))



(defvar *nonterminal-tag-count* 0)

(defparameter symbol-to-nonterminal-tag (make-hash-table))

(defun notice-nonterminal-tag (tag immediate-constituents)
  (unless (gethash tag symbol-to-nonterminal-tag)
    (setf (gethash tag symbol-to-nonterminal-tag) immediate-constituents)
    (incf *nonterminal-tag-count*)))

(defun non-terminal-tags ()
  (let ((list '()))
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key list))
             symbol-to-nonterminal-tag)
    list))

(defun read-terminal-tags-from-file (full-filename)
  (with-open-file (stream full-filename
                    :direction :input
                    :if-does-not-exist :error)
    (let ((eof? nil))
      (declare (ignore eof?))
      (break "stub"))))

(defparameter *pos-tags*
  '(CLOSE-QUOTE COLON-TAG COMMA
    DT CD EX FW IN JJ JJR JJS LS
    MD NN NNP NNPS NNS POS
    OPEN-QUOTE-TAG PDT PERIOD
    PRP PRP$ RB RBR RBS RP
    SHARPSIGN-TAG SYM TO UH
    VB VBD VBG VBN VBP VBZ
    WDT WP WP$ WRB))


(defvar *pos-tag-count* 0)

(defparameter symbol-to-pos-tags (make-hash-table))

(defun notice-pos-tag (tag-symbol word-symbol)
  "Collects all instances of a given POS tag on a table indexed
   by the tag symbol. Doesn't do any lumping of tags, 'words' are
   still just lowercase symbols."
  (let ((entry (gethash tag-symbol symbol-to-pos-tags)))
    (cond
      (entry (unless (memq word-symbol entry)
               (rplacd entry (cons word-symbol (cdr entry)))))
      (t
       (setf (gethash tag-symbol symbol-to-pos-tags) `(,word-symbol))
       (incf *pos-tag-count*)))))


(defun pos-tags ()
  (let ((list '()))
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key list))
             symbol-to-pos-tags)
    list))


(defvar *tag-count* 0)

(defparameter symbols-to-tags (make-hash-table ))

(defun notice-tag (symbol)
  (unless (gethash symbol symbols-to-tags)
    (setf (gethash symbol symbols-to-tags) symbol)
    (incf *tag-count*)))


(defvar *word-count* 0) ;; unique pnames

(defvar *word-token-count* 0)

(defparameter symbols-to-words (make-hash-table))

(defun notice-word (symbol tag)
  ;;(format t "~&word = ~a" symbol)
  (incf *word-token-count*)
  (let ((entry (gethash symbol symbols-to-words)))
    (if entry
      (let ((tag-entry (assoc tag entry :test #'eq)))
        (if tag-entry
          (rplacd tag-entry (1+ (cdr tag-entry)))
          (setf (gethash symbol symbols-to-words)
            (cons `(,tag . 1) entry))))
      (else
       (setf (gethash symbol symbols-to-words)
             `( (,tag . 1) ))
       (incf *word-count*)))))

(defun pos-info (w)
  (gethash w symbols-to-words))

(defun word-table-to-list (&optional (table symbols-to-words))
  (let ( list )
    (maphash #'(lambda (k v)
                 (declare (ignore v))
                 (push k list))
             table)
    list))

(defun sort-word-pos-by-frequency (alist)
  ;; highest to lowest
  (sort alist #'> :key #'cdr))

(defun sort-words-by-pos-frequency ()
  (maphash
   #'(lambda (key value)
       (let ((sorted (sort-word-pos-by-frequency value)))
         (setf (gethash key symbols-to-words) sorted)))
   symbols-to-words))

(defun word-total-token-count (w)
  (let ((total 0))
    (dolist (pair (pos-info w))
      (setq total (+ (cdr pair) total)))
    total))

(defun sort-words-by-token-count (&optional (table symbols-to-words))
  (let* ((words (word-table-to-list table))
         (entries (mapcar #'(lambda (w)
                              (cons (define-word/expr (symbol-name w))
                                    (word-total-token-count w)))
                          words)))
    ;; use routine from the standard frequency code
    (sort-frequency-list entries)))


(defvar *proper-nouns* '())

(defvar *everything-else* '())

(defun proper-vs-common (&optional (word-table symbols-to-words))
  (let ((other '()) (always-proper '()))
    (maphash
     #'(lambda (word pos-pairs)
         (let ((other? nil))
           (dolist (pair pos-pairs)
             ;;(when (not (proper-noun? pos-pairs) - better factoring?
             (when (not (or (eq (car pair) 'NNP)
                            (eq (car pair) 'NNPS)))
               (setq other? (car pair))))
           (if other?
               (push word other)
             (push word always-proper))))
     word-table)
    (setq *proper-nouns* always-proper
          *everything-else* other)
    (values (length always-proper)
            (length other))))


(defun study-word-pos ()
  (let ((singles '())(doubles '())(more '()))
    (maphash
     #'(lambda (key value)
         (cond
          ((= (length value) 1)
           (push key singles))
          ((= (length value) 2)
           (push key doubles))
          (t
           (push key more))))
     symbols-to-words)
    (format t "~a singles, ~a doubles, ~a rest"
            (length singles) (length doubles) (length more))))


(defvar *word-list* '())

(defun words-to-list ()
  (maphash #'(lambda (key value)
               (declare (ignore value))
               (push key *word-list*))
           symbols-to-words))

(defun write-words (list-of-words full-filename)
  (with-open-file (s full-filename
                          :direction :output
                  :if-exists :supersede
                  :if-does-not-exist :create)
    (let ((count 0))
      (dolist (word list-of-words)
        (format s "~&(defword ~a/~a  \"~a\"  ~a)"
                (incf count)
                ( ) ;;//// frequency of word
                (string-downcase (symbol-name word))
                (pos-info word))))))

(defun write-words-by-pos (full-filename)
  (with-open-file (s full-filename
                          :direction :output
                  :if-exists :supersede
                  :if-does-not-exist :create)
    (dolist (tag-symbol *pos-tags*)
      (let ((entry (gethash tag-symbol symbol-to-pos-tags)))
        (when entry
          ;;(write-pos-entry tag-symbol entry s)
          )))))
#|  /// This is where everything left off
(defun write-pos-entry (tag-symbol list-of-words s)
  (let ((tag-name (string-downcase (symbol-name tag-symbol)))
        (words (


(defun write-word-data (word-symbol pos s)

        (write-word-data word s)))))  |#

;;;------------------------------------------
;;; Read out treebank s-exp as regular texts
;;;------------------------------------------

(defun tb-to-text-file-reader (full-tb-filename &optional (verbose nil))
  (with-open-file (stream full-tb-filename
                   :direction :input
                   :if-does-not-exist :error)
    (with-readtable-bound *my-readtable*
      (let ((eof? nil)
            (sexp nil))
        (loop while (not eof?) do
              (setq sexp (read stream nil :eof))
              (when verbose
                (format t "~s~%" sexp))
              (when (eq sexp :eof) (return))
              (readout-tb-terminals sexp *standard-output* verbose))))))

(defparameter *tb-no-space-before*
  '(close-quote single-quote comma period ? ! -rrb- -rcb- -rsb-
    colon semicolon))
(defparameter *tb-no-space-after*
  '(open-quote -LRB- -LCB- -LSB-))

(defun stringify-token (token)
  (case token
    (-LRB- "(")
    (-rrb- ")")
    ;; [sfriedman:20130108.1302CST]
    ;; http://www.cis.upenn.edu/~treebank/tokenization.html
    ;; This website says that -lcb-/-rcb- should actually be [ and ], but
    ;; there are enough errors in the treebank that we need to change it here.
    (-lcb- "[")
    (-rcb- "]")
    (-lsb- "[")
    (-rsb- "]")
    (comma ",")
    (colon ":")
    (semicolon ";")
    (period ".")
    (open-quote "\"")
    (close-quote "\"")
    (single-quote "'")
    (i "I")
    (otherwise
     (if (symbolp token)
         (symbol-name token)
       (format nil "~s" token)))))

(defun stringify-tokens (tokens &optional (cap nil) &aux strings ans)
  (dolist (token tokens)
    (let ((str (stringify-token token)))
      (when (and (numberp token)
                 (equal (car strings) ",")
                 (< (length str) 3))
        (setf str (format nil "~a~a" (make-string (- 3 (length str)) :initial-element #\0) str)))
      (push str strings)))
  (setf ans (apply #'string-append (reverse strings)))
  (case cap
    (:downcase (string-downcase ans))
    (:capitalize (string-capitalize ans))
    (otherwise ans)))

(defun readout-tb-terminals (sexp &optional (out *standard-output*) (verbose nil))
  "Walk tb sentence sexp to its terminals and write them out."
  (let ((first? t)
       tokens  prior-token prior-tag)
    (flet ((push-word (token all-tokens tag)
             (when verbose
               (format t "~&~a ~a~%" all-tokens tag))
             (unless (or first?
                         (and (eql token 'N)
                              (eql tag 'RB))
                         (and (eql token 'NA)
                              (eql tag 'TO))
                         (and (eql token '%)
                              (eql prior-tag 'CD))
                         (and (eql tag 'CD)
                              (eql prior-tag '$))
                         (memq token *tb-no-space-before*)
                         (memq prior-token *tb-no-space-after*))
               (push " " tokens))
             (cond
               ((or first?
                    (eq tag 'NNP)
                    (eq tag 'NNPS)) ;; what else?
                (push (stringify-tokens all-tokens :capitalize) tokens))
               ((eq tag 'POS) (push "'s" tokens))
               ;;((eq tag 'CD)
               ;;(push-debug `(,token))
               ;;(break "the CD token is of type ~a" (type-of token))
               ;;(push (stringify-tokens all-tokens :downcase) tokens))
               (t (push (stringify-tokens all-tokens :downcase) tokens)))
             (setq prior-token token
                   prior-tag tag)
             (when first? (setq first? nil))))
      (labels
          ((walk (l)
             (when (consp l)
               (cond ((consp (cadr l))
                      (dolist (k (cdr l))
                        (walk k)))
                     ((or (symbolp (cadr l))
                          (numberp (cadr l)))
                      (push-word (cadr l) (cdr l) (car l)))
                     (t (push-debug l)
                        (break "new case"))))))
        (dolist (s sexp)
          (walk s))
        (let ((str (apply #'string-append (nreverse tokens))))
          (format out "~s~%" str)
          str)))))


(defun tb-to-text-file-reader/char-level (full-tb-filename)
  (with-open-file (stream full-tb-filename
                  :direction :input
                  :if-does-not-exist :error)
    (let (c
          ;; (paren-counter 0)
          ;; sexp  tokens  accumuator
          )
      (loop
           (setq c (read-char stream nil :eof))
         (when (eq c :eof) (return))
         (cond
)))))





