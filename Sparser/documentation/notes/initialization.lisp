;; 'initialization'
;; 9/7/23
(in-package :sparser)

This note lays describes how the state parameters that describe or control the processs of parsing a text are initialized. There are a substantial number of these parameters, and they are implemented as global variables. Consequently we can not run more than one parse at a time in a single Lisp process.

Regardless of how the choice of text is set up, every run of Sparser calls analysis-core to do the initializations and initiate the analysis. This function is in drivers/sources/core.lisp. We will walk through it step by step, spending the most time on the more intricate routines.


(defun analysis-core ()
  (let ((*sparser-is-running* t))
    (declare (special *sparser-is-running*))
    (catch :analysis-core
      (initialize-tokenizer-state)
      (initialize-chart-state)
      (when *initialize-with-each-unit-of-analysis*
        (per-article-initializations))
      (chart-based-analysis)
      (after-analysis-actions)
      (analysis-core-return-value))))

--- initialize-tokenizer-state
The tokenizer is a simple state machine walks the characters in the text under analysis and incrementally emits a stream of words. This function is in analyzers/tokenizer/state.lisp. It is the simplest sort of initialiation: a call to set all the tokenizer's state variables to their initial values.

--- initialize-chart-state
This is also largely a matter of setting the chart's state variables, but as the chart is a permanent data structure that is reused from run to run, there are other things to be done, in particular we have to clean up the results of the last run. (You can examine any aspect of the chart after the analysis is over, up to the point of the re-initalization done here. This function is in analyzers/psp/init/init-chart.lisp. The chart is an array of 'positions' so the basic operation (initialize-position) is to set all of the fields in the position struct to their null values.
  The detailed work, in particular initializing chart positions, is done by the routines in objects/chart/positions/array.lisp. We also initialize the edge resource at this point, see objects/chart/edges/resource.lisp. 

--- *initialize-with-each-unit-of-analysis* is a switch that lets us accumulate individuals across multiple runs. We usually don't do this but it has been useful in earlier projects.

--- per-article-initializations
The job of this function is to clear or reinitialize every article-specific property. The function is in drivers/inits/articles.lisp. Most of what it does is overly technical, but there will be documentation in place on virtually all of its minor operations.

The most salient thing that is done here is to created the hierarchy of document elements. A call to begin-new-article both creates an article instance and  recursively makes the first instances of all the 'smaller' document elements. 

The next major event is initializing the context variables. It is very important that the document elements are created before this step since they consult some of this context information, while initialize-context-variables zeros it. This sort of context was very important in early projects that used Sparser. It is less so now, but the timing is worth paying attention to.

Clean-out-history-and-temp-objects does what it says. It initalizes the discourse history, reclaims any temporary individuals, and for permanent individuals (which make up the bulk of the individuals we instantiate these days) empties any bound-in fields they may have, effectively resetting them to their initial state and removing any relations that were found during the course of the previous parse. Note that there is the option to register specific category bound-in variables as 'permanent'. See objects/model/individuals/reclaim.lisp. This is needed to handle individuals that denote actual things in the world, such as calendar time. If we said "In December we went on vacation", this clean up will remove the relationship between the month and the event, but will retain permanent facts such as it having 31 days and being the 12th month of the year.

Run-real-per-article-initializations, which is also in articles.lisp, evaluates a set of forms that are salted through out the code to do initalizations that don't have a natural home. Calling (list-per-run-init-forms) will display them all (presently there are 20). They are defined using the special form 'define-per-run-init-form'. For instance we have this initialization in drivers/chart/psp/multi-scan.lisp

(defvar *pending-acronyms* nil)
(define-per-run-init-form '(setq *pending-acronyms* nil))

--- The rest of analysis-core
After the initializations have been made the actual analysis begins through a call to (chart-based-analysis). Once it concludes, we look for any 'after analysis actions' with are the same sort of system as per-run init forms. Presently there aren't any, though they were used extensively for the interactive workbench we used to support. Finally we call analysis-core-return-action (in drivers/sinks/return-value.lisp). This is a comparatively ad-hoc, per-application, function where specific operations may be run, conditioned by the values of a few parameters. The function p/r, in init/workspace/abbreviations.lisp, is a good illustration of setting these parameters.
