;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE; Default-character-style: (:FIX :ROMAN :NORMAL) -*-
;;; $Id: tree-families.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;; MUMBLE-86: message-level;tree-families

;;; Copyright (C) 1985-2000  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; Changelog
;;  2/21/95  ddm,ys  -- added TRANSITIVE-PREPCOMP_THREE-EXPLICIT-ARGS
;;  11/30/97 ddm -- added TRANSITIVE-VERB+PARTICLE_AGENT-EXPLICIT,
;;    INFINITIVAL-COMPLEMENT_theme-EXPLICIT,
;;    and SENTENTIAL-COMPLEMENT_AGENT-theme-EXPLICIT from M's
;;    Sage version of Mumble
;;  6/24/00 Added some NP families.

(in-package :mumble)

;;;--------------------------------------
;;;       Verb heads => full clauses
;;;--------------------------------------

(define-tree-family intransitive-verb_agent-explicit (verb agent)
  ((SV  agent verb)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))
  
  ((SV  agent verb)
   :grammatical-characteristics (clause)
   :required-accessories (:question))
  
  ((SV  (agent :ttrace) verb)
   :grammatical-characteristics (clause)
   :required-accessories (:command))
  
  ((SV  agent   verb)
   :grammatical-characteristics (subject-reducible))
  
  ((SV   (agent :ttrace)  verb)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available agent))
  
  ((SV-subj-rel  agent (agent :ttrace) verb)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root agent))
  
  ((SV-for-inf   agent verb)
   :grammatical-characteristics (for-infinitive))
  
  ((SV-for-inf  (agent :ttrace)  verb )
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available agent))
  
  ;;SV-for-infinitives with gaps, such as for purpose clauses 
  
  ((SV-subj-whq (agent :wh-acc-value) (agent :ttrace) verb)
   :grammatical-characteristics (clause)
   :required-accessories (:wh agent :question))
  
  ((SV-subj-whq (agent :wh-acc-value) agent verb)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  
  ;;cleft, pseudo-cleft, reduced-form for conjunction
  
  )



(define-tree-family intransitive-verb+particle_agent-explicit (verb particle agent)
  ;;  "the plane took off"
   ((SVP  agent verb particle)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVP  agent verb particle)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVP  (agent :ttrace) verb particle)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVP  agent  verb  particle)
    :grammatical-characteristics (subject-reducible))

   ((SVP   (agent :ttrace)  verb particle)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVP-subj-rel  agent (agent :ttrace) verb  particle)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVP-for-inf   agent verb particle)
    :grammatical-characteristics (for-infinitive))
   
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVP-subj-whq (agent :wh-acc-value) (agent :ttrace) verb particle)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVP-subj-whq (agent :wh-acc-value) agent verb particle)
    :grammatical-characteristics (np)
    :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family transitive-verb+particle_agent-explicit (verb particle agent theme)
  ;;  "Milfred blew up the truck." "Milfred blew the truck up."
  ;;NOT ALL THE TREES ARE IN HERE YET
  
  ((SVOP  agent verb particle  theme)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked )
   :argument-characteristics (available theme))
  
  ((SVPO  agent verb particle  theme)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))
  
  ((SVOP  agent verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:question)
   :argument-characteristics (available theme))
  
  ((SVPO  agent verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:question))
  
  ((SVOP  agent verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:command)
   :argument-characteristics (available theme))
  
  ((SVPO  (agent :ttrace) verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:command))
  
  ((SVOP  agent verb particle theme)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available theme))
  
  ((SVPO  agent verb particle theme)
   :grammatical-characteristics (subject-reducible))
  
  ((SVOP   (agent :ttrace) verb particle theme)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available agent  available theme))
  
  ((SVPO   (agent :ttrace)  verb particle theme)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available agent))
  
  ((SVOP-subj-rel  agent (agent :ttrace) verb particle theme)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root agent available agent))
  
  ((SVPO-subj-rel  agent (agent :ttrace) verb particle theme)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root agent))
  
  ((SVPO-obj-rel  theme  agent verb particle  (theme :ttrace))
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root theme))
  
  ((SVOP-for-inf   agent verb particle theme)
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available theme))
  
  ((SVPO-for-inf   agent verb particle theme)
   :grammatical-characteristics (for-infinitive))
  
  ;;SV-for-infinitives with gaps, such as for purpose clauses 
  
  ((SVOP-subj-whq (agent :wh-acc-value) (agent :ttrace) verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:wh agent :question)
   :argument-characteristics (available theme))
  
  ((SVPO-subj-whq (agent :wh-acc-value) (agent :ttrace) verb particle theme)
   :grammatical-characteristics (clause)
   :required-accessories (:wh agent :question))
  
  ((SVOP-subj-whq (agent :wh-acc-value) agent verb particle theme)
   :grammatical-characteristics (np)
   :argument-characteristics (available theme)
   :required-accessories (:wh))
  
  ((SVPO-subj-whq (agent :wh-acc-value) agent verb particle theme)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  
  ((SVPO-obj-whq  (:wh-acc-value) agent verb particle (theme :ttrace))    
   :grammatical-characteristics (clause)
   :required-accessories (:wh theme :question))
  
  ;;cleft, pseudo-cleft, reduced-form for conjunction
  
  )



