;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996,2014-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "alphabet fns"
;;;   Module:  "analyzers;tokenizer:"
;;;  Version:  March 2020

;; initiated 9/21/92 v2.3
;; (4/20/93) added Set-tokenizer-table-entry
;; (8/20) finished it.
;; 0.1 (12/2) Removed the range checks from the set function as meaningless
;;      and fixed a bug
;;     (6/9/94) added character-type predicates.
;; 0.2 (5/31/96) Increased the size of the array to 256.
;;     (2/3/13) added doc that its value is burned in.
;; 0.3 (3/2/14) Added character-entry to be the common access point
;;      for all ranges of character codes.
;;     (3/18/14) Moved in the setup code for Greek characters
;;     (7/30/14) added all-punctuation-chars?

(in-package :sparser)


;;;-----------
;;; the array
;;;-----------

(defparameter *character-dispatch-array* (make-array 256)
  "This is essentially ascii plus the second 128 character block
   of UTF-8, where a lot of Latin-1 lives.
   NOTE -- this number is burned into the code of continue-token 
   because we don't want to further burden the inner-most of
   inner loops.")

#| the 'out of band' characters (i.e. code points higher than 256)
are defined in an alist in alphabet.lisp that is bound to
the parameter *entries-for-out-of-band-characters* that is
defined there. 

Whenever a new punctuation character is added it has to be
defined. Known punctuation is defined in grammar/rules/words/
punctuation.list. For smaller code points the file makes an
explicit call to define-punctuation. For all other punctuation
it is added to a list in the file that is bound to
*out-of-band-punctuation*. At the bottom of the punctuation file
there is a call to add-punctuation-chars which maps the function
add-punctuation-char over the list.

|#


(defparameter *cache-out-of-band-characters* t)

(defun entry-for-out-of-band-character (char-code)
  (declare (special *entries-for-out-of-band-characters*))
  (let ((entry
         (cadr (assoc char-code *entries-for-out-of-band-characters*))))
    (or entry
        (when *cache-out-of-band-characters*
          (cache-out-of-band-character char-code))
        (announce-out-of-range-character))))

(defvar *new-characters-to-define* nil
  "Holds a list of character points that require definition.
   Needs to be emptied by hand. No provision as yet for storing
   across runs if you don't actually make the definitions.")

(defun cache-out-of-band-character (char-code)
  ;; Called from character-entry when zero is returned or from
  ;; entry-given-char-code for the characters above 256.
  ;; Announce what's happening. Store the character code.
  ;; Return an inoccuous character is its place.
  (let ((character (code-char char-code)))
    (format t "~&~%The character \"~a\", (code = ~a) is not in the alphabet yet.~
                 ~%Using a space in its place.~%"
            character char-code)
    (pushnew (cons character char-code)
          *new-characters-to-define*
          :test #'equal)
    '(:punctuation . :space)))



;;--- readout the cache

#| When new characters occur, you can use write-lines-for-out-of-band-cache
 which reads out what's in the cache and writes out the entries for them
 in sorted order.

 You just add that list to the bottom of alphabet.lisp. You have to inspect
 the list by eye to determine which, if any, of the new characters are
 punctuation. Change those entries to be punctuation entries, and then
 go to grammar/rules/words/punctuation.lisp and add definitions for them.
|#

(defun sort-out-of-band-cache ()
  (when *new-characters-to-define*
    (sort (copy-list *new-characters-to-define*) #'<  :key #'cdr)))

(defun write-alphabet-entry-line (cache-data stream)
  (let ((character (car cache-data))
        (char-code (cdr cache-data)))
    (format stream "~&(~a (:alphabetical . (:lowercase .,(code-char ~a)))) ;; ~@c ~%"
            char-code char-code character)))

(defun write-lines-for-out-of-band-cache (&optional (stream *standard-output*))
  (let ((data (sort-out-of-band-cache)))
    (loop for datum in data
          do (write-alphabet-entry-line datum stream))))

(defun write-lines-for-char-codes (char-codes &optional (stream *standard-output*))
    (loop for ccode in char-codes
       do (write-alphabet-entry-line (cons (code-char ccode) ccode) stream)))



;;---------------- extended (Mac) char set ------------

(defun announce-out-of-range-character ()
  "Called in run-token-fsa if a character doesn't have an entry
   or its entry is 0. Cache the character and return the entry
   for a space so the process can continue"
  (let* ((character (elt *character-buffer-in-use* *index-of-next-character*))
         (code (char-code character)))
    (push-debug `(,*index-of-next-character* ,*character-buffer-in-use*))      
    (push-debug `(,character ,code))
    (when (null (character-entry character))
      (warn "Null entry for character ~a at position ~a in the character buffer"
            character *index-of-next-character*))
    (cache-out-of-band-character code)))


#+ignore   
    (error "~%The input stream contains the character \"~A\", whose character code~
            ~%is ~A.  That character is not part of the ascii character set~
            ~%(0 to 127), and has not yet been entered into either Sparser's ~
            ~%extended character array (128 to 255) or its table of 'out of bound'~
            ~%characters. Note that above ascii the character encoding is~
            ~%expected to be unicode, UTF-8.~
            ~%~
            ~%   If the character shouldn't have been in the stream, then you~
            ~%should just remove it and try again. If it does belong there, then ~
            ~%you can extend the character set. If you meta-. on this function~
            ~%that will take you to the file analyzers/tokenizer/alphabet.lisp~
            ~%where you can see examples to copy and read more details.~
            ~%"
           character code (length *character-dispatch-array*))

#| When you get that error it's likely because the text you're running
has a UTF-8 character that we don't have an entry for yet. The error message
showed you what the character was visually, and identified the code point
that has to be added to the *entries-for-out-of-band-characters* alist at
the bottom of this file. Your job is to figure out what "normal" character
that corresponds to (e.g. a unicode left-single-quotation-mark corresponds
to an ascii single quote), as least for the purpose of telling the token fsa
how to handle it -- the original character won't be replaced in the token.

This will usually entail a web search. There are lots of unicode web pages.
This is a reasonable choice http://www.fileformat.info/info/unicode/char/search.htm
|#


;; (code-char 954) => #\Greek_Small_Letter_Kappa
;; (format nil "~x" 954) => 3BA
;; (format nil "~a" (code-char 954)) => "κ"

(defun to-hex (n)
  (format nil "~x" n))

;; Reader macro #x goes from hex to ordinary decimal
;; #x2015 = 8213

;;;----------------------------
;;; access function (off-line)
;;;----------------------------

(defun tokenizer-entry (character)
  (unless (characterp character)
    (error "Argument has to be a character. ~%~A is a ~A"
           character (type-of character)))
  (character-entry character))

(defun character-entry (character)
  ;; caller has to guarentee that the argument is a character
  ;; since this is part of the tokenizer's inner loop
  (declare (special *cache-out-of-band-characters*))
  (let ((char-code (char-code character)))
    (cond 
     ((< char-code 128) ;; this range is completely filled in
      (elt *character-dispatch-array* char-code))
     ((< char-code 256) ;; length of *character-dispatch-array*
      ;; but sparsely populated. Empty code points return 0.
      (or (elt *character-dispatch-array* char-code)
          (when *cache-out-of-band-characters*
            (cache-out-of-band-character char-code))))
     (t ;; consult a table -- the escape for the rest of Unicode
      (entry-for-out-of-band-character char-code)))))

(defun entry-given-char-code (char-code)
  ;; How expensive is a tail call?  Maintenance says this should
  ;; be a subroutine of character-entry
  ;; N.b. This will blow up or be stupid if you call it with
  ;; an unknown out-of-band character
  (cond 
   ((< char-code 128) ;; this range is completely filled in
    (elt *character-dispatch-array* char-code))
   ((< char-code 256) ;; length of *character-dispatch-array*
    ;; but sparsely populated. Empty code points return 0.
    (elt *character-dispatch-array* char-code))
   (t ;; consult a table -- the escape for the rest of Unicode
    (entry-for-out-of-band-character char-code))))



;;;------------
;;; predicates
;;;------------

(defun digit-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :number)
      entry)))

(defun alphabetic-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :alphabetical)
      entry)))

(defun meaningless-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :punctuation)
      (when (eq (cdr entry) :meaningless)
        entry))))

