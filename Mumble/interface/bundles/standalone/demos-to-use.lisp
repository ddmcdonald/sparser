;;; -*- Mode: LISP; Package: MUMBLE; Syntax: Common-lisp -*-
;;; $Id$

;;;  MUMBLE-86:  interface> defining-demos
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

(defparameter *current-demos*
  ;;these are all the demos as of Jan. 91
  '(fluffy y/n-fluffy fluffy-command y/n-fluffy-neg vanilla-reflexive 
    a-dog-couldnt fluffy-conj-3 fluffy-conj-both fluffy-sconj fluffy-two-sents
    fluffy-the-little-dog fluffy-and-his-friends little-by-itself 
    peters-present peters-present-helga-given helgas-book helgas-book-no-tense 
    purpose-of-life purpose-of-life-for-peter chasing))

(defun test-all-demos ()
  (declare (special *mumble-text-output*))
  (dolist (demo *current-demos*)
    (terpri *mumble-text-output*)
    (funcall demo)))

#+ignore ;;this is a test --grammar for it is not generally loaded
(def-demo-rspec  fluffy-ing
  "Fluffy is chasing a mouse"
  "The cannonical example"
  (discourse-unit
   :head (general-vp
	   :head (vp-no-args "chase")
	   :accessories (:aspect past-participle ))
   ))

(def-demo-rspec  fluffy
  "Fluffy is chasing a mouse"
  "The cannonical example"
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-proper-name "Fluffy")
		     :accessories
		        (:number singular
			 :determiner-policy no-determiner)
		     )
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories
		         (:number singular
			  :determiner-policy kind)))
	   :accessories (:tense-modal present
			 :progressive
			 :unmarked)) ))

(def-demo-rspec  y/n-fluffy
  "Is Fluffy chasing mice (a mouse) ?"
  "y/n question & progressive "
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-proper-name "Fluffy")
		     :accessories (:number singular
				   :determiner-policy no-determiner)
		     )
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories (:number singular
				           ;plural
				   :determiner-policy kind)))
	   :accessories (:tense-modal present
			 :progressive
			 :question
			 :unmarked) )))
    
(def-demo-rspec  fluffy-command
  "Chase a mouse."
  "test the Command accessory and imperative"
  (discourse-unit
   :head
     (general-clause
       :head (chase
	       (general-np
		 :head (np-proper-name "Fluffy")
		 :accessories (:number singular
			       :person second
			       :determiner-policy no-determiner)
		 )
	       (general-np
		 :head (np-common-noun "mouse")
		 :accessories (:number singular
			       :determiner-policy kind)))
       :accessories (:tense-modal present
		     :command)) ))

(def-demo-rspec  y/n-fluffy-neg
  "Isn't Fluffy chasing mice (a mouse) ?"
  "y/n question & progressive & negation "
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-proper-name "Fluffy")
		     :accessories
		       (:number singular
			:determiner-policy no-determiner))
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories
		       (:number singular
						;plural
			:determiner-policy kind)))
	   :accessories (:tense-modal present
			 :progressive
			 :negate
			 :question
			 :unmarked) )))

(def-demo-rspec  vanilla-reflexive
		 "Fluffy can chase himself"
  "A mixed (i.e. includes template composition) stand-alone
   specification that tests the code for reflexives"
  (discourse-unit
    :head
      (general-clause
        :head (chase
		(general-np
		     :head (np-proper-name "Fluffy")
		     :accessories
		       (:number singular
			:determiner-policy no-determiner
			:person third
			:gender masculine))
		(general-np
		     :head (np-proper-name "Fluffy")
		     :accessories
		       (:number singular
			:determiner-policy no-determiner
			:person third
			:gender masculine)))
	    :accessories (:tense-modal "can"
			  :unmarked)
	    )))



(def-demo-rspec  a-dog-couldnt
  "A dog couldn't be chasing mice"
  "negation & progressive"
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-common-noun "dog")
		     :accessories
		        (:number singular
			 :person third
			 :gender neuter
			 :determiner-policy kind))
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories
		        (:number plural
			 :determiner-policy kind)))
	   :accessories (:tense-modal "could"
			 :progressive
			 :negate
			 :unmarked)) ))




