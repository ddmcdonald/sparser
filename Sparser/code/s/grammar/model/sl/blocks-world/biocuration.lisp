;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "biocuration"
;;;    Module:  grammar/model/sl/blocks-world/
;;;   version:  February 2016

;; Initiated 2/2/16 for working on biocuration dialog texts
#|
USR: I have a patient with pancreatic cancer. What drug should I use?
BOB: 88% of pancreatic cancer patients have a mutation in KRAS that makes it active.
BOB: But I don’t know of any drug targeting KRAS. 
USR: Let’s look at the KRAS neighborhood
USR: I know that KRAS activates Raf, which activates Erk. Erk activation drives cancer progression. 
[alt: I know that KRAS activates Raf, and Raf activates Erk. Erk activation drives cancer progression. ]
BOB: OK. <<displays mechanism>>
USR: OK. Are there any known Raf inhibitors?
BOB: Dabrafenib, vemurafenib, GDC-0879 and dabrafenib mesylate are known RAF inhibitors.
USR: Is Erk inactivated if I add vemurafenib?
BOB: Yes, the model you proposed shows that Erk is inactivated
BOB: However, vemurafenib is a BRAF inhibitor. 
     When I expand the Raf protein family to BRAF and RAF1, Erk is not inactivated. 
BOB: Yes, my model shows that Erk is inactivated. 
     But the model is incomplete. There is negative feedback from Erk to KRAS. 
     When the feedback loop is included in the model, ERK remains active.
|#
