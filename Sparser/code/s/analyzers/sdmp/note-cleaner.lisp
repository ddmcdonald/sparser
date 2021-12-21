;;; Copyright (c) 2021 David D. McDonald all rights reserved
;;;
;;;      File: "note-cleaner"
;;;    Module: analyzers/sdmp/
;;;   Version: December 2021

;; Initiated 12/15/21 to facilitate keeping information across article
;; runs.

(in-package :sparser)

#| This is sort of like long-term-ify. We want to retain the content
 of the results of an article without presuming that we still have
 access to edges or positions or anything else that gets re-initialized
 with the next call to analysis-core.

Requirements:
1. No interference from earlier articles' notes on accumulation and
 tablulation for the article currently being analyzed.

2. We can compare one article's noted properties to another ones. 

3. We can still normalize (article length, comparative converage, ...)



Containers are all instantiated, so no issue there.
The time to read and noted categories use data already on the article.
Show-noted-categories uses article contents.
However show-motif-term-context is completely bound to the current article
 because of *germaine-spotter-group-instances*, so have to stach it somewhere.

Time to read an article is not saved. Would be another slot(?) on article?
 or maybe piggyback on token-count(??)

|#

;;;----------------------
;;; pre-article cleaning
;;;----------------------

(defun clear-note-tables ()
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. Since notables
   and note-groups persist across articles and are accessed by
   name, we have to clean out their per-article instance counterpart
   objects or else we would have misleading counts."
  (clear-note-entry)
  (clear-note-group-instance))




(defun clear-spotting-tables ()
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. Clearing the instances
   removes any influence from instances in earlier documents."
  (clear-spot-entry)
  (clear-word-spotting-group-instance)
  (initialize-spotter-edge-records))