(defun punctuation-char? (c)
  (let ((entry (tokenizer-entry c)))
    (when (eq (first entry) :punctuation)
      (unless (eq (cdr entry) :meaningless)
        (unless (reserved-char? c)
          entry)))))

(defun all-punctuation-chars? (string)
  (every #'punctuation-char? string))

(defun reserved-char? (c)
  (when (or (eql c #\^A)
            (eql c #\^B)
            (eql c #\^D))
    (tokenizer-entry c)))

(defun lowercase-letter? (c)
  ;; (character-entry #\p) = (:alphabetical :lowercase . #\p)
  (assert (characterp c))
  (let ((code (char-code c)))
    (when (> code 96) ;; a = 97
      (> 123 code))))
#| tests
(lowercase-letter? #\a)  (lowercase-letter? #\z)
(lowercase-letter? #\`)  (lowercase-letter? #\{)
|#
;; Lowercase Greek starts with 945 and ends with 969 



;;;-----------------------------
;;; changing the initial values
;;;-----------------------------

(defun set-tokenizer-table-entry (&key ascii-number
                                       character-type
                                       case
                                       character )
  ;; data checks
  (unless ascii-number
    (error "The 'ascii-number' argument, indicating which table entry to ~
            change,~%  must be given."))
  (unless character-type
    (error "The 'character-type' argument must be given."))
  (unless character
    (error "The 'character' argument, indicating what you want the ~
            interpretation to be~%  must be given."))

  (unless (integerp ascii-number)
    (error "The 'ascii-number' argument must an integer.~
            The value ~A is a ~A." ascii-number (type-of ascii-number)))
  (unless (and (>= ascii-number 0)
               (<= ascii-number 127))
    (error "The 'ascii-number' argument must be between 0 and 127 ~
            inclusive.~%The value ~A is not." ascii-number))

  (unless (member character-type '(:punctuation :number :alphabetical))
    (error "The 'character-type' argument, ~A~
            ~%is not one of the keywords :punctuation :number ~
            or :alphabetical" character-type))

  (unless (characterp character)
    (unless (eq character :meaningless)
      (error "The 'character' argument must be given as a character ~
              object~%  e.g. #\A, #\newline  or for punctuation it ~
              may be the keyword :meaningless.~%Your value, ~A, is a ~A"
             character (type-of character))))

  (when (eq character-type :punctuation)
    (unless (eq character :meaningless)
      (unless (punctuation-named character)
        (error "The character ~A is designated to be punctuation~
                but has not yet been defined as such." character))))

  (when (eq character-type :alphabetical)
    (unless case
      (error "You have to include the 'case' argument when the ~
              character-type is alphabetical."))
    (unless (member case '(:uppercase :lowercase))
      (error "The 'case' must be one of the keywords :uppercase or ~
              :lowercase~%  You supplied ~A" case)))


  (setf (elt *character-dispatch-array* ascii-number)
        (ecase character-type
          (:punctuation
           (if (eq character :meaningless)
             '(:punctuation . :meaningless)
             `(:punctuation . ,(punctuation-named character))))

          (:number
           `(:number . (:digit . ,character)))

          (:alphabetical
           `(:alphabetical . (,case . ,character))))))
       

;;;--------------------------
;;; Greek character handling 
;;;--------------------------
;; See rules-with-greek-chars-substituted

(defvar *greek-character-map* nil
  "A map from a string like 'alpha' to the corresponding
   greek chaacter")

(defun populate-greek-character-map ()
  (labels
     ((populate (string number)
        (let ((entry (entry-given-char-code number)))
          (let* ((char(character-in-entry entry))
                 (char-string (make-string 1 :initial-element char)))
            (push `(,string . ,char-string) 
                  *greek-character-map*))))

      (character-in-entry (list)
        ;; e.g. (:alphabetical :lowercase . #\Greek_Small_Letter_Kappa)
        (cdr (cdr list))))

    (populate "alpha"   945)
    (populate "beta"    946)
    (populate "gamma"   947)
    (populate "delta"   948)
    (populate "epsilon" 949)
    (populate "zeta"    950)
    (populate "eta"     951)
    (populate "theta"   952)
    (populate "iota"    953)
    (populate "kappa"   954)
    *greek-character-map*))

(defun greek-character-for (character-name)
  (let ((pair (assoc character-name *greek-character-map*
                     :test #'string-equal)))
    (unless pair
      (error "No Greek character listed for \"~a\"" character-name))
    (cdr pair)))