(define-tree-family transitive-verb_two-explicit-args (verb agent patient)
  
  
  ((SVO  agent verb patient)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))

  ((SVO  agent verb patient)
   :grammatical-characteristics (clause)
   :required-accessories (:question))

  ((SVO  (agent :ttrace) verb patient)
   :grammatical-characteristics (clause)
   :required-accessories (:command))

  ((SVO  agent verb patient)
   :grammatical-characteristics (subject-reducible))

  ((SVO  (agent :ttrace) verb patient)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available agent))
  
  ((SVO-subj-rel  agent (agent :ttrace) verb patient)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root agent))
  
  ((SVO-obj-rel  patient  agent  verb  (patient :ttrace))
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root patient))
  
  ((SVO-for-inf   agent verb patient)
   :grammatical-characteristics (for-infinitive))
  
  ((SVO-for-inf   (agent :ttrace) verb patient)
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object agent))

  ((SVO-for-inf   (agent :ttrace) verb patient)
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available agent))
  
  ((SVO-for-inf   agent verb (patient :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object patient))
  
  ((SVO-for-inf   (agent :ttrace)  verb (patient :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object patient)
   :argument-characteristics (available agent))
  
  ;;SVO-for-infinitives with gaps, such as for purpose clauses 
  
  ((SVO-subj-whq (agent :wh-acc-value) (agent :ttrace) verb patient)
   :grammatical-characteristics (clause)
   :required-accessories (:wh agent :question))
  
  ((SVO-obj-whq  (:wh-acc-value)  agent  verb  (patient :ttrace))    
   :grammatical-characteristics (clause)
   :required-accessories (:wh patient :question))

  ((SVO-subj-whq  (:wh-acc-value)  agent  verb  patient)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  
  ;;cleft, pseudo-cleft, reduced-form for conjunction
  
  )


(define-tree-family transitive-verb_one-explicit-arg (verb patient)
  
  
  ((SVO-SIMPLE-PASSIVE  patient verb )
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))

  ((SVO-SIMPLE-PASSIVE  patient verb )
   :grammatical-characteristics (clause)
   :required-accessories (:question))

  ((SVO-SIMPLE-PASSIVE  (patient :ttrace) verb )
   :grammatical-characteristics (clause)
   :required-accessories (:command))

  ((SVO-SIMPLE-PASSIVE  patient verb )
   :grammatical-characteristics (subject-reducible))

  ((SVO-SIMPLE-PASSIVE  (patient :ttrace) verb )
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available patient))
  
  ((SVO-SIMPLE-PASSIVE-subj-rel  patient (patient :ttrace) verb)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root patient))
    
  ((SVO-SIMPLE-PASSIVE-for-inf   patient verb)
   :grammatical-characteristics (for-infinitive))
  
  ((SVO-SIMPLE-PASSIVE-for-inf   (patient :ttrace) verb)
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object patient))

  ((SVO-SIMPLE-PASSIVE-for-inf   (patient :ttrace) verb)
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available patient))
      
  ;;SVO-for-infinitives with gaps, such as for purpose clauses 
  
  ((SVO-SIMPLE-PASSIVE-subj-whq (patient :wh-acc-value) (patient :ttrace) verb )
   :grammatical-characteristics (clause)
   :required-accessories (:wh patient :question))

  ((SVO-SIMPLE-PASSIVE-subj-whq  (:wh-acc-value)  patient verb)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  
  ;;cleft, pseudo-cleft, reduced-form for conjunction
  
  )

