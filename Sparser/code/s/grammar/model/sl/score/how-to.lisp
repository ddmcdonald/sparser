;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "how-to"
;;;  Module: "grammar/model/sl/score/
;;; version: September 2021

;; Instructions for running run Comlex -> file of define-category expressions

(in-package :sparser)

1. Compile the list of words you want to convert.

Note that these are all lists of strings, not words, though they may be converted to words to do some of these of the preprocessing over them. It more natural to talk about 'words' though and hopefully the differences will be clear from context.

The word-lists that were used earlier are in word-lists.lisp, along with some additional lists that looked useful to record, if not to output. There is also a separate file in the score directory, comlex-cached-words.lisp, that records every word that was established by running it through Comlex during a run over 100 articles from the Acumen corpus.

Every list has to go through the same preprocessing. A set of 'populate' functions at the bottom of word-lists. They all do essentially the same thing: (1) they vet each word for suitability for projecting to a category definition (or definitions), this can prune the list. (2) they remove any duplicates, and (3) they pass the words through the stemmer to catch any missing morphological variants -- we always want to work with the lemma forms.

Words are vetted by the criteria in candidate-for-comlex-category?. Basically they have to be unknown words that have an entry in comlex.

First execute (prep-all-word-lists) which runs the 'populate' functions on the target lists. At the moment these are a list of words that are used in polywords, plus the *comlex-verbs* and *morph-comlex-verbs* predefined lists. There is another large list from the original set, *word-list*, that is a mixture of lemmas, +ing forms, and +ed forms -- it is presently included but it would be nice to know more about its origins.

Then execute (merge-word-lists) -- this appends all the prep'd lists into the global *master-comlex-word-list*. This call and the prep call both return the count of words in their final lists. Today (9/10/21) it was 2,525 for prep-all-word-lists and 2,179 for merge-word-lists.


2. Pass the word list to the file writer

The output functions are in score/output.lisp. The driver is write-word-definitions-to-file, which takes a word list and a name by which to identify what the definition expressions it produces corresponds to.

At present, the expressions are written to grammar/model/dossiers/comlex-categories.lisp (i.e. the value of the *dossier-to-comlex-categories* parameter). 

The driver opens the file, prints a preamble with the date and file identifier, and then passes the word list to create-word-definitions. It loops over the words, does a final candidate-for-comlex-category? sanity check and then passes the words one at a time to the central routine for batch processing of words to their definitions as categories: comlex-lemma-to-category-forms, in score/driver.lisp. 
