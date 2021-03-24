(in-package :sparser)

;; Note on the error-trapping system
;; version of 3/23/21

Sparser is a complex system with many interacting parts. Since many of these parts are code rather than uniform schemas (such as the grammar rules), there will be bugs.

There is occasionally a bug that Lisp detects itself (usually a type conflict or a missing method). When these are encountered, our standard SBCL/Slime/Emacs setup will stop, announce the error, and show the backtrace of where it occurred. More often this will happen because we have encountered an explicit call to the function 'error' (for trapping mistakes at an early point where they will be easier to diagnose), or the function 'break' (usually inserted in code that is actively being worked on).

Once we started running Sparser on sets of large documents and reporting the results, it became clear that it was not efficient to stop every time an error occured and fix it then and there. Instead we developed a system for trapping the error as it occured and reporting the results to the listener window. The primary error trap operates as each sentence is processed. An error in one sentence does not stop the processing on the rest of a document and only a small result is lost. Moreover, when we are looking at new text domains and sources when there are likely to be errors, we can let the error reports accumulate so we know which ones are frequent and so where we should focus our debugging.


An error report looks like this. It prints the text of the error (":not-a-name return ...") along with the text of the sentence that was being processed when it occurred.

Error in "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for March 2017."
:not-a-name return did not go to end

By including the text we can reproduce the problem by running the sentence by itself.

sp> (p "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for March 2017.")

This is what the debugging window (*sldb sbcl*) showed when it encountered the error. In this case it is caused by a break intended to catch an unexpected case. The error window lists the text of the error, the options for restarting, and the stack frames of the functions we are in the middle of. This tells us we are in the classify phase (frame 1) of the proper name facility (evoked in frames 4,5)

-------------------------------------------------
:not-a-name return did not go to end
   [Condition of type simple-error]

Restarts:
 0: [continue] Continue.
 1: [retry] Retry SLIME REPL evaluation request.
 2: [*abort] Return to SLIME's top level.
 3: [abort] abort thread (#<thread "repl-thread" running {1015A30003}>)

Backtrace:
  0: (break ":not-a-name return did not go to end")
  1: (classify-&-record-span #<position26 26 "irish"> #<position32 32 "for">)
  2: (c&r-multi-word-span #<position26 26 "irish"> #<position32 32 "for">)
  3: (classify-and-record-name #<position26 26 "irish"> #<position32 32 "for">)
  4: (pnf/scan-classify-record #<position26 26 "irish">)
  5: ((flet apply-pnf :in word-level-fsa-sweep))
  6: (word-level-fsa-sweep #<position1 1 "the"> #<position35 35 ".">)
  7: (scan-terminals-loop #<position1 1 "the"> #<word "the"> #<position35 35 ".">)
  8: (scan-terminals-of-sentence #<sentence p1 -- p35>)
  9: (scan-terminals-and-do-core #<sentence p1 -- p35>)
 10: (sweep-successive-sentences-from #<sentence p1 -- p35>)
 11: (initiate-successive-sweeps)
 12: (lookup-the-kind-of-chart-processing-to-do)
 13: (chart-based-analysis)
 14: (analysis-core)
 15: (analyze-text-from-string "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for Ma..
 16: (pp "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for March 2017.")
 17: (p "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for March 2017.")
 18: (sb-int:simple-eval-in-lexenv (p "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses..
 19: (eval (p "The Central Bank had scheduled the launch of its 2017 Annual Mint Set, which paid tribute to the vital work carried out by the Irish Coast Guard and Irish Lighthouses for March 2017."))
 --more--
-------------------------------------------------
 
The error trap is in frame 10, sweep-successive-sentences-from, which is in the file drivers/chart/psp/no-brackets-protocol.lisp along with all the other toplevel control functions. This function loops over the sentences of the document, calling sentence-processing-core on each one in turn. This call to the core is intercepted in a call that's no longer on the stack, error-trapped-scan-and-core.

(defun error-trapped-scan-and-core (sentence)
  "Wrapped scan-terminals-and-do-core inside an error catch"
  (declare (special *show-handled-sentence-errors*))
  (handler-case 
      (scan-terminals-and-do-core sentence)
    (error (e)
      (ignore-errors ;; got an error with something printing once
       (when *show-handled-sentence-errors*
         (format t "~&Error in ~s~%~a~%~%" (current-string) e))))))

The handler-case intercepts any break or error that happens within the dynamic scope of executing scan-terminals-and-do-core. It records the error (on 'e') and assuming we have the normal switch settings, prints the error to standard output.

This inteception is gated by the parameter *trap-error-skip-sentence*, which is dynamically bound to T when we are running a long document and defaults to nil outside of those lexical contexts, avoiding the error-handler and letting the error go to the debugger so we can fix it.


-------- debugging ----

If you position your cursor inside the function name of frame 1 (where the error is) and type meta-<period>, the file containing the function will be brought into Aquamacs and you can see what it going on. Double clicking on the frame will expose its local variables. (Clicking on one of these locals displays its value in the inspector frame.)

 1: (classify-&-record-span #<position26 26 "irish"> #<position32 32 "for">)
      Locals:
        end-pos = #<position31 31 "lighthouses">
        ending-position = #<position32 32 "for">
        #:g0 = (:not-a-name #<position31 31 "lighthouses">)
        result = (:not-a-name #<position31 31 "lighthouses">)
        starting-position = #<position26 26 "irish">

This classify routine handles the information that was returned by the PNF workhorse, examine-capitalized-sequence. Looking at the function you will see that the examine call is wrapped in a nest of 'catch' statements that are used for not local returns, typically used to escape ('throw') from the local situation because you know it no longer makes sense to continue there.

From the value of the result variable, we can deduce that the throw was caught by the :abort-examination-not-a-name case. The result is a list, so we look at the cons clause of the typecase. The chart positions where the span we examined started and ended were passed in as parameters to the classify function. This is the relevant portion of the text we are parsing:
   "... by the Irish Coast Guard and Irish Lighthouses for ..."
The span-delimiter concluded that the span started at position 26, just before the word "Irish", and ended at position 32, just before the "for".

The error happened because the end position that was passed back as part of the result, position 31, is different from what the classify function was told to expect. This is the relevant clause:

           ((eq (first result) :not-a-name)
            (push-debug `(,result ,starting-position ,ending-position))
            (let ((end-pos (cadr result)))
              (unless (position-p end-pos) ;; lookup had been cdr
                (push-debug `(,result ,starting-position ,ending-position))
                (error ":not-a-name result miscoded the position"))
              (if (eq end-pos ending-position)
                nil  ;; signal failure
                (else 
                 (break ":not-a-name return did not go to end")))))

The purpose of this check, to the designer, is to calibrate the judgement of the 'not a name' decision with where the scan thinks it should be. This is evident from the fact that there is push-debug call in the code, which is recording the current values of those three local variables.

sp> (peek-debug)
((:not-a-name #<position31 31 "lighthouses">) #<position26 26 "irish">
 #<position32 32 "for">)
 
The next step is to track down the code that make the 'not a name' determination and see why is end position is different from what the scan routine says it is. That's usually a matter of running grep, so we can close the note here.

