;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-

;;; MUMBLE-05: grammar; phrases
;;;
;;; Copyright (C) 1985-2000  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2005,2011 David D. McDonald

;; Changelog
;;  6/6/95 added VP-one-arg/not-passive.  11/30/97 added set of SVPO phrases
;;   from M's Sage version of Mumble. 7/15/99 added suite of phrases for
;;   digit sequences. 6/24/00 added some np phrases.
;; 1/10/05 Pulled the define-word calls.
;; 1/25 Added two-element-captialized-sequence
;; 3/28/11 Removed duplicate of qualifier-head. 4/6 added head-qualifier

(in-package :mumble)


;#################################################################
;                          CLAUSES
;#################################################################

;;;--------------
;;;  no object
;;;--------------

;---SV (intransitives, ergatives...?)

(define-phrase SV (s v)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v)))

(define-phrase SV-for-inf   (s v)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (for-subject objective)
	  predicate (vp
		      verb v)))


(define-phrase SV-subj-rel   (wh s v)
  comp  wh :additional-labels (relative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v)))


(define-phrase SV-subj-whq   (wh s v)
  comp  wh :additional-labels (interrogative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v)))


;;;----------------
;;;   one object
;;;----------------

;--- S V O  "Fluffy loves balls"   Agent-Patient

(define-phrase SVO (s v o)
  (clause :set-state (:aux-state initial)
    subject s  :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

(define-phrase SVO-for-inf (s v o)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

(define-phrase SVO-subj-rel (wh s v o)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

(define-phrase SVO-obj-rel (wh s v o)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

(define-phrase SVO-subj-whq (wh s v o)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

(define-phrase SVO-obj-whq (wh s v o)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		  :additional-labels (objective))))

;cleft, pseudocleft, reduced conjoined forms


;##################################################
;     PASSIVES without BY PHRASES
;##################################################

(define-phrase SVO-SIMPLE-PASSIVE (s v)
  (clause :set-state (:aux-state initial)
    subject s  :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v)))

(define-phrase SVO-SIMPLE-PASSIVE-for-inf (s v)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		be+en "be"
		verb v)))

(define-phrase SVO-SIMPLE-PASSIVE-subj-rel (wh s v)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v)))


(define-phrase SVO-SIMPLE-PASSIVE-subj-whq (wh s v)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v)))

(define-phrase S-V-DO-SIMPLE-PASSIVE (s v do)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-DO-SIMPLE-PASSIVE_subj-rel (wh s v do)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-DO-SIMPLE-PASSIVE_obj-rel (wh s v do)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do
		  :additional-labels (objective))))


(define-phrase S-V-DO-SIMPLE-PASSIVE_for-inf (s v do)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-DO-SIMPLE-PASSIVE_subj-whq (wh s v do)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do :additional-labels (objective))))

(define-phrase S-V-DO-SIMPLE-PASSIVE_obj-whq (wh s v do)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		direct-object do
		  :additional-labels (objective))))

;---  S V O  "It's mine"

; The verb is always 'be' as far as I can imagine, but we should leave
; that to lexicalization regardless.

(define-phrase SVPossessive (s v o)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                direct-object o :additional-labels (possessive-np))))



;;SVAdverbial  --- S V Adv  

(define-phrase SVADV (s v a)
  (clause :set-state (:aux-state initial)
    subject s  :additional-labels (nominative)
    predicate (vp
		verb v
		adverbial-phrase a)))


(define-phrase SVADV-for-inf (s v a)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		adverbial-phrase a)))

(define-phrase SVADV-subj-rel (wh s v a)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		adverbial-phrase a)))

(define-phrase SVADV-subj-whq (wh s v a)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		adverbial-phrase a)))

;;need to think about the object relatives:
;;  "10 feet, which is how far he ran"
#+ignore 
(define-phrase SVadv-obj-rel (wh s v a)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		adverbial-phrase a)))