(def-demo-rspec  fluffy-conj-3
 " Floyd, Fluffy, and Helga are chasing a mouse."
  " testing conjunction"
  (discourse-unit
    :head (general-clause
	    :head (chase
		    (conjunction-bundle
		      :head
		      ((general-np
			 :head (np-proper-name "Floyd")
			 :accessories (:number singular
				       :determiner-policy no-determiner
				       :gender masculine
				       :person third))
		       (general-np
			 :head (np-proper-name "Fluffy")
			 :accessories (:number singular
				       :determiner-policy no-determiner
				       :gender masculine
				       :person third))
		       (general-np
			 :head (np-proper-name "Helga")
			 :accessories (:number singular
				       :determiner-policy no-determiner
				       :gender feminine
				       :person third)))
		      :accessories (:conjunction and
				    :number plural))
 		    (general-np
		      :head (np-common-noun "mouse")
		      :accessories (:number singular
				    :determiner-policy kind
				    :gender masculine
				    :person third)))
	    :accessories (:tense-modal present
			  :Progressive :unmarked))
    ))

(def-demo-rspec  fluffy-conj-both
  "Both Floyd and Fluffy are chasing a mouse."
  " testing conjunction"
  (discourse-unit
    :head (general-clause
	    :head (chase
		    (conjunction-bundle
		      :head
		      ((general-np
			 :head (np-proper-name "Floyd")
			 :accessories (:number singular
				       :determiner-policy no-determiner
				       :gender masculine
				       :person third))
		       (general-np
			 :head (np-proper-name "Fluffy")
			 :accessories (:number singular
				       :determiner-policy no-determiner
				       :gender masculine
				       :person third)))
		      :accessories (:conjunction (both and)
				    :number plural))
 		    (general-np
		      :head (np-common-noun "mouse")
		      :accessories (:number singular
				    :determiner-policy kind
				    :gender masculine
				    :person third)))
	    :accessories (:tense-modal present
			  :progressive :unmarked))
    ))


(def-demo-rspec  fluffy-sconj
  "Floyd chased Fluffy and then Fluffy chased a mouse."
  "Testing clausal conjunction"
  (discourse-unit
    :head  
     (conjunction-bundle
       :head ((general-clause
		:head
		  (chase
		     (general-np
		       :head (np-proper-name "Floyd")
		       :accessories
		          (:number singular
			   :determiner-policy no-determiner
			   :gender masculine
			   :person third))
		     (general-np
		       :head (np-proper-name "Fluffy")
		       :accessories
		           (:number singular
			    :determiner-policy no-determiner
			    :gender masculine
			    :person third)))
		:accessories (:tense-modal past
			      :Unmarked))
	      (general-clause
		:head (chase (general-np
			       :head (np-proper-name "Fluffy")
			       :accessories (:number singular
					     :determiner-policy no-determiner
					     :gender masculine
					     :person third))
			     (general-np
			       :head (np-common-noun "mouse")
			       :accessories (:number singular
					     :determiner-policy kind
					     :gender masculine
					     :person third)))
		:accessories (:tense-modal past
			      :unmarked)
		:further-specifications
		     ((:specification
			  (adverbial-phrase "then")
			:attachment-function
		        initial-adverbial))
		     ))
       :accessories (:conjunction and
		     :number singular))
    ))

(def-demo-rspec  fluffy-two-sents
                 "Floyd chased Fluffy. Later Fluffy chased a mouse."
                 "Contrasting multiple sentences with deliberate clausal conjunction"
  (discourse-unit
   :head (general-clause
          :head
          (chase
           (general-np
            :head (np-proper-name "Floyd")
            :accessories
            (:number singular
                     :determiner-policy no-determiner
                     :gender masculine
                     :person third))
           (general-np
            :head (np-proper-name "Fluffy")
            :accessories
            (:number singular
                     :determiner-policy no-determiner
                     :gender masculine
                     :person third)))
          :accessories (:tense-modal past
                                     :Unmarked))
   :further-specifications
   ((:specification
     (general-clause
      :head (chase (general-np
                    :head (np-proper-name "Fluffy")
                    :accessories (:number singular
                                          :determiner-policy no-determiner
                                          :gender masculine
                                          :person third))
                   (general-np
                    :head (np-common-noun "mouse")
                    :accessories (:number singular
                                          :determiner-policy kind
                                          :gender masculine
                                          :person third)))
      :accessories (:tense-modal past
                                 :unmarked)
      :further-specifications
      ((:specification
        (adverbial-phrase "later")
        :attachment-function
        initial-adverbial))
      )
     :attachment-function
     next-sentence)))
  )


