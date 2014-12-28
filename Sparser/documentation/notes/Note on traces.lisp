(in-package :sparser)

;; Note on Sparser code tracing system
;; version of 9/15/14

Sparser has a system for conditional traces that 




The trace functions are for the most part in ///

Always clustered by the machinery they are tracking

If you don't know where to look, you can start by taking an instance
of a trace call in the code you're investigating, say it is
    (tr :ns-scanned-punctuation word)
in the uniform-scan code. Copy the keyword to the Lisp listenr,
replace the initial colon with the string "trace-" and that gives
you the name of the actual function which you can access via
meta-. in the usual way. 