(define-tree-family transitive-prepcomp_two-explicit-args
			  (verb agent prep patient)

   ((SVPCOMP  agent verb prep patient)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVPCOMP  agent verb prep patient)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVPCOMP  (agent :ttrace) verb prep  patient)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVPCOMP  (agent :ttrace) verb prep patient)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available agent))
   
   ((SVPCOMP-subj-rel  agent (agent :ttrace) verb prep patient)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVPCOMP-obj-rel  object  agent  verb prep (patient :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root patient))

   ((SVPCOMP-subj-whq  (agent :wh-acc-value) (agent :ttrace) verb prep patient)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVPCOMP-obj-whq  (object :wh-acc-value) agent  verb prep (patient :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh patient :question))

   ;;pied-piped rel & whq

   ((SVPCOMP-subj-whq  (:wh-acc-value)  agent  verb prep  patient)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )

(define-tree-family transitive-prepcomp_three-explicit-args
			  (verb agent patient prep goal)

   ((SVOPCOMP  agent verb patient prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOPCOMP  agent verb patient prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOPCOMP  (agent :ttrace) verb patient prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOPCOMP  (agent :ttrace) verb patient prep goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available agent))
   
   ((SVOPCOMP-subj-rel  agent (agent :ttrace) verb patient prep goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVOPCOMP-obj-rel object agent  verb (patient :ttrace) prep goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root patient))

   ((SVOPCOMP-subj-whq  (agent :wh-acc-value) (agent :ttrace) verb patient prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVOPCOMP-obj-whq  (object :wh-acc-value) agent verb (patient :ttrace) prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh patient :question))

   ;;pied-piped rel & whq

   ((SVOPCOMP-subj-whq  (:wh-acc-value)  agent  verb patient prep goal)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family Adverbial-complement-two-explicit-args (verb agent theme)
  
  
  ((SVADV  agent verb theme)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))

  ((SVADV  agent verb theme)
   :grammatical-characteristics (clause)
   :required-accessories (:question))

  ((SVADV  (agent :ttrace) verb theme)
   :grammatical-characteristics (clause)
   :required-accessories (:command))

  ((SVADV  agent verb theme)
   :grammatical-characteristics (subject-reducible))

  ((SVADV  (agent :ttrace) verb theme)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available agent))
  
  ((SVADV-subj-rel  agent (agent :ttrace) verb theme)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root agent))
  