(def-demo-rspec  fluffy-the-little-dog
  "Little dogs chase mice."
  "favorite example -- tests attachment"
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-common-noun "dog")
		     :accessories (:number plural
				   :person third
				   :gender neuter
				   :determiner-policy  indefinite-first-mention_definite-subsequent-mentions)
		     :further-specifications
		     ((:specification
			  (adjective "little")
			:attachment-function
		        restrictive-modifier))
		     )
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories
		     (:number plural
		      :determiner-policy kind)))
	   :accessories (:tense-modal present
			 :unmarked)) ))

(def-demo-rspec  fluffy-and-his-friends
  "All of the dogs are chasing a mouse."
  "one way to do quantifiers"
  (discourse-unit
   :head (general-clause
	   :head (chase
		   (general-np
		     :head (np-common-noun "dog")
		     :accessories (:number plural
				   :person third
				   :gender neuter
				   :determiner-policy always-definite)
		     :further-specifications
		     ((:specification
			(general-np
			  :head (quantifier "all" *self*)
			  :accessories (:number plural
				   :person third
				   :gender neuter
				   :determiner-policy no-determiner))
		       :attachment-function
		        restrictive-quantifier))
		     )
		   (general-np
		     :head (np-common-noun "mouse")
		     :accessories
		     (:number singular
		      :determiner-policy kind)))
	   :accessories (:tense-modal present
			 :progressive
			 :unmarked)) ))




(def-demo-rspec  little-by-itself
  "A dog is little."  " "
  (discourse-unit
   :head (general-clause
	   :head
	   (predication_to-be
	     (general-np
	       :head (np-common-noun "dog")
	       :accessories (:number singular
			     :person third
			     :gender neuter
			     :determiner-policy kind))
	     (adjective "little"))
	   :accessories (:tense-modal present
			 :unmarked ))
   ))


(def-demo-rspec  peters-present
 "Peter bought a book for Helga."
 "dative--no movement (contrast next example)"
  (discourse-unit
    :head
    (general-clause
      :head (buy
	      (general-np
		:head (np-proper-name "Peter")
		:accessories
		(:number singular
		 :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories (:number singular
			      :person third
			      :gender neuter
			      :determiner-policy kind))
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		(:number singular
		 :determiner-policy no-determiner)))
      :accessories (:tense-modal past
		    :unmarked) 
      )))


(def-demo-rspec  peters-present-helga-given
  "Peter bought Helga a book."
 "dative--with movement (contrast previous example)"
  (discourse-unit
    :head
    (general-clause
      :head (buy
	      (general-np
		:head (np-proper-name "Peter")
		:accessories
		   (:number singular
		    :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories (:number singular
			      :person third
			      :gender neuter
			      :determiner-policy kind))
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		   (:number singular
		    :determiner-policy no-determiner)))
      :accessories
         (:tense-modal past
	  :unmarked
	  :given  (general-np
		    :head (np-proper-name "Helga")
		    :accessories
		       (:number singular
			:determiner-policy no-determiner))
	  ) )))


(def-demo-rspec  helgas-book
 " Helga read a book on the plane."
 "  "
  (discourse-unit
    :head
    (general-clause
      :head (read
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		(:number singular
		 :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories (:number singular
			      :person third
			      :gender neuter
			      :determiner-policy kind)))
      :accessories (:tense-modal past
		    :unmarked)
      :further-specifications
      ((:attachment-function vp-prep-complement
	:specification
	(prepositional-phrase
	  "on"
	  (general-np
	    :head (np-common-noun "plane")
	    :accessories
	    (:number singular
	     :determiner-policy known-individual)))))
      )))

(def-demo-rspec  helgas-book-no-tense
 " Helga to read a book on the plane."
 "  "
  (discourse-unit
    :head
    (general-clause
      :head (read
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		(:number singular
		 :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories (:number singular
			      :person third
			      :gender neuter
			      :determiner-policy kind)))
      :accessories (;; :tense-modal past
		    :unmarked)
      :further-specifications
      ((:attachment-function vp-prep-complement
	:specification
	(prepositional-phrase
	  "on"
	  (general-np
	    :head (np-common-noun "plane")
	    :accessories
	    (:number singular
	     :determiner-policy known-individual)))))
      )))

