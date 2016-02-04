;; Last edited, 2/2/16
;;  grammar/core/sl/blocks-world/notes on how it works.lisp
(in-package :sparser)

;;---- Adding Mumble resources to a Krisp category

This works on category realization specificiations that aren't going
through a modern short cut. In decode-category-parameter-list there is
a dispatch based on the test (includes-def-realization-keyword rdata).
If so, call setup-shortcut-rdata, if now we call setup-rdata -- that
path has code to make Mumble resources that parallel what Sparser uses.

Setup-rdata has a check, (includes-mumble-rdata rdata), that is looking
for an instance of the :mumble clause as in this example from blocks-world/
vocabulary.lisp. The cadr of that form --  ("put" svo1o2 :o1 theme :o2 location)
starts with the pname of the verb, folowed by the name of the Mumble phrase
to use (svolo2 -- see Mumble/grammar/phrases.lisp), followed by pairs of
phrase parameters (:o1, :o2) and the variables in the category they correspond
to. This is passed to apply-mumble-rdata for decoding, and the Mumble resource,
a lexicalized phrase for the verb, is made by apply-mumble-rdata 

(define-category put-something-somewhere
  :specializes process
  :mixins (with-an-agent) ;; adds 'agent' variable
  :binds ((theme physical)
          (location location)) ;; mixin has-location
  :realization
    ((:main-verb "put")
     (:mumble ("put" svo1o2 :o1 theme :o2 location))))

For individual words, such as the :main-verb in this case, the resource is
built when dereference-rdata runs. That calls make-corresponding-lexical-resource 
on the head-word (which is a sparser::word or polyword). If the flag is up
(*build-mumble-equivalents* bound by setup-rdata) or we're running a *CwC*
image, this calls mumble::make-resource-for-sparser-word, which makes the
appropriate lexicalized phrase for the (equivalent mumble::word) according
to its part of speech. 