;;need to think about the object whqs:
;;  "how far did he run?" "Where did he go?"
#+ignore
(define-phrase SVAdv-obj-whq (wh s v a)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		adverbial-phrase a)))



;;##################################################
;;  S V Particle "the plane took off"
;;##################################################

(define-phrase SVP (s v p)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p)))


(define-phrase SVP-for-inf   (s v p)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (for-subject objective)
	  predicate (vp
		      verb v
		      particle p)))


(define-phrase SVP-subj-rel   (wh s v p)
  comp  wh :additional-labels (relative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p)))


(define-phrase SVP-subj-whq   (wh s v p)
  comp  wh :additional-labels (interrogative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p)))



;;##################################################
;;  S V 0 Particle "Milfred blew the truck up"  
;;                 "Milfred blew up the truck"
;;##################################################

(define-phrase SVPO   (s v p o)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p
		      direct-object o)))

(define-phrase SVPO-for-inf   (s v p o)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (for-subject objective)
	  predicate (vp
		      verb v
		      particle p
		      direct-object o)))


(define-phrase SVPO-subj-rel   (wh s v p o)
  comp  wh :additional-labels (relative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p
		      direct-object o)))

(define-phrase SVPO-subj-whq   (wh s v p o)
  comp  wh :additional-labels (interrogative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      particle p
		      direct-object o)))

(define-phrase SVOP   (s v p o)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      direct-object o
		      particle p)))

(define-phrase SVOP-for-inf   (s v p o)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (for-subject objective)
	  predicate (vp
		      verb v
		      direct-object o
		      particle p)))


(define-phrase SVOP-subj-rel   (wh s v p o)
  comp  wh :additional-labels (relative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      direct-object o
		      particle p)))


(define-phrase SVOP-subj-whq   (wh s v p o)
  comp  wh :additional-labels (interrogative-pronoun nominative)  
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      direct-object o
		      particle p)))


(define-phrase SVPO-obj-rel (wh s v p o)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
                particle p
		direct-object o
		  :additional-labels (objective))))


(define-phrase SVPO-obj-whq (wh s v p o)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
                particle p
		direct-object o
		  :additional-labels (objective))))




;;//////////////////////////////////////////
; Should these be transformational variants, or independently
; choosen ??

(define-phrase SVOPrt (s v o p)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
		      verb v
		      direct-object o :additional-labels (objective)
		      particle p)))



; S V P O  "Mustard is used in lots of salads"

(define-phrase SVPrepO (s v p o)  ;; /// rewrite as SVPO
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
                     verb v
                     preposition p
                     direct-object o :additional-labels (objective))))



;;;------------------
;;;   two objects
;;;------------------


;--- S V O1 O2   i.e. no dative movement

#| "... call him an intruder" |#

(define-phrase SVO1O2 (s v o1 o2)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
                     verb v
                     direct-object o1 :additional-labels (objective)
                     second-object o2 :additional-labels (objective))))




;################################################################
;  S V IO DO   
;################################################################
;---  undergoes dative movement

(define-phrase S-V-IO-DO (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-IO-DO_subj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-IO-DO_obj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-IO-DO_for-inf (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-IO-DO_subj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

(define-phrase S-V-IO-DO_obj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		indirect-object io
		  :additional-labels (objective)
		direct-object do
		  :additional-labels (objective))))

;################################################################
;  S V DO FOR dative
;################################################################	


(define-phrase S-V-DO-ForIO (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative) 
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (for-dative objective))))



(define-phrase S-V-DO-ForIO_subj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do
		  :additional-labels (objective)
		indirect-object io :additional-labels (for-dative objective))))



(define-phrase S-V-DO-ForIO_obj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-DO-ForIO_for-inf (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (for-dative objective) )))


(define-phrase S-V-DO-ForIO_subj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-DO-ForIO_obj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (for-dative))))


;###########################################################
;    for dative passives
;  "the book was bought for peter"


