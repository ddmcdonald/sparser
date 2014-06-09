;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved

;;;    File: "vocabulary"
;;;  Module: "grammar/model/sl/checkpoint/
;;; version: August 2011

;; Initiated 4/8/09. Elaborated through 9/26/09. 8/4/11 pulled out the ETF
;; since it can't be found there. 8/5 commented out "drive" and others  that
;; create interference with better definitions upstream. 6/9/14 stripping out
;; still more vocabulary that's been overtaken by events 

(in-package :sparser)

;;-- simple things

;; vehicles
(np-head "car")
(np-head "vehicle")
(np-head "jeep")
(np-head "bus")
(np-head "automobile")
(np-head "bicycle")
(np-head "boat")
(np-head "motorcycle")
(np-head "van")
(np-head "wagon")
(np-head "truck")

;; vehicle parts
(np-head "trunk")
(np-head "hood")
(np-head "door")
(np-head "wheel")

(np-head "ground")
(np-head "name")
(np-head "business")
(np-head "paper")
(np-head "id")
(np-head "identification")


;;-- Acknowledgements
(define-category  acknowledgement
  :instantiates  self
  :specializes   nil 
  :binds ((name :primitive word))
  :realization (:interjection name))

(define-individual 'acknowledgement :name "yes")
(define-individual 'acknowledgement :name "no")
(define-individual 'acknowledgement :name "ok")

;;-- Greetings
(define-category  greeting
  :instantiates  self
  :specializes   nil 
  :binds ((name :primitive word))
  :realization (:interjection name))

(define-individual 'greeting :name "hello")
(define-individual 'greeting :name "hi")
(define-individual 'greeting :name "goodbye")
(define-individual 'greeting :name "bye")

;;-- enables interjections to be slapped on to the beginning of sentences
(sentential-interjection "yes")
(sentential-interjection "no")
(sentential-interjection "ok")
(sentential-interjection "hello")
(sentential-interjection "hi")
(sentential-interjection "goodbye")
(sentential-interjection "bye")


;; Load-timing problem. This references categories that aren't defined
;; when the ETF are loaded. So either they're variablized, which is odd
;; at best, or they're loaded late.


(sv-location '("come" :past-tense "came"))
(sv-location '("get" :past-tense "got"))
(sv-location '("go" :past-tense "went"))
(sv-location "stay") ;;/// bug somewhere -- not getting "ing" form

(sv-location '("stand" :past-tense "stood"))
(sv-location '("sit" :past-tense "sat"))

;; these two were pesky & causing problems
;(sv-prep "come" "over")
;(sv-prep "come" "along")

(sv-prep "stand" "over")
(sv-prep "stand" "up")
;;(sv-prep "sit" "down") ;; irregulars
;;(sv-prep "sit" "still")

(sv-prep "lie" ;;//// flag all the irregulars: "lay" "lieing"
 "down")
(sv-prep "move" "along")
(sv-prep "move" "on")
(sv-prep "move" "forward")

;;--- These take arguments 
(svo "open")
(svo "close")

(svo "tell")
(svo "show")

;;--- but the preposition goes with the verb
;;(sv-prep-marked-o "get" "out of") ;;/// 6/8/09 the location is winning
   ;; Need general treatment of "get" -- marking the irregulars
(sv-prep-marked-o "open" "up") 

;;--- These don't take arguments, but they could have modifiers
;; Right (5/30) now they're coming out as just the category
;;   unless they're combined with modifiers or a subject
;;   in which case they come out as events
;; Now (7/7/09) when followed by "please" or with-np, they retain
;;   their verb-ness and incorporate the modifier
(sv "halt")
(sv "proceed")
(sv "stop")
(sv "live")
;; (sv "drive") conflicts with definition in /core/places/move.lisp


; (checkpoint-regression-test)
(defun checkpoint-regression-test (&optional (stream *standard-output*))
  (let ((*display-word-stream* nil))
  (mapcar 
   #'(lambda (pair)
       (terpri stream)
       (let ((text (car pair))
	     (result (cdr pair)))
	 (handler-case
	     (let ((actual-result (pp text)))  ;; (pp text)
	       (if (equal actual-result result)
		 (format stream "~&Good: \"~a\"" text)
		 (format stream "~%Bad! for \"~a\"~%  expected ~a~%  but got ~a"
			 text result actual-result)))
	   (error (e)
	     (format stream "Bug!: \"~a\" got: \"~a\"" text e)))))
   `(;; REQUESTS
     ("get in the car" . (speech_act (form request)
				     (content (event (type get)
						     (location (type relative_location)
							       (place (entity (type car)))
							       (functor (type spatial_orientation)
									(realization "in")))))))
     ("open the trunk" . (speech_act (form request)
				     (content (event (type open)
						     (object (entity (type trunk)))))))
     ("go over there with him please" . (speech_act (form request)
						    (content (event (type go)
								    (modifier please)
								    (modifier (type with_np)
									      (content (entity (type pronoun_male)
											       (realization "him"))))
								    (location (type deictic_location)
									      (realization "over there"))))))
     ("move along" . (speech_act (form request)
				 (content (event (type move_along)))))
     ("please open the trunk" . (speech_act (form request)
					    (content (event (type open)
							    (modifier please)
							    (object (entity (type trunk)))))))
     ("come over here" . (speech_act (form request)
				     (content (event (type come)
						     (location (type deictic_location)
							       (realization "over here"))))))
     ("get out of the car" . (speech_act (form request)
					 (content (event (type get)
							 (location (type relative_location)
								   (place (entity (type car)))
								   (functor (type spatial_orientation)
									    (realization "out of")))))))
     ("stand over there" . (speech_act (form request)
				       (content (event (type stand)
						       (location (type deictic_location)
								 (realization "over there"))))))
     ("stand up" . (speech_act (form request)
			       (content (event (type stand_up)))))
     ("sit down" . (speech_act (form request)
			       (content (event (type sit_down)))))
     ("sit down over there" . (speech_act (form request)
					  (content (event (type sit_down)
							  (location (type deictic_location)
								    (realization "over there"))))))
     ("come with me" . (speech_act (form request)
				   (content (event (type come)
						   (modifier (type with_np)
							     (content (entity (type pronoun_first_singular)
									      (realization "me"))))))))
     ("you may proceed" . (speech_act (form request)
				      (content (event (type proceed)
						      (participant (entity (type pronoun_second)
									   (realization "you")))))))
     ("come along" . (speech_act (form request)
				 (content (event (type come)
						 (location (type spatial_orientation)
							   (realization "along"))))))
     ("come with me please" . (speech_act (form request)
					  (content (event (type come)
							  (modifier please)
							  (modifier (type with_np)
								    (content (entity (type pronoun_first_singular)
										     (realization "me"))))))))
     ("move along" . (speech_act (form request) 
				 (content (event (type move_along)))))
     ("open up the trunk" . (speech_act (form request)
					(content (event (type open_up) 
							(object (entity (type trunk)))))))
     ;; INVERSIONS -- for more, see list of broken examples below
     ("tell me where you are going" . (speech_act (form inversion)
						  (content (event (form question)
								  (content (event (type go)
										  (participant (entity (type pronoun_second)
												       (realization "you")))))
								  (type where)))
						  (target "me")
						  (functor tell)))
     ;; GREETINGS
     ("hello" . (speech_act (type greeting)
			    (realization "hello")))
     ;; ACKNOWLEDGEMENTS
     ("yes". (speech_act (type acknowledgement)
			 (realization "yes")))
     ;; QUESTIONS
     ("who's in the car with you" . (speech_act (form question)
						(modifier (type with_np)
							  (content (entity (type pronoun_second)
									   (realization "you"))))
						(content (type relative_location)
							 (place (entity (type car)))
							 (functor (type spatial_orientation)
								  (realization "in")))
						(type who)))
     ("who's with you" . (speech_act (form question)
				     (content (type with_np)
					      (content (entity (type pronoun_second)
							       (realization "you"))))
				     (type who)))
     ("what is in the truck" . (speech_act (form question)
					   (content (type relative_location)
						    (place (entity (type truck)))
						    (functor (type spatial_orientation)
							     (realization "in")))
					  (type what)))
     ("what's in the trunk" . (speech_act (form question)
					  (content (type relative_location)
						   (place (entity (type trunk)))
						   (functor (type spatial_orientation)
							    (realization "in")))
					  (type what)))
     ("who's in back" . (speech_act (form question)
				    (content (type relative_location)
					     (place (entity (type direction)
							    (realization "back")))
					     (functor (type spatial_orientation)
						      (realization "in")))
				    (type who)))
     ("why are you out today" . (speech_act (form question)
					    (time (entity (type calculated_day)
							  (realization "today")))
					    (location (type spatial_orientation)
						      (realization "out"))
					    (participant (entity (type pronoun_second)
								 (realization "you")))
					    (type why)))
     ("who's in the car" . (speech_act (form question)
				       (content (type relative_location)
						(place (entity (type car)))
						(functor (type spatial_orientation)
							 (realization "in")))
				       (type who)))
     ("where are you from" . (speech_act (form question)
					 (location (type prep_location)
						   (realization "from"))
					 (participant (entity (type pronoun_second)
							      (realization "you")))
					 (type where)))
     ("where are you going" . (speech_act (form question)
					  (content
					   (event (type go)
						  (participant (entity (type pronoun_second)
								       (realization "you")))))
					  (type where)))
     ("where you going" . (speech_act (form question)
				      (content (event (type go)
						      (participant (entity (type pronoun_second)
									   (realization "you")))))
				      (type where)))
     ("where do you live" . (speech_act (form question)
					(content (event (type live)
							(participant (entity (type pronoun_second)
									     (realization "you")))))
					(type where)))
     ;; COMPOUND SENTENCES
     ("get out and open the trunk" . (speech_act_seq
				      (speech_act (form request)
						  (content (event (type get)
								  (location (type spatial_orientation)
									    (realization "out")))))
				      (speech_act (form request)
						  (content (event (type open)
								  (object (entity (type trunk))))))))
     ("open the door and get out of the car" . (speech_act_seq
						(speech_act (form request)
							    (content (event (type open)
									    (object (entity (type door))))))
						(speech_act (form request)
							    (content (event (type get)
									    (location (type relative_location)
										      (place (entity (type car)))
										      (functor (type spatial_orientation)
											       (realization "out of"))))))))
     ("close the trunk and get back in the car" . (speech_act_seq
						   (speech_act (form request)
							       (content (event (type close)
									       (object (entity (type trunk))))))
						   (speech_act (form request)
							       (content (event (type get)
									       (location (type relative_location)
											 (place (type relative_location)
												(place (entity (type car)))
												(functor (type spatial_orientation)
													 (realization "in")))
											 (functor (type direction)
												  (realization "back"))))))))
     ("hello and where are you going" . (speech_act_seq
					 (speech_act (type greeting)
						     (realization "hello"))
					 (speech_act (form question)
						     (content (event (type go)
								     (participant (entity (type pronoun_second)
											  (realization "you")))))
						     (type where))))
))) :done)

;; "broken examples" -- these aren't the way I want them to be yet...
#|
     ; drive should be an event!
     ("who's driving" . (speech_act (form question)
				    (content drive)
				    (type who)))
     ; for (time (entity (type calculated_day) and (location (entity (type spatial_orientation), entity doesn't make sense
     ("why are you out today" . (speech_act (form question)
					    (time (entity (type calculated_day)
							  (realization today)))
					    (location (entity (type spatial_orientation)
							      (realization out)))
					    (participant (entity (type pronoun_second)
								 (realization you)))
					    (type why)))
     ; for the next ones, (target me) should be (target (entity (type pronoun_first_singular) (realization "me")))
     ("please tell me where you're going today" . (speech_act (form inversion)
							      (modifier please)
							      (content (form question)
								       (content (event (type go)
										      (time (entity (type calculated_day)
												    (realization "today")))
										      (participant (entity (type pronoun_second)
													   (realization "you"))))
								       (type where))
							      (target me)
							      (functor tell)))
     ("please tell me why you're out today" . (speech_act (form inversion)
						           (modifier please)
						           (content (form question)
						                    (time (entity (type calculated_day) 
						                                  (realization "today")))
						                    (content (event (type be)
						                                   (location (type spatial_orientation) 
						                                             (realization "out"))
						                             (participant (entity (type pronoun_second) (realization you))))
                                                                    (type why))
                                                           (target me)
						           (functor tell)))
     ; for all of the rest, (modifier your) should be (modifier (entity (type pronoun_second) (realization "your")))...
     ("open your trunk" . (speech_act (form request)
				      (content (event (type open)
						      (object (entity (type trunk)
								      (modifier your)))))))
     ("hi what's your name" . (speech_act (form question)
                                          (modifier (entity (type greeting) 
                                                            (realization "hi")))
                                          (content (entity (type name)
                                                           (modifier your)))
                                          (type what)))
     ("ok where are your papers" . (speech_act (form question)
                                               (modifier (entity (type acknowledgement)
                                                                       (realization "ok")))
                                               (content (type paper_collection) (modifier your))
                                               (type where)))
     ("what's your name" . (speech_act (form question)
                                       (content (entity (type name)
                                                        (modifier your)))
                                       (type what)))
     ("what's your business there" . (speech_act (form question)
						 (location (type deictic_location)
							   (realization "there"))
						 (content (entity (type business)
								  (modifier your)))
						 (type what)))
     ("where is your car" . (speech_act (form question)
					(content (entity (type car)
							 (modifier your)))
					(type where)))
     ("where are your papers" . (speech_act (form question)
					    (content (type paper_collection)
						     (modifier your))
					    (type where)))
|#



#| don't use this for now, it hasn't been updated with new output format!
; (checkpoint-script)
(defun checkpoint-script (&optional (stream *standard-output*))
  (mapcar 
   #'(lambda (pair)
       (terpri stream)
       (let ((text (car pair))
	     (result (cdr pair)))
	 (handler-case
	     (let ((actual-result (vrp text)))  ;; (pp text)
	       (if (equal actual-result result)
		 (format stream "~&Good: \"~a\"" text)
		 (format stream "~%Bad! for \"~a\"~%  expected ~a~%  but got ~a"
			 text result actual-result)))
	   (error (e)
	     (format stream "Bug!: \"~a\" got: \"~a\"" text e)))))
   `(("stop" . (request (stop)))
     ("halt" . (request (halt)))
     ("get out of the car" . (request (get (location
					    (relative-location (place (car))
							       (functor (spatial-orientation "out of")))))))
     ("get out of the vehicle" . (request (get (location
						(relative-location (place (vehicle))
								   (functor (spatial-orientation "out of")))))))
     ("show me your id" . (request (show (target "me") (content (id (modifier "your"))))))
     ("show me your identification" . (request (show (target "me") (content (identification (modifier "your"))))))
     ("show me some id" . (request (show (target "me") (content id))))
     ("show me some identification" . (request (show (target "me") (content identification))))
     ("who's with you" . (wh-question (content (with-np (content (pronoun/second "you"))))
				      (type who)))
     ("who's in the car with you" . (wh-question (modifier (with-np (content (pronoun/second "you"))))
						 (content
						  (relative-location (place (car))
								     (functor (spatial-orientation "in"))))
						 (type who)))  ;; test fails due to sticky psi issue
     ("where are you going" . (wh-question (content (go (participant (pronoun/second "you"))))
					   (type where)))
     ("what's in the trunk" . (wh-question
			       (content
				(relative-location (place (trunk))
						   (functor (spatial-orientation "in"))))
			       (type what)))  ;; test fails due to sticky psi issue
     ("please open the trunk" . (request (open (modifier please) (object (trunk)))))
     ("please open it" . (request (open (modifier please) (object (pronoun/inanimate "it")))))  ;; test fails due to sticky psi issue
     ("open the trunk" . (request (open (object (trunk)))))
     ("open it" . (request (open (object (pronoun/inanimate "it")))))
     ("where are you coming from" . (wh-question
				     (content
				      (come (location (prep-location "from"))
					    (participant (pronoun/second "you"))))
				     (type where)))
     ("get back in the car" . (request
			       (get (location
				     (relative-location
				      (place
				       (relative-location (place (car))
							  (functor (spatial-orientation "in"))))
				      (functor (direction "back")))))))  ;; test fails due to sticky psi issue
     ("ok go ahead" . (request
		       (go (modifier (acknowledgement "ok"))
			   (location (spatial-orientation "on")))))  ;; test fails due to sticky psi issue
     ("ok go on" . (request
		    (go (modifier (acknowledgement "ok"))
			(location (spatial-orientation "on")))))  ;; test fails due to sticky psi issue
     ("you can go" . (request (go (participant (pronoun/second "you")))))
     ))
  :done)
|#

;;--- debugging bits (usually goes in workspace)
#|
 (e :from 0 :to 6)  (display-chart :style :all-edges)
 (exploded-tree-family-named 'transitive/specializing-pp)

 (trace-edges)
 (display-chart-brackets)
|#