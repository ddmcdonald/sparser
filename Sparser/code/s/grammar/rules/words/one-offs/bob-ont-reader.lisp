;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright 2018 David D. McDonald, all rights reserved
;;;
;;;     File: "bob-ont-reader"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  March 2018

;; initiated 3/10/18 to mine the word information TRIPS

#| Notes

A susbstantial number of the concept forms in bob-ont-dsl.lisp have two terms
in their inherit field, e.g. 

(CONCEPT
  ONT::MULTIPLE
  (INHERIT
    ONT::MATHEMATICAL-TERM ABSTR-OBJ))

The second term -- abstr-obj here -- is taken from a fixed set of them 
(see list at bottom of the file) and is not defined within the file. 
After imagining it might be useful to record these as mix-ins of some sort
I decided to stop recording them.

|#

(in-package :sparser)


;;--- classes

(defclass trips-ont-concept (named-object)                         
  ((wn-senses :initform nil :accessor wn-senses
   :documentation "A possibly empty list of WordNet lemmas")
   (super-concept :initform nil :accessor trc-superc
                  :initarg :sc)
   (sub-concepts :initform nil :accessor trc-subcs)
   (comment :initform "" :accessor trc-comment :initarg :comment)
   ) ;; also consider sem-framem sem-feats
  (:documentation "Holds the digest of one concept"))