(define-phrase S-V-ForIO-SIMPLE-PASSIVE (s v io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative) 
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-ForIO-SIMPLE-PASSIVE_subj-rel (wh s v io)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-ForIO-SIMPLE-PASSIVE_obj-rel (wh s v io)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-ForIO-SIMPLE-PASSIVE_for-inf (s v io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative objective) )))


(define-phrase S-V-ForIO-SIMPLE-PASSIVE_subj-whq (wh s v io)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative objective))))


(define-phrase S-V-ForIO-SIMPLE-PASSIVE_obj-whq (wh s v io)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (for-dative))))

;################################################################
;  S V DO  -TO dative  "give"  (IO-DO phrases defined above]
;################################################################


(define-phrase S-V-DO-ToIO (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative) 
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-DO-ToIO_subj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-DO-ToIO_obj-rel (wh s v do io)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective))))



(define-phrase S-V-DO-ToIO-for-inf (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective) )))



(define-phrase S-V-DO-ToIO_subj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-DO-ToIO_obj-whq (wh s v do io)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative))))


;###########################################################
;    To dative passives
;  "the book was bought To peter"


(define-phrase S-V-ToIO-SIMPLE-PASSIVE (s v io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative) 
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-ToIO-SIMPLE-PASSIVE_subj-rel (wh s v io)
  comp wh  :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-ToIO-SIMPLE-PASSIVE_obj-rel (wh s v io)
  comp wh  :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-ToIO-SIMPLE-PASSIVE_for-inf (s v io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative objective) )))


(define-phrase S-V-ToIO-SIMPLE-PASSIVE_subj-whq (wh s v io)
  comp wh  :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative objective))))


(define-phrase S-V-ToIO-SIMPLE-PASSIVE_obj-whq (wh s v io)
  comp wh  :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		indirect-object io :additional-labels (to-dative))))

;;;-----------------------------------
;;;   two objects and a preposition
;;;-----------------------------------

;--- S V P O1 O2  "(What) we like about him (is) his panache"

; It's a double object construction with a verb-bound preposition
; and a second object that doesn't undergo 'to' conversion,
; i.e. it's not an indirect object.

; /// But since it only was prompted by "What we like about him",
; which smells like some sort of pseudo cleft, this may be
; spurious.

(define-phrase SVPO1O2 (s v p o1 o2)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
                     verb v
                     preposition p
                     direct-object o1 :additional-labels (objective)
                     second-object o2 :additional-labels (objective))))



;--- S V O1 P O2  "trade a Donald Duck for an Archie"

(define-phrase SVO1PO2 (s v o1 p o2)
  (clause :set-state (:aux-state initial)
	  subject s :additional-labels (nominative)
	  predicate (vp
                     verb v
                     direct-object o1 :additional-labels (objective)
                     preposition p
                     second-object o2 :additional-labels (objective))))








;################################################################
;  S V DO  -TO dative  "give"  (IO-DO phrases defined above]
;################################################################

(define-phrase S-V-DO-ToIO (s v do io)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative) 
    predicate (vp
		verb v
		direct-object do :additional-labels (objective)
		indirect-object io :additional-labels (to-dative objective))))





;;##################################################
; Predication_to-be

(define-phrase SVBeComp (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		complement-of-be c :additional-labels (objective))))


(define-phrase SVInvertedBeComp (c v s)
  (clause :set-state (:aux-state initial)
    complement-of-be c :additional-labels (objective)
    predicate (vp
		verb v)
    subject s :additional-labels (nominative)))

(define-phrase SVFrontedBeComp (c s v)  ;; Yoda-speak -- a transformation should do it
  (clause :set-state (:aux-state initial)
    complement-of-be c :additional-labels (objective)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v)))

(define-phrase S-be-COMP (s c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb "be"
		complement-of-be c
		:additional-labels (objective))))