;;need to think about the object relatives:
;; "10 feet, which is how far he ran"
#+ignore
  ((SVAdv-obj-rel  theme  agent  verb  (theme :ttrace))
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root theme))
  
  ((SVADV-for-inf   agent verb theme)
   :grammatical-characteristics (for-infinitive))
  
  ((SVADV-for-inf   (agent :ttrace) verb theme)
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object agent))

  ((SVADV-for-inf   (agent :ttrace) verb theme)
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available agent))
  
  ((SVADV-for-inf   agent verb (theme :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object theme))
  
  ((SVADV-for-inf   (agent :ttrace)  verb (theme :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object theme)
   :argument-characteristics (available agent))
  
  ;;SVADV-for-infinitives with gaps, such as for purpose clauses 
  
  ((SVADV-subj-whq (agent :wh-acc-value) (agent :ttrace) verb theme)
   :grammatical-characteristics (clause)
   :required-accessories (:wh agent :question))

  ;;need to think about the object relatives:
;;  "10 feet, which is how far he ran"
#+ignore 
  ((SVAdv-obj-whq  (:wh-acc-value)  agent  verb  (theme :ttrace))    
   :grammatical-characteristics (clause)
   :required-accessories (:wh theme :question))

  ((SVADV-subj-whq  (:wh-acc-value)  agent  verb  theme)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  )




(define-tree-family For-dative_three-explicit-args (verb agent theme  goal)

   ((S-V-DO-ForIO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((S-V-DO-ForIO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((S-V-DO-ForIO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:command))

   ((S-V-IO-DO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked :given goal))

   ((S-V-DO-ForIO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((S-V-IO-DO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question :given goal))

   ((S-V-DO-ForIO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics ( subject-reducible)
     :argument-characteristics (available agent)
     :required-accessories (:unmarked))

   ((S-V-IO-DO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics ( subject-reducible)
     :argument-characteristics (available agent)
     :required-accessories (:unmarked :given goal))
   
   ((S-V-DO-ForIO_subj-rel   agent (agent :ttrace) verb theme goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((S-V-IO-DO_subj-rel agent (agent :ttrace) verb theme goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent)
    :required-accessories (:given goal))
   
   ((S-V-DO-ForIO_obj-rel theme  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme))

   ((S-V-IO-DO_obj-rel theme  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme)
    :required-accessories (:given goal))

   ((S-V-DO-ForIO_obj-rel goal  agent  verb  theme (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ;;needs pied-piped relative clauses
   
   ;;needs for-infinitives with gaps, such as for purpose clauses 
   
   ((S-V-DO-ForIO_subj-whq   (agent :wh-acc-value) (agent :ttrace) verb theme goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((S-V-IO-DO_subj-whq (agent :wh-acc-value) (agent :ttrace) verb theme goal)
    :grammatical-characteristics (clause)
    :required-accessories (:given goal :wh agent :question))
   
   ((S-V-DO-ForIO_obj-whq (theme :wh-acc-value)  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme :question))

   ((S-V-IO-DO_obj-whq (theme :wh-acc-value)  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (clause)    
    :required-accessories (:given goal :wh theme :question))

   ((S-V-DO-ForIO_obj-whq (goal :wh-acc-value)  agent  verb  theme (goal :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh goal :question))


   ((S-V-IO-DO_subj-whq (:wh-acc-value) (agent :ttrace) verb theme goal)   
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ((S-V-DO-ForIO_subj-whq   (:wh-acc-value) agent verb theme goal)   
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family for-dative_two-explicit-args (verb theme  goal)
  ;;the book was bought For peter
  ;;peter was bought the book

   ((S-V-ForIO-SIMPLE-PASSIVE  theme verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((S-V-DO-SIMPLE-PASSIVE  goal  verb theme)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked :given goal))

   ((S-V-ForIO-SIMPLE-PASSIVE  theme verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((S-V-DO-SIMPLE-PASSIVE  goal  verb theme)
     :grammatical-characteristics (clause)
     :required-accessories (:question :given goal))

   ((S-V-ForIO-SIMPLE-PASSIVE (theme :ttrace) verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:command))

   ((S-V-DO-SIMPLE-PASSIVE  (goal :ttrace)  verb theme)
     :grammatical-characteristics (clause)
     :required-accessories (:command :given goal))

   ((S-V-ForIO-SIMPLE-PASSIVE  (theme :ttrace) verb goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available theme)
     :required-accessories (:unmarked))

   ((S-V-DO-SIMPLE-PASSIVE  (goal :ttrace) verb theme)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available goal)
     :required-accessories (:unmarked :given goal))
   
   ((S-V-ForIO-SIMPLE-PASSIVE_subj-rel theme  (theme :ttrace) verb goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme))

   ((S-V-DO-SIMPLE-PASSIVE_subj-rel goal (goal :ttrace) verb theme )
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal)
    :required-accessories (:given goal))
   

   ((S-V-DO-SIMPLE-PASSIVE_obj-rel theme  goal verb  (theme :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme)
    :required-accessories (:given goal))

   ((S-V-ForIO-SIMPLE-PASSIVE_obj-rel goal theme verb (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ;;needs pied-piped relative clauses
   
   ;;needs For-infinitives with gaps, such as purpose clauses 
   
   ((S-V-ForIO-SIMPLE-PASSIVE_subj-whq (theme :wh-acc-value) (theme :ttrace) verb goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme :question))

   ((S-V-DO-SIMPLE-PASSIVE_subj-whq (goal :wh-acc-value) (goal :ttrace) verb  theme)
    :grammatical-characteristics (clause)
    :required-accessories (:given goal :wh goal :question))
   
   ((S-V-DO-SIMPLE-PASSIVE_obj-whq (theme :wh-acc-value)  goal verb  (theme :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme  :question ))

   ((S-V-DO-SIMPLE-PASSIVE_subj-whq  (:wh-acc-value)  goal verb theme)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ((S-V-DO-SIMPLE-PASSIVE_subj-whq  (:wh-acc-value)  goal verb theme)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family to-dative_three-explicit-args (verb agent theme  goal)

     ((S-V-IO-DO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :argument-characteristics (available goal)
     :required-accessories (:unmarked ;;:given goal
                                      ))

     ((S-V-DO-ToIO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((S-V-DO-ToIO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((S-V-IO-DO  agent verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question :given goal))

   ((S-V-DO-ToIO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:command))

   ((S-V-IO-DO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics (clause)
     :required-accessories (:command :given goal))

   ((S-V-DO-ToIO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available agent)
     :required-accessories (:unmarked))

   ((S-V-IO-DO  (agent :ttrace) verb theme goal)
     :grammatical-characteristics (clause)
     :argument-characteristics (available agent)
     :required-accessories (:unmarked :given goal))
   
   ((S-V-DO-ToIO_subj-rel   agent (agent :ttrace) verb theme goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((S-V-IO-DO_subj-rel agent (agent :ttrace) verb theme goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent)
    :required-accessories (:given goal))
   
   ((S-V-DO-ToIO_obj-rel theme  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme))

   ((S-V-IO-DO_obj-rel theme  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme)
    :required-accessories (:given goal))

   ((S-V-DO-ToIO_obj-rel goal  agent  verb  theme (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ;;needs pied-piped relative clauses
   
   ;;needs To-infinitives with gaps, such as To purpose clauses 
   
   ((S-V-DO-ToIO_subj-whq   (agent :wh-acc-value) (agent :ttrace) verb theme goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent  :question))

   ((S-V-IO-DO_subj-whq (agent :wh-acc-value) (agent :ttrace) verb theme goal)
    :grammatical-characteristics (clause)
    :required-accessories (:given goal :wh agent  :question))
   
   ((S-V-DO-ToIO_obj-whq (theme :wh-acc-value)  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme))

   ((S-V-IO-DO_obj-whq (theme :wh-acc-value)  agent  verb  (theme :ttrace) goal)
    :grammatical-characteristics (clause)    
    :required-accessories (:given goal :wh theme  :question))

   ((S-V-DO-ToIO_obj-whq (goal :wh-acc-value)  agent  verb  theme (goal :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh goal  :question))


   ((S-V-DO-ToIO_subj-whq (:wh-acc-value) agent verb theme goal)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ((S-V-IO-DO_subj-whq (:wh-acc-value) agent verb theme goal)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )

(define-tree-family sentential-complement_agent-theme-explicit (verb agent theme comp)
   ;;fluffy told a mouse that he gave him a bone.
  ((SVOSCOMP  agent verb theme comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOSCOMP  agent verb theme comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOSCOMP  (agent :ttrace) verb theme comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOSCOMP   (agent :ttrace)  verb theme  comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent)
    :required-accessories (:unmarked))
   
   ((SVOSCOMP-subj-rel  agent (agent :ttrace) verb theme comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVOSCOMP-for-inf   agent verb theme comp)
    :grammatical-characteristics (for-infinitive))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 

   ((SVOSCOMP-subj-whq  (:wh-acc-value) agent verb theme comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family to-dative_two-explicit-args (verb theme  goal)
  ;;the book was given to peter
  ;;peter was given the book

   ((S-V-ToIO-SIMPLE-PASSIVE  theme verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((S-V-ToIO-SIMPLE-PASSIVE  theme verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((S-V-ToIO-SIMPLE-PASSIVE  (theme :ttrace) verb goal)
     :grammatical-characteristics (clause)
     :required-accessories (:command))

   ((S-V-DO-SIMPLE-PASSIVE  goal  verb theme)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked :given goal))

   ((S-V-ToIO-SIMPLE-PASSIVE  (theme :ttrace) verb goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available theme)
     :required-accessories (:unmarked))

   ((S-V-DO-SIMPLE-PASSIVE  (goal :ttrace) verb theme)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available goal)
     :required-accessories (:unmarked :given goal))
   
   ((S-V-ToIO-SIMPLE-PASSIVE_subj-rel theme  (theme :ttrace) verb goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme))

   ((S-V-DO-SIMPLE-PASSIVE_subj-rel goal (goal :ttrace) verb theme )
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal)
    :required-accessories (:given goal))
   

   ((S-V-DO-SIMPLE-PASSIVE_obj-rel theme  goal verb  (theme :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root theme)
    :required-accessories (:given goal))

   ((S-V-ToIO-SIMPLE-PASSIVE_obj-rel goal theme verb (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ;;needs pied-piped relative clauses
   
   ;;needs To-infinitives with gaps, such as To purpose clauses 
   
   ((S-V-ToIO-SIMPLE-PASSIVE_subj-whq (theme :wh-acc-value) (theme :ttrace) verb goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme  :question))

   ((S-V-DO-SIMPLE-PASSIVE_subj-whq (goal :wh-acc-value) (goal :ttrace) verb  theme)
    :grammatical-characteristics (clause)
    :required-accessories (:given goal :wh goal  :question ))
   
   ((S-V-DO-SIMPLE-PASSIVE_obj-whq (theme :wh-acc-value)  goal verb  (theme :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh theme  :question))

   ((S-V-ToIO-SIMPLE-PASSIVE_obj-whq (goal :wh-acc-value)  theme  verb  (goal :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh goal  :question))

   ((S-V-DO-ToIO_subj-whq (:wh-acc-value) goal verb theme goal)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ((S-V-DO-SIMPLE-PASSIVE_subj-whq ( :wh-acc-value) goal verb  theme)  
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )



(define-tree-family sentential-complement_agent-explicit (verb agent comp)
   ((SVSCOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVSCOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVSCOMP  (agent :ttrace) verb)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVSCOMP   (agent :ttrace)  verb comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent)
    :required-accessories (:unmarked))
   
   ((SVSCOMP-subj-rel  agent (agent :ttrace) verb comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVSCOMP-for-inf   agent verb comp)
    :grammatical-characteristics (for-infinitive))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVSCOMP-subj-whq  (:wh-acc-value) agent verb comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )

;; ddm 11/30/97 This is probably identical, modulo the choice of 'theme'
;; for 'patient'.  Reconcile them if there's ever a way to find all their
;; callers easily. 
(define-tree-family sentential-complement_agent-theme-explicit (verb agent theme comp)
   ;;fluffy told a mouse that he gave him a bone.
  ((SVOSCOMP  agent verb theme comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOSCOMP  agent verb theme comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOSCOMP  (agent :ttrace) verb theme comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOSCOMP   (agent :ttrace)  verb theme  comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent)
    :required-accessories (:unmarked))
   
   ((SVOSCOMP-subj-rel  agent (agent :ttrace) verb theme comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVOSCOMP-for-inf   agent verb theme comp)
    :grammatical-characteristics (for-infinitive))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 

   ((SVOSCOMP-subj-whq  (:wh-acc-value) agent verb theme comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family sentential-complement_agent-patient-explicit (verb agent patient comp)
   ;;fluffy told a mouse that he gave him a bone.
  ((SVOSCOMP  agent verb patient comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOSCOMP  agent verb patient comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOSCOMP  (agent :ttrace) verb patient comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOSCOMP   (agent :ttrace)  verb patient  comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent)
    :required-accessories (:unmarked))
   
   ((SVOSCOMP-subj-rel  agent (agent :ttrace) verb patient comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVOSCOMP-for-inf   agent verb patient comp)
    :grammatical-characteristics (for-infinitive))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 

   ((SVOSCOMP-subj-whq  (:wh-acc-value) agent verb patient comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )
;; 11/30/97 ditto
(define-tree-family infinitival-complement_theme-explicit (verb agent comp)
  ;;I told you to come in
   ((SVOICOMP-simple-passive  theme verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOICOMP-simple-passive  theme  verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOICOMP-simple-passive  (theme :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOICOMP-simple-passive (theme :ttrace) verb theme comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVOICOMP-subj-rel-simple-passive (theme :ttrace) verb comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVOICOMP-for-inf-simple-passive theme verb  comp)
    :grammatical-characteristics (for-infinitive))

   ((SVOICOMP-for-inf-simple-passive   (theme :ttrace) verb comp)
    :grammatical-characteristics (for-infinitive)
    :argument-characteristics (available agent))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVOICOMP-subj-whq-simple-passive (theme :wh-acc-value)
		          (theme :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))


   ((SVOICOMP-subj-whq-simple-passive (:wh-acc-value theme) agent verb comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family infinitival-complement_agent-explicit (verb agent comp)
   ((SVICOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVICOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVICOMP  (agent :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVICOMP   (agent :ttrace)  verb comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVICOMP-subj-rel  agent (agent :ttrace) verb comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVICOMP-for-inf   agent verb comp)
    :grammatical-characteristics (for-infinitive))

   ((SVICOMP-for-inf   (agent :ttrace) verb comp)
    :grammatical-characteristics (for-infinitive)
    :argument-characteristics (available agent))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVICOMP-subj-whq  (agent :wh-acc-value)
		          (agent :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVICOMP-subj-whq  (:wh-acc-value) agent verb comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family infinitival-complement_agent-patient-explicit (verb agent patient comp)
  ;;I told you to come in
   ((SVOICOMP  agent verb patient comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOICOMP  agent verb patient comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOICOMP  (agent :ttrace) verb patient comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOICOMP   (agent :ttrace)  verb patient comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVOICOMP-subj-rel  agent (agent :ttrace) verb patient comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVOICOMP-obj-rel  patient agent verb (patient :ttrace) comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVOICOMP-for-inf agent verb patient comp)
    :grammatical-characteristics (for-infinitive))

   ((SVOICOMP-for-inf   (agent :ttrace) verb comp)
    :grammatical-characteristics (for-infinitive)
    :argument-characteristics (available agent))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVOICOMP-subj-whq  (agent :wh-acc-value)
		          (agent :ttrace) verb patient comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVOICOMP-obj-whq  (patient :wh-acc-value)
		          (patient :ttrace) verb patient comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh patient :question))

   ((SVOICOMP-subj-whq  (:wh-acc-value agent) agent verb patient comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ((SVOICOMP-obj-whq  (:wh-acc-value patient) agent verb patient comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family infinitival-complement_patient-explicit (verb agent comp)
  ;;I told you to come in
   ((SVOICOMP-simple-passive  patient verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOICOMP-simple-passive  patient  verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOICOMP-simple-passive  (patient :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOICOMP-simple-passive (patient :ttrace) verb patient comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVOICOMP-subj-rel-simple-passive (patient :ttrace) verb comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVOICOMP-for-inf-simple-passive patient verb  comp)
    :grammatical-characteristics (for-infinitive))

   ((SVOICOMP-for-inf-simple-passive   (patient :ttrace) verb comp)
    :grammatical-characteristics (for-infinitive)
    :argument-characteristics (available agent))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVOICOMP-subj-whq-simple-passive (patient :wh-acc-value)
		          (patient :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))


   ((SVOICOMP-subj-whq-simple-passive (:wh-acc-value patient) agent verb comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family vp-complement_agent-explicit (verb agent comp)
   ((SVVPCOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVVPCOMP  agent verb comp)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVVPCOMP  (agent :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVVPCOMP   (agent :ttrace)  verb comp)
    :grammatical-characteristics (subject-reducible)
    :argument-characteristics (available agent))
   
   ((SVVPCOMP-subj-rel  agent (agent :ttrace) verb comp)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))
   
   ((SVVPCOMP-for-inf   agent verb comp)
    :grammatical-characteristics (for-infinitive))

   ((SVVPCOMP-for-inf   (agent :ttrace) verb comp)
    :grammatical-characteristics (for-infinitive)
    :argument-characteristics (available agent))
   
   ;;SV-for-infinitives with gaps, such as for purpose clauses 
   
   ((SVVPCOMP-subj-whq  (agent :wh-acc-value)
		          (agent :ttrace) verb comp)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent :question))

   ((SVVPCOMP-subj-whq  (:wh-acc-value) agent verb comp)
   :grammatical-characteristics (np)
   :required-accessories (:wh))
   
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )



(define-tree-family transitive-and-prepcomp_three-explicit-args
			  (verb agent patient prep goal)

   ((SVOPCOMP  agent verb patient prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOPCOMP  agent verb patient prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOPCOMP  (agent :ttrace) verb patient prep  goal)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOPCOMP  (agent :ttrace) verb patient prep goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available agent)
     :required-accessories (:unmarked))
   
   ((SVOPCOMP-subj-rel  agent (agent :ttrace) verb patient prep goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root agent))

   ((SVOPCOMP-obj-rel  patient  agent  verb (patient :ttrace) prep goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root patient))

   ((SVOPCOMP-obj-rel  goal  agent  verb patient prep (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ((SVOPCOMP-subj-whq  (agent :wh-acc-value) (agent :ttrace) verb patient prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh agent  :question))

   ((SVOPCOMP-obj-whq  (patient :wh-acc-value) agent  verb (patient :ttrace) prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh patient  :question))

   ((SVOPCOMP-obj-whq  (goal :wh-acc-value) agent  verb patient prep (goal :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh goal  :question))

   ((SVOPCOMP-subj-whq  (:wh-acc-value) agent verb patient prep goal)
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ;;pied-piped rel & whq
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   
   )


(define-tree-family transitive-and-prepcomp_two-explicit-args
			  (patient verb prep goal)
  
   ((SVOPCOMP-SIMPLE-PASSIVE patient  verb  prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:unmarked))

   ((SVOPCOMP-SIMPLE-PASSIVE patient  verb  prep goal)
     :grammatical-characteristics (clause)
     :required-accessories (:question))

   ((SVOPCOMP-SIMPLE-PASSIVE  (patient :ttrace) verb  prep  goal)
    :grammatical-characteristics (clause)
    :required-accessories (:command))

   ((SVOPCOMP-SIMPLE-PASSIVE  (patient :ttrace) verb  prep goal)
     :grammatical-characteristics (subject-reducible)
     :argument-characteristics (available patient)
     :required-accessories (:unmarked))
   
   ((SVOPCOMP-SIMPLE-PASSIVE-subj-rel  patient (patient :ttrace) verb  prep goal)
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root patient))

   ((SVOPCOMP-SIMPLE-PASSIVE-obj-rel  goal  patient  verb  prep (goal :ttrace))
    :grammatical-characteristics (relative-clause)
    :argument-characteristics (identical-with-root goal))

   ((SVOPCOMP-SIMPLE-PASSIVE-subj-whq  (patient :wh-acc-value) (patient :ttrace) verb  prep goal)
    :grammatical-characteristics (clause)
    :required-accessories (:wh patient  :question))

   ((SVOPCOMP-SIMPLE-PASSIVE-obj-whq  (goal :wh-acc-value) patient  verb  prep (goal :ttrace))
    :grammatical-characteristics (clause)
    :required-accessories (:wh goal  :question))

   ((SVOPCOMP-SIMPLE-PASSIVE-subj-whq (:wh-acc-value) patient verb  prep goal)
   :grammatical-characteristics (np)
   :required-accessories (:wh))

   ;;pied-piped rel & wh
   ;;cleft, pseudo-cleft, reduced-form for conjunction
   )


(define-tree-family state_two-explicit-args (verb theme rheme)
  
  
  ((SVO  theme verb rheme)
   :grammatical-characteristics (clause)
   :required-accessories (:unmarked))

  ((SVO  theme verb rheme)
   :grammatical-characteristics (clause)
   :required-accessories (:question))

  ((SVO  (theme :ttrace) verb rheme)
   :grammatical-characteristics (clause)
   :required-accessories (:command))

  ((SVO  theme verb rheme)
   :grammatical-characteristics (subject-reducible))

  ((SVO  (theme :ttrace) verb rheme)
   :grammatical-characteristics (subject-reducible)
   :argument-characteristics (available theme))
  
  ((SVO-subj-rel  theme (theme :ttrace) verb rheme)
   :grammatical-characteristics (relative-clause)
   :argument-characteristics (identical-with-root theme))
  
  ((SVO-for-inf   theme verb rheme)
   :grammatical-characteristics (for-infinitive))
  
  ((SVO-for-inf   (theme :ttrace) verb rheme)
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object theme))

  ((SVO-for-inf   (theme :ttrace) verb rheme)
   :grammatical-characteristics (for-infinitive)
   :argument-characteristics (available theme))
  
  ((SVO-for-inf   theme verb (rheme :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object rheme))
  
  ((SVO-for-inf   (theme :ttrace)  verb (rheme :ttrace))
   :grammatical-characteristics (for-infinitive)
   :required-accessories (:purpose-clause-object rheme)
   :argument-characteristics (available theme))
  
  ;;SV0-for-infinitives with gaps, such as for purpose clauses 
  
  ((SVO-subj-whq (theme :wh-acc-value) (theme :ttrace) verb rheme)
   :grammatical-characteristics (clause)
   :required-accessories (:wh theme :question))

  ((SVO-obj-whq  (:wh-acc-value)  theme  verb  (rheme :ttrace))    
   :grammatical-characteristics (clause)
   :required-accessories (:wh rheme :question))

  ((SVO-subj-whq  (:wh-acc-value)  theme  verb  rheme)    
   :grammatical-characteristics (np)
   :required-accessories (:wh))
  )




;;;-----------------------------
;;;   Prepositional phrases 
;;;-----------------------------

(define-tree-family prepositional-phrase-class
			  (prep object)
  
   ((prepositional-phrase prep object)
     :grammatical-characteristics (pp))

  ;;need to think about when we need this and what the
   ;;argument characteristics would be.
   ;;right now it just isn't taken because it's second

   ((prepositional-phrase prep (object :ttrace))
     :grammatical-characteristics (pp))
   )



;;;-----------
;;;    VP
;;;-----------

(define-tree-family verb-phrase
			  (verb object)
  
   ((VP-ing verb object)
     :grammatical-characteristics (vp))

 ;;only one choice here, but otherwise we would need to 
;;add curried single choices

   )


(define-tree-family VP-infinitive-comp (verb comp)
   ((VP-icomp   verb comp)
     :grammatical-characteristics (vp)))


(define-tree-family  bare-vp-no-args (verb)
  ((VP-no-args verb)
  :grammatical-characteristics (vp)))


(define-tree-family  vp-adv-arg (verb adv)
  ((VP-adverbial-arg verb adv)
  :grammatical-characteristics (vp))
  )



;;;----------
;;;    NP
;;;----------

(define-tree-family  quantified-np (np-head q)
  ((quantified-np np-head q)
   :grammatical-characteristics (np))

  ((quantifier-head (np-head :ttrace) q) ;; "the three"
   :grammatical-characteristics (np)
   :argument-characteristics (available np-head)))


(define-tree-family  qualified-np (np-head qualifier)
  ((bare-np-head head)
   :grammatical-characteristics (np)
   :required-accessories ( :reducible ))

  ((qualifier-head np-head qualifier)
   :grammatical-characteristics (np)))



;;;-------
;;; dates
;;;-------

(define-tree-family  date (month day year) ;; weekday
  ;; "March 31"
  ((numbered-element-of-collection month day)
   :grammatical-characteristics (np))
)