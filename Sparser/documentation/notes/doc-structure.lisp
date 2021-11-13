;; Document Structure
;; Started 5/23/21. This version 6/25/21

(in-package :sparser)

We have a rich, active facility for representing the structure and contents of a document. The bulk of the relevant files are in the directory objects/doc/. At its foundation is a set of classes that define the structure of a document and their associated actions. These were refined to their current, final form early in our work on Big Mechanism as part of the work to convert the XML files we downloaded from NIH into a form we could pass to the analysis routines and associate the text with the part of the document they came from.

* The class structure and resources

The classes follow the options defined by the NXML tag set: article, section, subsection, pargraph. These classes are defined in object/doc/object.lisp, along with the document-element class that they all inherit from.

(defclass document-element (chart-region document-region
                            has-parent has-children
                            ordered indexed word-frequency
                            has-content-model)
  ()
  (:documentation "Provides a super-type with common set of slots
    and behavior for all of the classes that describe portions
    of a document. Not every slot pertains to every object, but
    enough do that the benefits of uniformity outweight the
    possible lose in efficiency."))

The first thing to notice about this class definition is that it is the concatenation of many other classes. This is the standard pattern in the doc section of the code. It is worth looking at the individual definitions of these classes along with their accompanying methods.

There is a very general set of heavily used classes in the file  tools/basics/clos-classes.lisp. These classes do a lot of the heavy lifting in providing consistent organization for this code and many other parts of Sparser.

In objects/doc/classes.lisp are the classes that provide a view of the chart and the character in the documents. These all have 'clear' methods for taking an instance of one of the classes and emptying its fields. Notice how the parameterization of these methods guarentees that they will only operate of objects of the correct type.

(defmethod clear ((o document-region))
  (setf (starts-at-char o) nil)
  (setf (ends-at-char o) nil)
  (call-next-method))

The call-next-method invocation reflects the intention to be able to store a stock of instances of a given type into a resource that can be recycled. You can see how this plays out by browsing through the objects file and following out the function define-resource for the detals.

When we use resources, the individuals that were instantiated during an analysis are reclaimed and no longer availalble for inspection of off-line explorations. This is particularly the case for the positions and edges in the chart, though their recycling is done by a set of tailored functions as they are the oldest data structures in Sparser. By convention, we don't do any recycling until we start a new analysis. (To look at it, you should start with the function analysis-core in drivers/sources/core.lisp. Every analysis goes through it.)

As time has gone on there has been an increasing tendency to instantiate new instances of document structure classes rather than recycling them (for instance look at what's being done in the function start-sentence). Where we once thought that we could accomlish all the categorization and extraction we needed in a single pass, we now regularly want to look at many articles at a time. This does come with a problem that is becoming increasing salient. Keeping the indexes to these objects means that the contents of those articles will not be released to be garbage collected and eventually the Lisp process will run out of memory.


* Driving the process

The pattern of use of the document structure was established in our Big Mechanism project, R3. In R3 the input was a .nxml file from the large set that we downloaded. Special purpose code opened the file, converted the xml to a lisp-friendly form, and then recursively traversed it, making fresh instances of paragraphs, sections and so on in the process. (For the moment that code is in the R3 repository, though part of it will eventually be moved to Sparser's repository.)

The analysis of the resulting objects, starting with a root 'article' instance, is handled by the methods in drivers/sources/document.lisp. It establishes the values for some state parameters that govern the details of the analysis. The work is done by a set of class-specific read-from-document methods. These all have the same basic organization, which is to do some bookkeeping, apply read-from-document to each of their children objects, and run their after-actions method.

When we're working from document structure objects that were created before their analysis starts (as opposed to from a plain text file), the text in the paragraphs starts out as just a long string. This is because paragraphs are the smallest unit of a document that is encoded in the NXML tag set. (Other, older tag sets go further and demarkate individual sentences, which of course is much more work for the team creating the marked up files. Given the size of corpora these days and the accuracy of automatic sentence splitting, that level of effort is rarely justified.)

Partly for that reason, document-structure based articles are usually analyzed in two passes. The first pass creates the sentences within the paragraphs and any implied subsections, and it's not until the second pass that we actually do any parsing. We used this same strategy when we started working with the COVID-19 corpus, where the documents start out as a set of JSON expressions. We wrote a body of code to convert the JSON into our document structure and then used are regular document-structure based machinery to analyze them. (We did this again for SCORE, but the system that ripped the text from the source PDF did not understand page layout well enough and it was too hard to fix. The next time we work from a PDF source we'll want to take a different approach.)

The function below that was written to organize the analysis of a COVID article is a good model of what has to happen. We have essentially the same driver for ACUMEN files, though we do not pre-process them, but rather create the document structure on the fly as we're reading through the file. This is from drivers/sources/driver.lisp.

(defun run-json-article (article &key (sweep t) (read t) para-count
                                   (quiet t) (skip-errors t) (verbose t)
                                   (show-sect nil) (stats nil))
  "Modeled directly on run-an-article in R3. This is how we
   take a article individual and pass it through the document-type
   driven reader methods;
     :sweep -- first pass that adds sentences to the paragraphs
   in the article.
     :read -- second pass where the sentences are parsed. Runs for
   side-effects on the 'content' fields of the document elements.
     :quiet -- turn off printing from the parser. If it is nil
   you will aways see the bracketing of the phrases.
     :skip-errors -- run via an error catch that traps any errors
   rather than going into the debugger. Error is printed to standard-
   out, usually includes the text of the sentence where it occurred."
  (let ((*trap-error-skip-sentence* skip-errors))
    (declare (special *trap-error-skip-sentence*
                      *article*))
    (setq *article* article)
    ;; If sweep is nil, this returns the raw document,
    ;; i.e. no section-of-sections or sentences.
    (when sweep
      ;; Make the sentences and implicit subsections.
      ;; Same as r3::sweep-article but w/o the handler.
      (sp::sweep-document article))
    (unless sweep ;; later pass contingent on first
      (setq read nil
            stats nil))
    (when read
      (if quiet
        (with-total-quiet (sp::read-from-document article))
        (with-total-quiet
          (let ((*show-section-printouts* show-sect))
            (declare (special *show-section-printouts*))
            (read-from-document article)))))
    (if stats
      (summary-document-stats article)
      (else
        (when para-count (format t "~&~a paragraphs~%" para-count))
        (report-time-to-read-article article)))
    (when *write-article-objects-file*
      (write-article-objects-file article))
    article))


* Storing information about an article

One of the components of any document element is a class called has-content-model.

(defclass has-content-model ()
  ((contents :accessor contents
    :initform nil
    :documentation "Holds some object of type contents, the one
      for Grok is text-relation-contents"))
  (:documentation "Belongs on all levels of the document structure
    so that, e.g., the note operation can be generalized."))

The read-from-document methods nearly all include a call like this one from the section version of the method -- (install-contents s). (Paragraph and sentence constructors do this on their own.) The methods also call set-document-index to create a table-of-contents style symbol that lets us identify the source of a paragraph or sentence within a larger document. They also make a call to an after-actions method.

The code for all this activity is in the file objects/doc/content-actions.lisp. It works in consort with a the classes defined in content-classes.lisp. Most of the actual data collection and content instance population is done by the code in content-methods.lisp. In broad outline, information is stored  on the contents instance for a sentence, then it is aggregated and lifted to successively higher levels of the document. Finally an article-level call is made to a function like summary-document-stats (in content-actions) to display it to the human designer. Other final paths are to ground the interactive display of article, or to export it to files for use by other programs. (Though the export capability is rather dusty. The other aspects are clean and get tweaked regularly.)

The layout and potential operations for the different levels of contents objects is determined by the code in objects/doc/content.lisp where the install-contents methods are defined. For example this is the set of classes that go into the contents object for a sentence.

(defclass sentence-content (container
                            parsing-status
                            local-layout ; from sweep-sentence-treetops
                            epistemic-status ; from rhetoric
                            entities-and-relations
                            sentence-discourse-history ;; lifo instances
                            sentence-text-structure ;; subject
                            records-of-delayed-actions
                            accumulate-items ; noteworthy categories
                            text-relations ; Grok chunk analysis
                            ordered)
  ...)

The goals of Sparser development for ACUMEN are different than for the earlier work in R3 or for COVID. To make backwards compatibility possible, the classes for content classes above the sentence are divided into two alternatives, where the controlling parameter *container-for-sections* is specified for the their respective swith-setting functions.

(defmethod install-contents ((s section))
  (unless (contents s)
    (ecase *container-for-sections*
      (:biology (setf (contents s) (make-instance 'section-content :in s)))
      (:texture (setf (contents s) (make-instance 'section-features :in s))))))

This is the present definition of the section-features class. It drops the biology-specific class in favor of it 'texture' alternative to emphasze operations that may tell us more about the characteristics ('features') of the texts we are dealing with.

(defclass section-features (container
                            sentence-parse-quality
                            sentence-tt-counts
                            accumulate-items
                            paragraph-characteristics)
  ()
  (:documentation "For non-Bio, more general"))

When we've finished parsing a section, having populated the content objects of all the document elements inside it, we call its after-actions method. Notice that what methods are called can depend on the type of the content object.

(defmethod after-actions ((s section))
  (when *apply-document-after-actions*
    (let ((*current-section* s))
      (declare (special *current-section*))
      (do-section-level-after-actions s))))

(defun do-section-level-after-actions (s)
  "Actions taken by everything about the level of a paragraph"
  (summarize-parse-performance s)
  (aggregate-text-characteristics s)
  (when (typep (contents s) 'aggregated-bio-terms)
    (add-bio-term-counts s)
    (sort-bio-terms s (contents s)))
  (when (typep (contents s) 'accumulate-items)
    (aggregate-noted-items s))
  s)



* Operating over files

Unstructured text files are another way to drive an analysis. Here we use the othographic features of the text to infer the structure of the document. There are old setup options in Sparser's token level that paid attention to shifts in indentation to infer headers and date-lines, but the most robust othographic feature has been to interpret newline characters as implying breaks between paragraphs.

We run over text files by calling analyze-text-from-file with the pathname to the file and settings to its parameters. This is the document string portion of the function, which is in drivers/sources/file.lisp.

(defun analyze-text-from-file (file &key
                                      ((:paragraph make-orthographic-paragraphs)
                                       *paragraphs-from-orthography*)
                                      ((:prescan prescan-buffer?)
                                       *prescan-character-input-buffer*)
                                      echo
                                      (ext-format :utf-8)
                                      ((:trace traces-on) t)
                                      quiet
                                      ((:skip ignore-errors?) t)
                                      name )

  "Opens the indicated file an passes it to analysis-core to be parsed.
     :paragraph signals that the file should be interpreted as a multi-paragraph
   document, where paragraph breaks are signaled by newlines. For the details,
   read the documentation on new-ortho-paragraph (objects/doc/paragraphs.lisp)
     :prescan gates a procedure that runs before any parsing to apply a
   set of character-level transformation to the input before it is passed
   to the parsing engine: collapse multiple newlines, move punctuation outside
   a final quotation mark, translate html escape strings.
     :echo is passed to the character-level transducer so we can see what
   it is doing.
     :trace gates the display of a set of per-paragraph stats, notably this
   includes doing a tts to show what was parsed in the paragraph. 
     :quiet turns off all normal during-parse printing such as segment
   boundaries. It overrides trace so that end-of-paragraph printing is off.
     :skip enables the alternate parsing path for sentences that traps and
   reports errors when they occur rather than bringing up the debugger.
     :name should be a string that will be communicated to the paragraph
   handlers to be assigned to the article. Defaults to the file name."
 
  ... )

The default values in the parameter list are reasonable for most situations. The details of how they are invoked should be fairly clear with some reading the body of this function. What it does is almost identical to what happens in the paragraph method for read-from-document. But whereas the read-from-document methods operate over the already-constructed objects of the document structure of an article, this route through Sparser constructs that structure dynamically, recognized paragraph by recognized paragraph in succession. 


--- The Alphabet

Sparser expects that the files it reads will be encoded in UTF-8, in keeping with the capabilities of modern software and the ubiquity of Unicode. We launder the raw characters though a decoder inside the tokenizer that returns an entry for each character that highlights its properties, and lets us play tricks such as mapping curly quote characters to their ascii equivalent 'straight' quotes. Our alphabet is a populated array that is set up in the file analysers/tokenizer/alphabet.lisp. 

We presently have quite extensive character coverage, including handling some surrogate pairs. But it can still happen that we enounter a character for which we don't have an entry. When this happens a message to that effect is printed and we use a space in place of the unknown character. These characters are stored in a run time cache. Instructions for printing out this cache in a format that can be easily added to the aphabet (modifying the file by hand) are in the tokenizer file alphabet-fns.lisp


--- Character buffers

While it is a well-defined file operation, we don't actually upload characters from the file incrementally but rather read-in the whole file at once. This is done by this call. (There is an analogous version for when the source is a string.)

  (establish-character-source/file pathname :ext-format ext-format )

Establishing the character source means populating the array that the tokenizer walks through to get the words. Meta-dot on this function to see the details. There are two character buffers. The original version of Sparser worked on machines where in-core memory resources were a real issue. We imagined that we would read files incrementally, populating the second buffer from the file while analyzing the contents of the first buffer and then switching source buffers when the tokenizer got to the end of one. There is elaborate but accurate code in the system for detecting and managing buffer switching. But it hasn't been used since the very first application of Sparser: running continuously in word-spotting mode for a few days over a local Boston newspaper. The character buffers are set up in the file analyzers/char-level/state.lisp

Originally, the character buffer array were just a thousand characters long. Machines have changed in the interveening decades, and today the buffers are 200,000 characters long, which is enough to completely load in any of the document files we have been working with. The motivation for this shift was to be able to get accurate character position alignments with an annotation system whose output was in terms character-position delimited spans and we could not do that and still switch buffers. Having such long character buffers has enabled some quite useful new capabilities. The 'prescan-buffer' operation is one of them, but should be the subject of a different note.


--- Units of analysis

Sparser's linguistic analysis operations are done one call to analysis-core (in drivers/sources/core.lisp) afer the character source has been setup. Analysis-core initializes the tokenizer and the chart, and carries out any per-article-initializations. At that point it calls chart-based-analysis to set the process in motion and runs until its character source is exhausted. 

When working from a pre-build document structure, the unit of linguistic analysis is the text-string that accompanizes each paragraph. The chart is stood up and torn down (reinitialized) in each successive call to the read-from-document paragraph method.

When working from a file, there is a single call to analysis-core inside analyze-text-from-file and we run until all of the text in the file has been analysed. Initalizations happen just once, at the beginning of the process.

Part of what gets initialized is our recyclable stock of edges and chart positions. The details are available in other documentation. What is germane here is the size of those resources. These values are parameterized, but there are presently a hundred thousand edges and forty thousand positions. We no longer have to recycle the edges or the positions in the course of analyzing anything shorter than a long novel which means that they are all 'live' and examinable. (Positions and edges are in resources that are set up as circular arrays.)


--- Paragraph objects in file-bases analyses

Paragraphs are created incrementally as we move through the characters of the file. The first paragraph is created as part of initializations. Successive paragraphs are created when the tokenizer encounters a newline character. This is all described pretty thoroughly in objects/doc/paragraphs.lisp.

The paragraphs are analyzed one at a time. When we encounter a newline we call new-ortho-paragraph to set it up the next paragraph. The chart position of the newline is the ending position of the current paragraph object. We extract the string from the paragraph start-pos to this end-pos and make that the content-string of the paragraph object.

The loop over successive paragraphs is managed by parse-successive-paragraphs. A call to scan-sentences-and-pws-to-eos creates the sentences and returns as soon as it encounters the word for *newline* in the chart. At the tokenizer level, that same newline will have tied off the current paragraph and created a new one.

The text of the paragraph is analyzed by the usual call to sweep-successive-sentences-from in drivers/chart/psp/no-brackets-protocol.lisp. When the sentence sweep runs out of sentences it throw to the tag 'do-next-paragraph. That non-local return is caught in parse-successive-paragraph and is the signal to run the paragraph after-actions method and loop to handle the next paragraph.

When there is no next paragraph or we've reached the end-of-source marker, we fall out of the loop and invoke finish-paragraph-based-article. At that point we run the after-actions method for the nominal section object that dominates all the paragraphs, then the after-actions method for the article. That is the end of the analysis process and we close by reporting what we've found.



* Document structure when parsing strings

We spend more of our time looking at short sentences in order to understand why something didn't work or to look at the details of the interpretation. Because it is simpler to do it than not, and because we sometimes do want to look at actions over the document structure elements, we create a thin thread of the standard document structure elements over the simplest texts.

Suppose we have just done this
(p "dates back to 1995 in Puerto Rico")

The p abbreviation function returns the treetops of the chart after it runs. In this case that is this.

                    source-start
e14   BACK-CL-VERB  1 "dates back to 1995 in Puerto Rico" 8
                    end-of-source
:done-printing

('back-cl-verb' is an interim definition for "back" taken as a verb that comes from a very rough mass-addition of vocabulary. Of course, "dates back" is an time idiom.)

We can look the document structure by invoking the article function to return the current one. (It is returning the value of *current-article*)

sp> (article)
#<article  nil>

And then we can walk down through the linked objects.

sp> (children *)
(#<section section-0>)
sp> (children (car *))
(#<paragraph 1>)

Because it seemed to be the right thing to do at the time, the relationship of a paragraph to its sentences deviates from this pattern. The children of a paragraph is the first sentence. The rest of the sentences chain using next/previous links. So there's this convenience function in the content-actions.lisp file.

sp> (sentences-in-paragraph (car *))
(#<sentence p1 -- p8>)