(define-phrase S-be-COMP-subj-rel (wh s c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb "be"
		complement-of-be c
		:additional-labels (objective))))

(define-phrase S-be-COMP-comp-rel (wh s c)
  comp wh :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb "be"
		complement-of-be c
		:additional-labels (objective))))

(define-phrase S-be-COMP-subj-whq (wh s c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb "be"
		complement-of-be c
		:additional-labels (objective))))

(define-phrase S-be-COMP-comp-whq (wh s c)
  comp wh :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb "be"
		complement-of-be c
		:additional-labels (objective))))



;;##################################################
;SVICOMP  -- equi ("want" "expect" "promise")
;         "I want to come too"

(define-phrase SVICOMP (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		inf-comp c)))

(define-phrase SVICOMP-subj-rel (wh s v c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		inf-comp c)))

(define-phrase SVICOMP-subj-whq (wh s v c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
	       inf-comp c)))

(define-phrase SVICOMP-for-inf (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		inf-comp c)))


;; SVPComp --  "it seems like you're happy"

(define-phrase SVPComp (s v p c)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                prep p
                vpcomp c)))



;;##################################################
;SVIOCOMP  -- "persuade" "allow"
;          "I told you to come in"

(define-phrase SVOICOMP (s v o c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
		inf-comp c)))


(define-phrase SVOICOMP-subj-rel (wh s v o c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
		inf-comp c)))

(define-phrase SVOICOMP-obj-rel (wh s v o c)
  comp wh :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
		inf-comp c)))


(define-phrase SVOICOMP-subj-whq (wh s v o c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
	       inf-comp c)))

(define-phrase SVOICOMP-obj-whq (wh s v o c)
  comp wh :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
	       inf-comp c)))

(define-phrase SVOICOMP-for-inf (s v o c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
		inf-comp c)))


;;##################################################
;;Passives  "you were told to come in"

(define-phrase SVOICOMP-simple-passive (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		inf-comp c)))


(define-phrase SVOICOMP-subj-rel-simple-passive (wh s v c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
		inf-comp c)))

(define-phrase SVOICOMP-subj-whq-simple-passive (wh s v c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en  "be"
		verb v
	       inf-comp c)))

(define-phrase SVOICOMP-for-inf-simple-passive (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		be+en  "be"
		verb v
		inf-comp c)))




; The odd thing about these is that the complement infinititive
; does not take a "to" -- "We let him play with the ducks"
;  vs. "We sent him to play with the ducks"

(define-phrase SVOC (s v o c)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                direct-object o :additional-labels (objective)
                vpcomp c)))



;;;---------------------
;;; S V {O} Prep Comp/ing  
;;;---------------------

; "You keep him from coming"
;
(define-phrase SVOPComp/ing (s v o p c)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                direct-object o :additional-labels (objective)
                prep p
                vpcomp c :additional-labels (participle))))


;;--- variant without an object

; "She talked about skiing in Austria"
;
(define-phrase SVPComp/ing (s v p c)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                prep p
                vpcomp c :additional-labels (participle))))




;;;--------------------------------
;;; S V I (participial complement) 
;;;--------------------------------

; "(would) you mind [blocking the bee for me]

(define-phrase SVIngcomp (s v c)
  (clause :set-state (:aux-state initial)
     subject s :additional-labels (nominative)
     predicate (vp
                verb v
                vpcomp c :additional-labels (participle))))



;;##############################################
;;SVPCOMP

(define-phrase SVPCOMP  (s v pr probj)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


(define-phrase SVPCOMP-subj-rel  (wh s v pr probj)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


(define-phrase SVPCOMP-obj-rel  (wh s v pr probj)
  comp wh :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVPCOMP-subj-whq  (wh s v pr probj)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVPCOMP-obj-whq  (wh s v pr probj)
  comp wh :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

;need pied piped wh




;SVVPCOMP

(define-phrase SVVPCOMP (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		vpcomp c)))


(define-phrase SVVPCOMP-subj-rel (wh s v c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		vpcomp c)))

(define-phrase SVVPCOMP-subj-whq (wh s v c)
  ;;fluffy likes watching movies/to watch movies
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		vpcomp c)))

