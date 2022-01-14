;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "export"
;;;  Module: "grammar/model/sl/motifs/
;;; version: January 2022

;; Initiated 1//12/22 for 'exporting' the results on the articles,
;; following the model in drivers/sinks/export.lisp

(in-package :sparser)

;;--- scratch pad for right now.

;; How to we get examples for instances of motifs?

Get an article -- by index from the articles that have been analyzed

-- Reading from the inversion
(gethash :posessive *note-entries-to-where-used*) ; 37 articles
sp> (defvar articles-using-possessive (cdr *))
(car articles-using-possessive)
#<article 4 1/12/22 15:52:5>
sp> (defvar m4 *)

-- we  want the note-group-instance objects on the article.
   Germaine-items selects for groups about motifs
sp> (contents m4)
#<article-features unknown>
sp> (defvar contents *)
contents
sp> (defvar motific-group-instances (germaine-items contents))
motific-group-instances

sp> (car motific-group-instances)
#<note-group-instance golem>
sp> (note-instances *)
(#<golem 34> #<golems 2>) ; singular and plural



sp> (car *)
#<golem 34>
sp> (d *)
#<golem 34>
  name          = golem
  notable       = #<motif-spotter golem>
  count         = 34
  text-strings  = (#<e2205> #<e2202> #<e2106> #<e1998> #<e1997> #<e1879> #<e1878>..

sp> (text-strings *)
(#<e2205> #<e2202> #<e2106> #<e1998> #<e1997> #<e1879> #<e1878> #<e1877>
 #<e1653> #<e1651> #<e1514> #<e1511> #<e1408> #<e1297> #<e1296> #<e1191>
 #<e1190> #<e1025> #<e1020> #<e890> #<e766> #<e665> #<e461> #<e458> #<e191>
 #<e190> #<e189> #<e188> #<e187> #<e186> #<e185> #<e184> #<e59> #<e0>)
sp> (defvar edge-records *)
edge-records
sp> (length edge-records)
34
sp> (defvar record (car edge-records))
sp> (edge-record-string *)
"Golem"


;;---- at the call to clean-out-note-data

article: #<article 106 1/12/22 17:17:34> ;; the last one we ran

Backtrace:
  0: (break "article: ~a" #<article 106 1/12/22 17:17:34>)
  1: (clean-out-note-data #<article 106 1/12/22 17:17:34>)
  2: (per-article-initializations)
  3: (analysis-core)
  4: (analyze-text-from-file "/Users/ddm/ws/Acumen/acumen/trunk/data/split/anno-10/PR/woman_claims_to_find_mythical_chupacabra.txt" :paragraph t :prescan t :echo nil :ext-format :utf-8 :trace t :quiet t :s..
  5: (analyze-acumen-file "/Users/ddm/ws/Acumen/acumen/trunk/data/split/anno-10/PR/woman_claims_to_find_mythical_chupacabra.txt" :quiet t :skip nil :trace t :index 788 :verbose t :verbose-para t :motific? ..
  6: (run-specific-acumen-file 788 :quiet t :skip nil :motific t)
 
--- Clear that, and now the next one
sp> (run-specific-acumen-file 788 :quiet t :motific t)
788. "woman_claims_to_find_mythical_chupacabra"
532 words.  Time to parse: 274 msec  1,941.6 words/second
Parsing coverage: 3 (1 edge), 26 (2-5), 12 (> 5)
vague-names: 45  places: 8  quantities: 6  chupacabra: 5  time: 4  
identified-names: 3  verbs: 3  brackets: 1  finance: 1  
Functional categorizations for 5 out of 5 instances
  (object 2)  (in-relation 1)  (np-head 1)  (subject 1)
#<article 788 1/13/22 18:17:6>

sp> (defvar article *)
article
sp> (defvar contents (contents article))
contents
sp> (defvar group-instances (germaine-items contents))
group-instances
sp> group-instances
(#<note-group-instance chupacabra>)
sp> (defvar group-instance (car group-instances))
group-instance
sp> (defvar note-entries (note-instances group-instance))
note-entries
sp> note-entries
(#<chupacabra 5>)


sp> (car group-instances)
#<note-group-instance chupacabra>
sp> (defvar note-group-instance *)
note-group-instance
sp> (d note-group-instance)
#<note-group-instance chupacabra>
  name            = chupacabra
  note-instances  = (#<chupacabra 5>)
  count           = 5
#<note-group-instance chupacabra>

sp> (defvar note-entries (note-instances note-group-instance))
note-entries
sp> note-entries
(#<chupacabra 5>)

sp> (defvar note-entry (car *))
note-entry
sp> (d note-entry)
#<chupacabra 5>
  name          = chupacabra
  notable       = #<motif-spotter chupacabra>
  count         = 5
  text-strings  = (#<e845> #<e609> #<e548> #<e526> #<e358>)


sp> (defvar edge-records (text-strings note-entry))
edge-records
sp> edge-records
(#<e845> #<e609> #<e548> #<e526> #<e358>)

sp> (defvar old-record (car *))
old-record
sp> (d old-record)
#<e845>
  number         = 845
  string         = "chupacabra"
  chain          = #<e845..e861 >
  configuration  = :subject

sp> (make-long-term-edge-record old-record article)
#<record 845>
sp> (d *)
#<record 845>
  article         = #<article 788 1/13/22 18:17:6>
  top-string      = "I think the chupacabra"
  spotted-string  = "chupacabra"
  number          = 845
  indexes         = (2005 . 2016)
  form-labels     = (common-noun np vp s)
  configuration   = :subject

#<record 845>

;;------------ moving the long-termifying earlier doesn't work

The value nil is not of type edge-vector.
Backtrace:
  0: (pos-edge-starts-at #<unavailable argument>)
  1: (extract-string-spanned-by-edge #<edge1311 inactive, resource 1311>)
  2: ((:method string-for-edge (edge)) #<edge1311 inactive, resource 1311>) [fast-method]
      Locals:
        edge = #<edge1311 inactive, resource 1311>
  3: ((sb-pcl::gf-dispatch string-for-edge) #<edge1311 inactive, resource 1311>)
  4: (make-long-term-edge-record #<e1272> #<article 785 1/13/22 19:26:22>)
      Locals:
        article = #<article 785 1/13/22 19:26:22>
        chain = #<e1272..e1311 >
        config = :subject
        edge-number = 1272
        record = #<e1272>
        spotted-edge = #<edge1272 inactive, resource 1272>
        spotted-string = "Chupacabra"
        top = #<edge1311 inactive, resource 1311>
  5: (sb-debug::trace-call #<sb-debug::trace-info make-long-term-edge-record> #<FUNCTION make-long-term-edge-record> #<e1272> #<article 785 1/13/22 19:26:22>)
  6: (clear-spotting-tables #<article 785 1/13/22 19:26:22>)
      Locals:
        article = #<article 785 1/13/22 19:26:22>
        #:loop-list-0 = nil
        #:loop-list-1 = nil
        #:loop-list-4 = (#<e1065> #<e123> #<e1390> #<e1290> #<e1127> #<e725> ...)
        #:loop-list-head-5 = (nil)
        #:n-x7 = (nil)
  7: (sb-debug::trace-call #<sb-debug::trace-info clear-spotting-tables> #<FUNCTION clear-spotting-tables> #<article 785 1/13/22 19:26:22>)
  8: (clean-out-note-data #<article 785 1/13/22 19:26:22>)
  9: (sb-debug::trace-call #<sb-debug::trace-info clean-out-note-data> #<FUNCTION clean-out-note-data> #<article 785 1/13/22 19:26:22>)
 10: (preserve-long-term-records)
 11: (analysis-core)

;;--------- after moving it to just after we announce results

The value nil is not of type edge-vector.
 0: (pos-edge-starts-at #<unavailable argument>)
  1: (extract-string-spanned-by-edge #<edge1272 inactive, resource 1272>)
  2: ((:method string-for-edge (edge)) #<edge1272 inactive, resource 1272>) [fast-method]
  3: ((sb-pcl::gf-dispatch string-for-edge) #<edge1272 inactive, resource 1272>)
  4: (make-long-term-edge-record #<e1272> #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22 21:13:29>)
      Locals:
        article = #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22 21:13:29>
        chain = #<e1272..e1272 >
        config = :subject
        edge-number = 1272
        record = #<e1272>
        spotted-edge = #<edge1272 inactive, resource 1272>
        spotted-string = "Chupacabra"
        top = #<edge1272 inactive, resource 1272>
  5: (sb-debug::trace-call #<sb-debug::trace-info make-long-term-edge-record> #<FUNCTION make-long-term-edge-record> #<e1272> #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_t..
  6: (clear-spotting-tables #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22 21:13:29>)
      Locals:
        article = #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22 21:13:29>
        #:loop-list-0 = nil
        #:loop-list-1 = nil
        #:loop-list-4 = (#<e1065> #<e123> #<e1390> #<e1290> #<e1127> #<e725> ...)
        #:loop-list-head-5 = (nil #<record 695> #<record 557> #<record 294> #<record 183> #<record 71>)
        #:n-x7 = (#<record 71>)
  7: (sb-debug::trace-call #<sb-debug::trace-info clear-spotting-tables> #<FUNCTION clear-spotting-tables> #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/1..
  8: (clean-out-note-data #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22 21:13:29>)
  9: (sb-debug::trace-call #<sb-debug::trace-info clean-out-note-data> #<FUNCTION clean-out-note-data> #<article 783 terrifying_vampire_beast_captured_and_killed_by_pitchfork_after_terrorising_town 1/13/22..
 10: (finish-paragraph-based-article)
 11: (parse-successive-paragraphs)
 12: (initiate-successive-sweeps)
 13: (lookup-the-kind-of-chart-processing-to-do)
 14: (chart-based-analysis)
 15: (analysis-core)


 (trace clean-out-note-data clear-spotting-tables)
 (trace make-long-term-edge-record)


 ------------- Problem could be long-term-ify

 Callers of deactivate-edge
  long-term-ify/edge-referents/at => analyzers/ca/anaphora
  manage-wrapped-edge-resource => objects/chart/edges/resource

 Callers of long-term-ify/edge-referents/at
  bump-&-store-word => analyzers/psp/fill-chart/store
