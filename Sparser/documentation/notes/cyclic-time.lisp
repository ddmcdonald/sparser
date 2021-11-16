;; nlp/Sparser/documentation/notes in preparation/cyclic-time
;; 11/15/21

When we think about the months of the year we know that they flow in a specific order from one to the next, and that when we get to their 'end' (December), they cycle around into the next year and start at their beginning (January). The same thing it true of the days of the week, the hours in a day, and for this note we're adding this conceptio to the seasons in the year.

The core of the model is a pair of mixin categories and associated methods these files in model/core/collections/, object.lisp and operations.lisp

(define-mixin-category sequential
  :specializes sequence
  :lemma (:adjective "sequential")
  :binds ((sequence sequence)
          (position ordinal)
          (previous sequential)
          (next sequential))
  :documentation "Augments the concept of a sequence by providing
 explicit relations tying together the successive items in the
 sequence to each can point to its immediate neighbor.")

(define-mixin-category cyclic
  :specializes sequential
  :lemma (:adjective "cyclic")
  :binds ((cycle-length :primitive number))
  :documentation "Cyclic sequences wrap. The 'next' of the last item
 in the sequence is the sequences first item. Natural way to conceptualize
 the months of the year and most of the other categories in time.")


This is the definition of 'month' which we're using as a template. This definition and the instantiation function 'define-month' are in core/time/months.lisp.

(define-category  month
  :specializes time
  :instantiates self
  :mixins (cyclic)
  :binds ((name :primitive word)
          (abbreviation :primitive word)
          (position-in-year . ordinal)
          (number-of-days . number))
  :index (:permanent :key name :get)
  :realization (:proper-noun name))

The individuals representing specific months are defined in a dossier. For instance:

(define-month "January" 1 31 "Jan")

Lets look at one of these individuals.

p> (get-month "January")
#<month "January" 1402>
t
sp> (d *)
#<month "January" 1402>
  plist         = (:rules (#<PSR-3489 month → "January">) :uid 1402 :permanent t)
  id            = 4
  type          = (#<ref-category MONTH>)
  old-binds     = (#<next = #<month "February" 1406>>..
  bound-in      = (#<previous = #1=#<month "January" 1402>> #<next = #1#> #<item = #1#>..
  rnodes        = nil
  downlinks     = #<hash-table :TEST eql :COUNT 0 {10776BEA63}>
  uplinks       = ((#<dl-vv number-of-days + #<number 31>> . #<month "January" 1401>))
  all-supers    = #<hash-table :TEST eq :COUNT 12 {10776BEB13}>
  restrictions  = (#<dl-vv number-of-days + #<number 31>>..
  not-super     = #<hash-table :TEST eq :COUNT 0 {10776BEBF3}>

sp> (indiv-old-binds *)
(#<next = #<month "February" 1406>>
 #<previous = #<month "December" 1436>>
 #<number-of-days = #<number 31>>
 #<position-in-year = #<ordinal  1069>>
 #<name = #<word "January">>)

The chain of next and previous bindings (from sequential) that link the months together is setup by the call to thread-sequence in make-months-sequence:

(defparameter *month-names*
  '("January" "February" "March" "April" "May"
    "June" "July" "August" "September"
    "October" "November" "December")
  "This might be useful in something else, so not 
   burying it inline in the call")

(defun make-months-sequence ()
  (let* ((the-months
          (mapcar #'(lambda (string) (get-month string))
                  *month-names*))
         (sequence (create-sequence the-months)))
    (old-bind-variable 'sequence sequence category::month)
    (old-bind-variable 'cycle-length 12 category::month)
    (thread-sequence sequence)))

This function is called make-temporal-sequences.

(defun make-temporal-sequences ()
  "Called directly from load-the-grammar after everything it needs
   has been loaded. Sets up relationships between particular time 
   objects and calls today to initialize the temporal-index."
  (let ((*legal-to-add-bindings-to-categories* t))
    (declare (special *legal-to-add-bindings-to-categories*))
    (make-months-sequence)
    (make-weekdays-sequence)
    (today))) ;; makes a temporal-index

As you may have noticed, this sets the flag that sanctions adding bindings to categories. This goes along with another group of flags that are set by calls like these.

(fixed-at-runtime '(sequence previous next) 'sequential)
(fixed-at-runtime '(cycle-length) 'cyclic)
(fixed-at-runtime '(abbreviation position-in-year number-of-days) 'month)

These mark those variables by adding them to a list to indicate that they don't carry any sort of new information.

(defvar *variables-bound-at-load-time* nil
  "Accumulates a list of variables that are bound at definition time
   rather than parse time and consequently should be handled differently
   by walking code that describes semantic interpretations or gathers
   information by walking an interpretation.")

This routine is one of the place where this information comes into play. Read through the walking code in drivers/chart/psp/semantic-extraction.lisp to understand what it is doing.

(defmethod traverse-sem ((binding binding) fn)
  (if (fixed-value binding) ;; don't recurse
    (funcall fn (binding-value binding))
    (traverse-sem (binding-value binding) fn)))


The whole point of defining sequential and cyclic is to efficiently support a versatile set of methods. Describing these properly is the subject of a different note about k-methods, but here is one example.

(def-k-function next-item (item)
  (:documentation "Return the item that follows the
    reference item its natural sequence. Should wrap around
    to the next item in its natural sequence if appropriate")
  (:method ((item category::sequential))
    (value-of 'next item)))


Adding this to season category involves adding cyclic as a mixin and adding the keyword :get to it index field.

(define-category  season
  :specializes time
  :instantiates self
  :mixins (cyclic)
  :binds ((name :primitive word)
          (position-in-year . ordinal))
  :index (:permanent :key name :get)
  :lemma (:common-noun "season")
  :realization (:common-noun name ))

The :get sets up a direct link for accessing individual seasons like this. The details are in the note on defining categories.

(defun get-season (name)
  (if *description-lattice*
    (get-by-name category::season name)
    (find-individual 'season :name name)))

We have to add another 'fixed-at-runtime' expression. Unless we tighten up category inheritance to allow more variables like 'position-in-year' to be inherited, the variable has to be taken from the category that binds it. 

(fixed-at-runtime '(position-in-year) 'season)

We need to setup the list of the seasons we have. Note that these are in lowercase. Starting with 'summer' was an arbitrary choice since real point is they are a repeating sequence.

(defvar *season-names*
  '("summer"
    ("fall" "autumn")
    "winter"
    "spring"))

And observe that we have a new situation posed by the fact that "fall" and "autumn" are synonyms -- they both have the same position in the year. This forces the make sequence function to appreciate the list in *season-names*.

(defun make-seasons-sequence ()
  "Adds previous/next bindings to the individual seasons
   and specifies when they wrap"
  (let* ((the-seasons
          (loop for season-exp in *season-names*
             when (stringp season-exp) collect (get-season season-exp)
             when (consp season-exp)
             collect (loop for s in season-exp
                        collect (get-season s))))
         (sequence (create-sequence the-seasons)))
    (old-bind-variable 'sequence sequence category::season)
    (old-bind-variable 'cycle-length 4 category::season)
    (thread-sequence sequence)))


And it forced a similar change in the thread-sequence k-method. K-methods (and their k-function counterpart to defgeneric in CLOS) are describe elsewhere. 

(def-k-function thread-sequence (sequence)
  (:documentation "Walk through the sequence of a category that
   is cyclic and set the previous and next variables of each
   of the items in the sequence, wrapping the two ends.
   Designed for months and weekdays. Uses old bindings because
   we're operating over a sequence of a fixed set individuals.
   The continued replacement of individuals from regular bindings
   making new DL individuals with each variable is not warranted
   for variables that represent fixed properties like the cycle length
   of the months in a year.")
  (:method ((sequence category::sequence))
    (let* ((items (value-of 'items sequence))
           (first (car items))
           (last (car (last items))))
      (flet ((set-prior (prior item)
               (if (consp prior)
                 (loop for i in prior
                    do (progn (old-bind-variable 'next item i)
                              (old-bind-variable 'previous i item)))
                 (else
                   (old-bind-variable 'next item prior)
                   (old-bind-variable 'previous prior item)))))
        (do ((prior last item)
             (item (car items) (if rest (car rest) first))
             (rest (cdr items) (cdr rest)))
            ((null rest)
             (set-prior prior item)
             (set-prior item first))
          (if (consp item) ; two elements at the same position
            (loop for sub-item in item
               do (set-prior prior sub-item))
            (set-prior prior item)))))))


Now we can look at the results.

sp> (get-season "spring")
#<season "spring" 1746>
sp> (defvar spring *)

sp> (indiv-old-binds spring)
(#<previous = #<season "winter" 1744>> #<next = #<season "summer" 1738>>
 #<position-in-year = #<ordinal  1078>> #<name = #<word "spring">>)

sp> (next-item spring)
#<season "summer" 1738>

sp> (prior-item *)
#<season "spring" 1746>

In operations.lisp there is a general method for next-item that depends on a few other general methods on sequences in that file.

(def-k-function next-item (item)
  (:documentation "Return the item that follows the
    reference item its natural sequence. Should wrap around
    to the next item in its natural sequence if appropriate")
  (:method ((item category::sequential))
    (value-of 'next item)))

One of the beauties of object oriented programming and CLOS/k-methods in particular is that we can specialize these methods to what makes sense in a particular part of the model. Here, for example is the next-item generic function specialized for years (in core/time/years.lisp).

(def-k-method next-item ((year category::year))
  (or (value-of 'next year)
      (with-bindings (value) year
        (let* ((value* (1+ value))
               (next-year (or (get-year value*)
                              (define-individual 'year
                                  :name (format nil "~a" value*)
                                  :value value*))))
          (old-bind-variable 'previous next-year year)
          (old-bind-variable 'next next-year year)
          next-year))))