(define-phrase SVVPCOMP-for-inf (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		vpcomp c)))



;;##################################################
;;SVOPCOMP

(define-phrase SVOPCOMP  (s v o p prep-object)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		   :additional-labels (objective)
		prepcomp (pp
			   prep p
			   pp-object prep-object :additional-labels (objective)))))


(define-phrase SVOPCOMP-subj-rel  (wh s v o pr probj)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		   :additional-labels (objective)
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


(define-phrase SVOPCOMP-obj-rel  (wh s v o pr probj)
  comp wh :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		   :additional-labels (objective)	
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVOPCOMP-subj-whq  (wh s v o pr probj)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o
		   :additional-labels (objective)
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVOPCOMP-obj-whq  (wh s v o pr probj)
  comp wh :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		direct-object o
		   :additional-labels (objective)
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


;##################################################
;   SVOPcomp SMPLE PASSIVES


(define-phrase SVOPCOMP-SIMPLE-PASSIVE  (s v pr probj)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


(define-phrase SVOPCOMP-SIMPLE-PASSIVE-subj-rel  (wh s v pr probj)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))


(define-phrase SVOPCOMP-SIMPLE-PASSIVE-obj-rel  (wh s v pr probj)
  comp wh :additional-labels (relative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v	
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVOPCOMP-SIMPLE-PASSIVE-subj-whq  (wh s v pr probj)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))

(define-phrase SVOPCOMP-SIMPLE-PASSIVE-obj-whq  (wh s v pr probj)
  comp wh :additional-labels (interrogative-pronoun objective)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		be+en "be"
		verb v
		prepcomp (pp
			   prep pr
			   pp-object probj
		  :additional-labels (objective)))))



;SVSCOMP

(define-phrase SVSCOMP (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		scomp c  :additional-labels that)))

;; Have to decide which one is the unmarked case

(define-phrase SVSCOMP_no-that (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
               verb v
               scomp c)))


(define-phrase SVSCOMP-subj-rel (wh s v c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		scomp c  :additional-labels that)))

(define-phrase SVSCOMP-subj-whq (wh s v c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		scomp c  :additional-labels that)))

(define-phrase SVSCOMP-for-inf (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v
		scomp c  :additional-labels that)))


(define-phrase SVOSCOMP-subj-rel (wh s v o c)
  comp wh :additional-labels (relative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o :additional-labels (objective)
		scomp c  :additional-labels that)))

(define-phrase SVOSCOMP-subj-whq (wh s v o c)
  comp wh :additional-labels (interrogative-pronoun nominative)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o :additional-labels (objective)
		scomp c  :additional-labels that)))

(define-phrase SVOSCOMP-for-inf (s v o c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (for-subject objective)
    predicate (vp
		verb v		
		direct-object o :additional-labels (objective)
		scomp c  :additional-labels that)))



;SVOSCOMP (e.g. tell)

(define-phrase SVOSCOMP (s v o c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v		
		direct-object o :additional-labels (objective)
		scomp c  :additional-labels that)))




;SVVPCOMP
;;fluffy likes watching movies/to watch movies

(define-phrase SVVPCOMP (s v c)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp
		verb v
		vpcomp c)))








;#################################################################
;         Noun, Determiner, Quantifier, and WH phrases
;#################################################################

;;--- single-noun phrases

(define-phrase bare-np-head (n)
  (np
   np-head n))

(define-phrase common-noun (n)
  (np
    np-head n  :additional-labels (common-noun) ))

(define-phrase proper-name (n)
  (np  :additional-labels (proper-name)
    np-head n))

(define-phrase two-element-capitalized-sequence (pn1 pn2)
  (np  :additional-labels (proper-name)
    proper-noun pn1
    proper-noun pn2))
   