(defclass wordnet-lemma (named-object)
  ((string :initform "" :accessor wn-string :initarg :string)
   (index :initform "" :accessor wn-index :initarg :index)
   (linked-concepts :initform nil :accessor wn-backlink :initarg :links-to))
  (:documentation "What we can pull out of symbols like 
    WN::|attribute%1:03:00::| without going the next step and
    looking up the whole WordNet entry"))

#| From https://wordnet.princeton.edu/documentation/senseidx5wn (3/12/18)
The pattern is <lemma>%<lexical sense> where the sense is encoded as

   ss_type : lex-filenum : lex_id : head_word : head_id

The ss_type is one decimal digit for the synset type, which roughly is part of speech

The lex-filenum is two decimal digits that pick out the lexicographer file that contains 
the synset for that sense.

The lex_id is a the number you append to the lemma to uniquely identify a sense within
the lexicographer file. Sense ids start with 00 and go up from there

Head_word and head_id are for adjective-satellite synsets

lifted from WordFinder/wordnet/wordnet-to-trips.lisp
(defun get-numerical-ss-type (ss-type)
  (cdr (assoc (if (symbolp ss-type) (symbol-name ss-type) ss-type)
	      '(("n" . 1) ("noun" . 1)
	        ("v" . 2) ("verb" . 2)
	        ("a" . 3) ("adj" . 3)
	        ("r" . 4) ("adv" . 4)
	        ("s" . 5)
	        )
	      :test #'string-equal
	      ))
|#


;;--- globals

(defvar *trips-concept-count* 0 ;; 2,534
  "Incremented with each form.")

(defvar *name-to-trips-concept* (make-hash-table) ;; 2,534
  "Names are symbols like ont::mug, i.e 'mug in the :ont package.")

(defvar *wn-symbol-to-lemma* (make-hash-table) ;; 4,464
  "Keys are WordNet lexical sense symbols like WN::|mug%1:06:00::|")

(defun clear-trips-ontology-assimilation ()
  (setf *trips-concept-count* 0)
  (clrhash *name-to-trips-concept*)
  (clrhash *wn-symbol-to-lemma*))

(defun get-trips-concept (name) ;; e.g. ONT::DOCUMENT
  (gethash name *name-to-trips-concept*))

(defun get-trips-wn-lemma (symbol) ;; e.g. WN::|faint%5:00:00:ill:01|
  (gethash symbol *wn-symbol-to-lemma*))


(defvar *trips-concept-fields* nil)
;; A sweep found these toplevel fields (or comment sem-frame overlap sem-feats inherit)


(defun ensure-ont-wn-packages ()
  "Define the packages in the file if they aren't already"
  (unless (find-package :ont) (defpackage :ont))
  (unless (find-package :wn) (defpackage :wn)))


;;--- driver

;; path:  (asdf:system-relative-pathname :clic "kb-data/bob-ont-dsl.lisp")

(defun assimilate-trips-ontology (path)
  (ensure-ont-wn-packages)
  (clear-trips-ontology-assimilation)
  (with-open-file (file-stream path :direction :input)
    (loop for form = (read file-stream nil)
       while form do (process-trips-concept-form form))))

(defun process-trips-concept-form (sexp)
  (when (eq (car sexp) 'provenance) ;; only the first form in the file
    (return-from process-trips-concept-form nil))
  (incf *trips-concept-count*)
  (let* ((name (cadr sexp))
         (alist (cddr sexp))
         (comment (cadr (assq 'comment alist)))
         (inherit-field (cdr (assq 'inherit alist)))
         (superc (car inherit-field)) ;; concept name
         (word-list (cdr (assq 'overlap alist))))

    (let* ((concept (make-instance 'trips-ont-concept
                      :name name :sc superc))
           (lemmas (when word-list
                     (process-trips-wn-symbols word-list concept))))
      (setf (gethash name *name-to-trips-concept*) concept)
      (when comment (setf (trc-comment concept) comment))
      (when lemmas (setf (wn-senses concept) lemmas))
      concept)))


(defun process-trips-wn-symbols (symbols concept)
  (loop for symbol in symbols
     collect (process-trips-wn-symbol symbol concept)))

(defun process-trips-wn-symbol (symbol concept)
  (let* ((pname (symbol-name symbol))
         (index-of-% (position #\% pname))
         (word-part (subseq pname 0 index-of-%))
         (index-part (subseq pname (1+ index-of-%))))
    ;; (when (gethash symbol *wn-symbol-to-lemma*)
    ;;   (format t "~&Appears in multiple concepts: ~a" symbol))
    (let ((lemma (make-instance 'wordnet-lemma
                                :name symbol
                                :string word-part
                                :index index-part
                                :links-to concept)))
      (setf (gethash symbol *wn-symbol-to-lemma*) lemma)
      lemma)))


;;--- postprocessing

(defvar *trips-concepts-without-inherits* nil)
(defvar *undefined-ont-c-names* nil)

(defun postprocess-the-trips-concepts ()
  "Replace concept symbols with concept objects, and notice the top"
  (loop for concept being the hash-value of *name-to-trips-concept*
     do (postprocess-trips-concept concept)))

(defun postprocess-trips-concept (ont-c)
  (flet ((get-ont-c (name)
           (gethash name *name-to-trips-concept*)))    
    (with-slots (super-concept mixin) ont-c
      (if (null super-concept)
        (push ont-c *trips-concepts-without-inherits*)
        (else
          (when (symbolp super-concept)
            (setf (trc-superc ont-c) (get-ont-c super-concept)))
          (let ((super (get-ont-c super-concept)))
            (pushnew ont-c (trc-subcs super))
            ont-c))))))

    
#|  (when (cdr inherits)
      (format t "~&~d Multiple supercs on ~a: ~a"
              *trips-concept-count* name inherits))
9 Multiple supercs on abstract-object: (referential-sem abstr-obj)
10 Multiple supercs on abstract-object-nontemporal: (abstract-object abstr-obj)
50 Multiple supercs on add-include: (adjust situation)
176 Multiple supercs on atmospheric-val: (physical-property-val abstr-obj)
220 Multiple supercs on bar-measure: (music-composition-element abstr-obj)
263 Multiple supercs on bodily-process: (physical-process situation)
645 Multiple supercs on direct-information: (event-of-action situation)
661 Multiple supercs on discipline: (function-object abstr-obj)
683 Multiple supercs on do: (aux situation)
687 Multiple supercs on domain-property: (abstract-object abstr-obj)
705 Multiple supercs on duplicate: (record situation)
756 Multiple supercs on enroll: (joining situation)
783 Multiple supercs on event-of-awareness: (event-of-change situation)
784 Multiple supercs on event-of-causation: (event-of-action situation)
786 Multiple supercs on event-of-creation: (event-of-action situation)
789 Multiple supercs on event-of-undergoing-action: (event-of-change situation)
847 Multiple supercs on extent-predicate: (predicate abstr-obj)
938 Multiple supercs on frequency-val: (process-val abstr-obj)
955 Multiple supercs on function-object: (abstract-object-nontemporal abstr-obj)
963 Multiple supercs on future: (aux situation)
1017 Multiple supercs on half-step: (pitch-unit abstr-obj)
1070 Multiple supercs on humidity-scale: (phys-measure-domain abstr-obj)
1193 Multiple supercs on key: (music-composition-element abstr-obj)
1424 Multiple supercs on multiple: (mathematical-term abstr-obj)
1429 Multiple supercs on music-scale: (music-composition-element abstr-obj)
1430 Multiple supercs on musical-document: (info-medium phys-obj)
1557 Multiple supercs on object-change: (change situation)
1566 Multiple supercs on octave: (pitch-interval abstr-obj)
1632 Multiple supercs on part-whole-val: (physical-property-val abstr-obj)
1638 Multiple supercs on passive: (aux situation)
1641 Multiple supercs on path: (predicate abstr-obj)
1671 Multiple supercs on physical-process: (event-of-undergoing-action
                                            situation)
1683 Multiple supercs on pitch: (music-composition-element abstr-obj)
1684 Multiple supercs on pitch-interval: (music-composition-element abstr-obj)
1783 Multiple supercs on prize: (function-object abstr-obj)
1838 Multiple supercs on put-on: (control-manage situation)
1874 Multiple supercs on record: (event-of-action situation)
1910 Multiple supercs on relinquish: (event-of-causation situation)
2111 Multiple supercs on situation: (event-type situation)
2153 Multiple supercs on sound-unit: (measure-unit abstr-obj)
2156 Multiple supercs on source: (function-object abstr-obj)
2232 Multiple supercs on submit: (giving situation)
2415 Multiple supercs on unit: (abstract-object abstr-obj)
2506 Multiple supercs on whole-step: (pitch-unit abstr-obj)
|#

#|  (when (gethash symbol *wn-symbol-to-lemma*)
      (format t "~&Appears in multiple concepts: ~a" symbol))
Appears in multiple concepts: activity%1:04:00::
Appears in multiple concepts: afraid%3:00:00::
Appears in multiple concepts: unacceptable%3:00:00::
Appears in multiple concepts: boarding_house%1:06:00::
Appears in multiple concepts: fracture%2:29:01::
Appears in multiple concepts: get%2:30:00::
Appears in multiple concepts: collection%1:14:00::
Appears in multiple concepts: aggregation%1:14:00::
Appears in multiple concepts: accumulation%1:14:00::
Appears in multiple concepts: assemblage%1:14:01::
Appears in multiple concepts: pile%1:14:00::
Appears in multiple concepts: column%1:14:00::
Appears in multiple concepts: column%1:25:02::
Appears in multiple concepts: combination%1:14:00::
Appears in multiple concepts: get%2:30:02::
Appears in multiple concepts: unlike%3:00:00::
Appears in multiple concepts: dyspnea%1:26:00::
Appears in multiple concepts: equal%3:00:00::
Appears in multiple concepts: enthusiastic%3:00:00::
Appears in multiple concepts: expensive%3:00:00::
Appears in multiple concepts: government%1:14:00::
Appears in multiple concepts: authorities%1:14:00::
Appears in multiple concepts: regime%1:14:00::
Appears in multiple concepts: woman%1:18:00::
Appears in multiple concepts: adult_female%1:18:00::
Appears in multiple concepts: agitated%3:00:00::
Appears in multiple concepts: drawer%1:06:00::
Appears in multiple concepts: mathematical_group%1:09:00::
Appears in multiple concepts: group%1:09:00::
Appears in multiple concepts: chemical_group%1:27:00::
Appears in multiple concepts: radical%1:27:00::
Appears in multiple concepts: group%1:27:00::
Appears in multiple concepts: group%1:03:00::
Appears in multiple concepts: grouping%1:03:00::
Appears in multiple concepts: have%2:40:05::
Appears in multiple concepts: have%2:35:00::
Appears in multiple concepts: strike%2:35:01::
Appears in multiple concepts: horizontal%3:00:00::
Appears in multiple concepts: incoming%3:00:00::
Appears in multiple concepts: cheap%3:00:00::
Appears in multiple concepts: high%3:00:02::
Appears in multiple concepts: interact%2:41:00::
Appears in multiple concepts: line%1:14:01::
Appears in multiple concepts: have%2:30:00::
Appears in multiple concepts: man%1:18:00::
Appears in multiple concepts: adult_male%1:18:00::
Appears in multiple concepts: instrumentation%1:06:00::
Appears in multiple concepts: instrumentality%1:06:00::
Appears in multiple concepts: sign%1:26:00::
Appears in multiple concepts: medicine%1:06:00::
Appears in multiple concepts: middle%5:00:00:intermediate:00
Appears in multiple concepts: military_unit%1:14:00::
Appears in multiple concepts: military_force%1:14:00::
Appears in multiple concepts: military_group%1:14:00::
Appears in multiple concepts: force%1:14:01::
Appears in multiple concepts: close%3:00:02::
Appears in multiple concepts: happen%2:30:00::
Appears in multiple concepts: organization%1:14:00::
Appears in multiple concepts: organisation%1:14:00::
Appears in multiple concepts: outgoing%3:00:00::
Appears in multiple concepts: drug%1:06:00::
Appears in multiple concepts: chill%1:26:01::
Appears in multiple concepts: nausea%1:26:00::
Appears in multiple concepts: brown%5:00:00:chromatic:00
Appears in multiple concepts: card%1:06:00::
Appears in multiple concepts: persuade%2:32:00::
Appears in multiple concepts: force%2:36:00::
Appears in multiple concepts: impel%2:36:00::
Appears in multiple concepts: coerce%2:41:00::
Appears in multiple concepts: hale%2:41:00::
Appears in multiple concepts: squeeze%2:41:01::
Appears in multiple concepts: pressure%2:41:00::
Appears in multiple concepts: force%2:41:00::
Appears in multiple concepts: measure%1:03:00::
Appears in multiple concepts: quantity%1:03:00::
Appears in multiple concepts: amount%1:03:00::
Appears in multiple concepts: exchange%2:40:00::
Appears in multiple concepts: exchange%2:40:02::
Appears in multiple concepts: row%1:14:00::
Appears in multiple concepts: row%1:17:00::
Appears in multiple concepts: same%3:00:02::
Appears in multiple concepts: send%2:32:00::
Appears in multiple concepts: post%2:32:02::
Appears in multiple concepts: mail%2:32:00::
Appears in multiple concepts: ship%2:38:00::
Appears in multiple concepts: send%2:38:00::
Appears in multiple concepts: transport%2:38:01::
Appears in multiple concepts: transmit%2:35:00::
Appears in multiple concepts: transfer%2:35:00::
Appears in multiple concepts: transport%2:35:01::
Appears in multiple concepts: channel%2:35:00::
Appears in multiple concepts: channelize%2:35:00::
Appears in multiple concepts: channelise%2:35:00::
Appears in multiple concepts: air%2:32:02::
Appears in multiple concepts: make_pass%2:38:00::
Appears in multiple concepts: ordering%1:14:00::
Appears in multiple concepts: order%1:14:00::
Appears in multiple concepts: ordination%1:14:00::
Appears in multiple concepts: form%1:07:01::
Appears in multiple concepts: share%2:40:00::
Appears in multiple concepts: quiet%3:00:01::
Appears in multiple concepts: social_group%1:14:00::
Appears in multiple concepts: beginning%1:15:00::
Appears in multiple concepts: end%2:42:00::
Appears in multiple concepts: terminate%2:30:01::
Appears in multiple concepts: pedestal%1:06:00::
Appears in multiple concepts: stand%1:06:00::
Appears in multiple concepts: support%1:06:00::
Appears in multiple concepts: system%1:06:00::
Appears in multiple concepts: system%1:14:00::
Appears in multiple concepts: throughway%1:06:00::
Appears in multiple concepts: time_period%1:28:00::
Appears in multiple concepts: truck%1:06:00::
Appears in multiple concepts: motortruck%1:06:00::
Appears in multiple concepts: know%2:31:02::
Appears in multiple concepts: know%2:31:03::
Appears in multiple concepts: know%2:31:01::
Appears in multiple concepts: cognize%2:31:00::
Appears in multiple concepts: cognise%2:31:00::
Appears in multiple concepts: set_down%2:35:00::
Appears in multiple concepts: unpleasant%3:00:00::
Appears in multiple concepts: vertical%3:00:00::
Appears in multiple concepts: perpendicular%3:00:00::
Appears in multiple concepts: low%3:00:02::
Appears in multiple concepts: complete%3:00:00::
Appears in multiple concepts: window%1:06:00::
Appears in multiple concepts: window%1:06:01::
Appears in multiple concepts: exercise%2:29:01::
Appears in multiple concepts: write%2:32:00::
Appears in multiple concepts: fresh%3:00:01::
|#


#|  usr/local/share/wordnet/WordNet-3.0/dict/lexnames
00	adj.all	3
01	adj.pert	3 
02	adv.all	4
03	noun.Tops	1  
04	noun.act	1
05	noun.animal	1
06	noun.artifact	1
07	noun.attribute	1
08	noun.body	1
09	noun.cognition	1
10	noun.communication	1
11	noun.event	1
12	noun.feeling	1
13	noun.food	1
14	noun.group	1
15	noun.location	1
16	noun.motive	1
17	noun.object	1
18	noun.person	1
19	noun.phenomenon	1
20	noun.plant	1
21	noun.possession	1
22	noun.process	1
23	noun.quantity	1
24	noun.relation	1
25	noun.shape	1
26	noun.state	1
27	noun.substance	1
28	noun.time	1
29	verb.body	2
30	verb.change	2
31	verb.cognition	2
32	verb.communication	2
33	verb.competition	2
34	verb.consumption	2
35	verb.contact	2
36	verb.creation	2
37	verb.emotion	2
38	verb.motion	2
39	verb.perception	2
40	verb.possession	2
41	verb.social	2
42	verb.stative	2
43	verb.weather	2
44	adj.ppl	3
|#

#|  usr/local/share/wordnet/WordNet-3.0/dict/verb.Framestext
1  Something ----s
2  Somebody ----s
3  It is ----ing
4  Something is ----ing PP
5  Something ----s something Adjective/Noun
6  Something ----s Adjective/Noun
7  Somebody ----s Adjective
8  Somebody ----s something
9  Somebody ----s somebody
10 Something ----s somebody
11 Something ----s something
12 Something ----s to somebody
13 Somebody ----s on something
14 Somebody ----s somebody something
15 Somebody ----s something to somebody
16 Somebody ----s something from somebody
17 Somebody ----s somebody with something
18 Somebody ----s somebody of something
19 Somebody ----s something on somebody
20 Somebody ----s somebody PP
21 Somebody ----s something PP
22 Somebody ----s PP
23 Somebody's (body part) ----s
24 Somebody ----s somebody to INFINITIVE
25 Somebody ----s somebody INFINITIVE
26 Somebody ----s that CLAUSE
27 Somebody ----s to somebody
28 Somebody ----s to INFINITIVE
29 Somebody ----s whether INFINITIVE
30 Somebody ----s somebody into V-ing something
31 Somebody ----s something with something
32 Somebody ----s INFINITIVE
33 Somebody ----s VERB-ing
34 It ----s that CLAUSE
35 Something ----s INFINITIVE
|#