(def-demo-rspec  purpose-of-life
 "Floyd bought Helga a book to read on the plane."
 "infinitival adjuncts"
  (discourse-unit
    :head
    (general-clause
      :head (buy
	      (general-np
		:head (np-proper-name "Floyd")
		:accessories
		(:number singular
		 :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories
		(:number singular
		 :person third
		 :gender neuter
		 :determiner-policy kind))
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		(:number singular
		 :determiner-policy no-determiner)))
      :accessories
      (:tense-modal past
       :unmarked
       :given  (general-np
		 :head (np-proper-name "Helga")
		 :accessories
		 (:number singular
		  :determiner-policy no-determiner)))
      :further-specifications
      ((:attachment-function purpose-clause
	:specification
	 (general-clause
	   :head (read
		   (general-np
		     :head (np-proper-name "Helga")
		     :accessories
		     (:number singular
		      :determiner-policy no-determiner))
		   (general-np
		     :head (np-common-noun "book")
		     :accessories
		     (:number singular
		      :person third
		      :gender neuter
		      :determiner-policy kind)))
	   :accessories
	   (:unmarked
	     :purpose-clause-object
	     (general-np
	       :head (np-common-noun "book")
	       :accessories
	       (:number singular
		:person third
		:gender neuter
		:determiner-policy kind)))
	   :further-specifications
	   ((:attachment-function vp-prep-complement
	     :specification
	      (prepositional-phrase
		"on"
		(general-np
		   :head (np-common-noun "plane")
		   :accessories
		   (:number singular
		    :determiner-policy
		    known-individual))))))
	    )))))

(def-demo-rspec  purpose-of-life-for-peter
 "Floyd bought Helga a book for Peter to read on the plane."
 "infinitival adjuncts with the subject"
  (discourse-unit
    :head
    (general-clause
      :head (buy
	      (general-np
		:head (np-proper-name "Floyd")
		:accessories
		(:number singular
		 :determiner-policy no-determiner))
	      (general-np
		:head (np-common-noun "book")
		:accessories
		(:number singular
		 :person third
		 :gender neuter
		 :determiner-policy kind))
	      (general-np
		:head (np-proper-name "Helga")
		:accessories
		(:number singular
		 :determiner-policy no-determiner)))
      :accessories
      (:tense-modal past
       :unmarked
       :given  (general-np
		 :head (np-proper-name "Helga")
		 :accessories
		 (:number singular
		  :determiner-policy no-determiner)))
      :further-specifications
      ((:attachment-function purpose-clause
	:specification
	 (general-clause
	   :head (read
		   (general-np
		     :head (np-proper-name "Peter")
		     :accessories
		     (:number singular
		      :determiner-policy no-determiner))
		   (general-np
		     :head (np-common-noun "book")
		     :accessories
		     (:number singular
		      :person third
		      :gender neuter
		      :determiner-policy kind)))
	   :accessories
	   (:unmarked
	     :purpose-clause-object
	     (general-np
	       :head (np-common-noun "book")
	       :accessories
	       (:number singular
		:person third
		:gender neuter
		:determiner-policy kind)))
	   :further-specifications
	   ((:attachment-function vp-prep-complement
	     :specification
	      (prepositional-phrase
		"on"
		(general-np
		   :head (np-common-noun "plane")
		   :accessories
		   (:number singular
		    :determiner-policy
		    known-individual))))))
	    )))))


(def-demo-rspec  chasing
  "Chasing mice is little."  
  "checking initial gerunds (and remember:  standalone interface has no semantics)"
  (discourse-unit
   :head (general-clause
	   :head
	   (predication_to-be
	     (general-np
	       :head (vp-gerund "chase"
				(general-np
				  :head (np-common-noun "mouse")
				  :accessories
				  (:number plural
				   :determiner-policy kind)))
	       :accessories (:number singular
			     :person third
			     :gender neuter
			     :determiner-policy  no-determiner))
	     (adjective "little"))
	   :accessories (:tense-modal present
			 :unmarked ))
   ))


(def-demo-rspec  fluffys-goal
  "Fluffy is chasing a mouse"
  "The cannonical example"
  (discourse-unit
   :head (general-clause
          :head (PREDICATE-ICOMP
                 (general-np
                  :head (np-proper-name "goal")
                  :accessories
                  (:number singular
                           :determiner-policy always-definite)
                  )
                 (general-clause
                  :head (chase
                         (general-np
                          :head (np-proper-name "Fluffy")
                          :accessories
                          (:number singular
                                   :determiner-policy no-determiner)
                          )
                         (general-np
                          :head (np-common-noun "mouse")
                          :accessories
                          (:number singular
                                   :determiner-policy kind)))
                  :accessories (:unmarked)) )
          :accessories (:tense-modal present
                        :unmarked))
   ))