(define-phrase pronominal-np (p)
  (np
   pronoun p))

(define-phrase np-just-possessor (n)
  (np
   (np-head n :additional-labels (possessive-np))))

(define-phrase Abstract-np (n) ;; minimal phrase over an abstract noun
  (np/no-det
   np-head n))

(define-phrase singleton-np (n) ;; has no attachment points
  (np/no-det
   head n))

(define-phrase vocative (n)
  (np/no-det
   np-head n))


;;--- pre-built NP patterns

(define-phrase det-np (d n)  
  (np/no-det
   determiner d
   np-head h))

(define-phrase possessive-np (p n) ;; compare phrase-schema possessed-np
  (np/no-det
   possessive p
   np-head n))

(define-phrase NP-head-first-compound-noun (head other) ;; "$10"
  (np
   np-head (nbar
            compound-noun-head head
            common-noun other)))


(define-phrase quantifier-head (head number)
  (np
   quantifier (qp
               (number number))
   np-head head))


(define-phrase qualifier-head (head qualifier)
  (np
   qualifier qualifier
   np-head head))

(define-phrase head-qualifier (head qualifier) 
  ;; kind of ad-hoc. Goes with np+postmodifier 
  ;; for fragments like "60 in January"
  (np
   np-head head
   qualifier qualifier))


(define-phrase determined-np (d n)
  (np/no-det
   determiner d
   np-head n))

(define-phrase np_quant-head_of-comp (quant comp)  ; used by Quantifier-of lowering AP
  (np
     quantifier quant
     of-complement comp ))


;;-- motivated by dates

;; "March 31", "track 7", "flight 236"
(define-phrase numbered-element-of-collection (collection number)
  (np
   np-head collection
   number number))


;;--- determiners

(define-phrase determiner-phrase (d) ;; only used for understanding or fixed phrase
  (DP
    determiner d))


;;--- quantifiers

(define-phrase QP (q)  ;; quantifier phrase
  (qp
   quantifier q))

(define-phrase QpNpcomop (q np)  ;; e.g. [whp "How many"] [c "rabbits"]
  (qp
   quantifier q
   npcomp np))


;;--- WH 

(define-phrase WHP (wh q)  ;; WH phrase -- "What else", "How many"
  (WhP
   wh wh
   quantifier q))

(define-phrase wh-term (wh q)  ;; almost dedicated to "how" phrases
  (WhP
   wh wh
   modifier q))


;#################################################################
;  Digit Sequences
;#################################################################

(define-phrase digit-sequence/ones (n)
  (number
   base-digits n))

(define-phrase digit-sequence/thousands (k n)
  (number
   digits-trailing-separator k
   base-digits n))

(define-phrase digit-sequence/thousands-point (k n p)
  (number
   digits-trailing-separator k
   base-digits n
   digits-decimal-mark p))



;##########################################################
;    Prepositional, adverbial, and adjectival phrases
;##########################################################


;;--- prepositional phrase patterns

(define-phrase prepositional-phrase (p prep-object)
  (pp
    prep p
    prep-obj prep-object :additional-labels (objective)))

(define-phrase PP (p prep-object) ;; ?? shift to the shorter name?
  (pp
    prep p
    prep-obj prep-object :additional-labels (objective)))


;;--- adverbial phrase patterns

(define-phrase Advp (adv)
  (advp
    adverb adv))

(define-phrase AdvpIComp (adv c)
  (advp
   adverb adv
   inf-comp c))
 
(define-phrase AdvpOfComp (adv c)
  (advp
   adverb adv
   of-complement c))
  


;;--- adjective phrase patterns

(define-phrase adjective-phrase (a)
  (AP
    adjective a))

(define-phrase bare-adjp (a)
  (AP
   adjp-head a))

(define-phrase bare-comparative-adjp (a)
  (AP
   comparative-head a))

(define-phrase bare-superlative-adjp (a)
  (AP
   superlative-head a))


(define-phrase adjp (m a)  ;; "two stories high" /// rename!
  (AP
   adj-premodifier m
   adjp-head a))

(define-phrase quantified-adjp (q a)
  (AP
   quantifier q
   adjp-head a))

;;-- "(is) able to"
;;
(define-phrase adj-comp (a c)
  (AP
   adjp-head a
   inf-comp c))

;;-- "(is) down in the dumps"
;;
(define-phrase adjp-prepcomp (a c)
  (AP
   adjp-head a
   prepcomp c))

;;--- "(be) careful that"
;;
(define-phrase adj-that-comp (a c)
  (AP
   adjp-head a
   inf-comp c :additional-labels (that)))


;;--- "(is) capable of"
;;
(define-phrase adjective-of-complement (a c)
  (AP
   adjp-head a
   of-complement c))


(define-phrase X-to-Y (x p y)  ;; for "heart to heart" see 6/1 #2 notes
  (AP
   direct-object x
   prep p
   to-dative y))


;;;--------------------------------------------
;;; cross-classification of the usual chunking
;;;--------------------------------------------

(define-phrase subj-pred (s vp)
  (clause
   subject s
   predicate vp))


;#############################
;        verb phrases
;#############################

(define-phrase V (v)
  (vp
    verb v))

(define-phrase VPrt (v p)
  (vp
   verb v
   particle p))

(define-phrase VAdvp (v adv)
  (vp ;;   :set-state (:aux-state initial)
      verb v
      adverbial-phrase adv))

(define-phrase VO (v o)
  (vp
    verb v :additional-labels (gerund)
    direct-object o :additional-labels (objective)))

(define-phrase VOAdv (v o adv)  ;; "See you later"
  (vp
    verb v
    direct-object o :additional-labels (objective)
    adverbial-phrase adv))

(define-phrase VOPrt (v o p)
  (vp
   verb v
   direct-object o
   particle p))

(define-phrase VPrepO (v p o)
  (vp
   verb v
   preposition p
   direct-object o :additional-labels (objective)))

(define-phrase VPrepcomp (v pp)
  (vp ;;   :set-state (:aux-state initial)
      verb v
      prepcomp pp))

(define-phrase VIcomp (v c)  ;; "seems to be bad", "wants to play"
  (vp                        ;; redundant with VP-icomp
   verb v
   inf-comp c))

(define-phrase Vvpcomp (v vp)
  (vp ;;   :set-state (:aux-state initial)
    verb v
    vpcomp vp))


;;---- original hypenated form below here

(define-phrase VP-ing ( v o)
  (vp
    verb v :additional-labels (gerund)
    direct-object o
    :additional-labels (objective)))

(define-phrase VP-no-args ( v )
  (vp ;;   :set-state (:aux-state initial)
    verb v))


(define-phrase VP-one-arg ( v do )
  (vp  ;;   :set-state (:aux-state initial)
      verb v
      direct-object do :additional-labels (objective)))



(define-phrase VP-one-arg/not-passive ( v do )  ;; ddm 6/6/95
  (vp ;;    :set-state (:aux-state initial)
      verb v
      direct-object do :additional-labels (objective)))

(define-phrase VP-adverbial-arg ( v adv)
  (vp :set-state (:aux-state initial)
      verb v
      adverbial-phrase adv))

(define-phrase vp-adjective-phrase (v a)
  (vp  ;;    :set-state (:aux-state initial)
    verb v
    predicate-adjective a))

(define-phrase VP-two-args ( v do io )
 (vp  ;;    :set-state (:aux-state initial)
   verb v
   direct-object do
   indirect-object io :additional-labels (to-dative)))

(define-phrase VP-particle (v p)
  (vp ;;   :set-state (:aux-state initial)
      verb v
      particle p))

(define-phrase VP-prepcomp (v p prep-object) ;; deprecated
  (vp ;;   :set-state (:aux-state initial)
      verb v
      prepcomp (pp
		 prep p
		 pp-object prep-object :additional-labels (objective))))

(define-phrase VPrtPrepcomp (v p pp)
  (vp ;;   :set-state (:aux-state initial)
      verb v
      particle p
      prepcomp pp))

(define-phrase VP-O-pcomp (v o p prep-object)
  (vp ;;   :set-state (:aux-state initial)
      verb v
      direct-object o
      :additional-labels (objective)
      prepcomp (pp
		 prep p
		 pp-object prep-object :additional-labels (objective))))

(define-phrase VP-scomp (v c)
  (vp ;;   :set-state (:aux-state initial)
    verb v
    scomp c  :additional-labels that))


(define-phrase VP-icomp (v c)
  (vp ;;   :set-state (:aux-state initial)
    verb v
    inf-comp c))

(define-phrase VP-o-icomp (v o c)
  (vp ;;   :set-state (:aux-state initial)
    verb v		
    direct-object o
    :additional-labels (objective)
    inf-comp c))

(define-phrase VP-vpcomp (v c)
  (vp ;;   :set-state (:aux-state initial)
    verb v
    vpcomp c))


(define-phrase VP-participial-comp (v c)
  (vp
   verb v
   vpcomp c :additional-labels (participle)))



;#############################################
;      phrases that span whole clauses
;#############################################

(define-phrase first-sentence-of-discourse-unit (s)
  (discourse-unit
    sentence  s ))

(define-phrase first-paragraph-of-discourse-unit (R)
  (discourse-unit
    paragraph  R ))


(define-phrase comp-s (wh s)
  (clause
   comp wh
   s s))
   

(define-phrase response-s (r s)
  (discourse-unit
    leading-detached-adverbial-phrase r
    sentence s))


;;--- vocatives

(define-phrase S-Vocative (sentence vocative)
  (compound-sentence 
   sentence sentence
   vocative vocative))
   
(define-phrase Vocative-S (vocative sentence)
  (compound-sentence 
   vocative vocative
   sentence sentence))

(define-phrase S-Comma-Vocative (sentence comma vocative)
  (compound-sentence 
   sentence sentence
   comma comma 
   vocative vocative))

(define-phrase Vocative-Comma-S (vocative comma sentence)
  (compound-sentence 
   vocative vocative
   comma comma
   sentence sentence))



;;--- if/then

(define-slot-label if
  word-stream-actions ((function-word initial "if")
                       (punctuation final comma)))
(define-slot-label then
  word-stream-actions ((function-word initial "then")))
(define-slot-label then/silent)

(define-node-label conditional) ;; attachment points?

(define-phrase if/then (antec conseq)
  (conditional
     if antec
     then conseq))

(define-phrase if/silent (antec conseq)
  (conditional
     if antec
     then/silent conseq))
     

;;;--------------
;;; conjunctions
;;;--------------

(define-phrase two-item-conjunction (one two)
  (conjunction
   item one
   item two :additional-labels (and)))

;; /// clean up the name -- too long/presumptive
(define-phrase two-item-conjunction-with-conjunction (one conj two)
  (conjunction
   item one
   conjunction conj
   item two))


(define-phrase conjunction-s (conj s)
  (clause
   conjunction conj
   sentence s))
   



;;;---------------------------------------------------------------------
;;;  compounds -- demanded by an idiom or too awkward to frame inline
;;;---------------------------------------------------------------------

; These aren't kocher TAG since they cross recursive boundaries,
; but they arguably correspond to real atomic concepts, e.g.
;   "I like your style"

(define-phrase SVO_posssessive-head (s v poss h)
  (clause :set-state (:aux-state initial)
    subject s :additional-labels (nominative)
    predicate (vp 
               verb v
               direct-object (np/no-det
                              possessive poss
                              np-head h))))



